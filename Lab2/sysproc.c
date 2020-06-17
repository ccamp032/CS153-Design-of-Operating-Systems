#include "types.h"
#include "x86.h"
#include "defs.h"
#include "date.h"
#include "param.h"
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"

int
sys_fork(void)
{
  return fork();
}

int
sys_exit(void)
{
  exit();
  return 0;  // not reached
}

// wait syscall - assignment1
int
sys_wait(void)
{
  int *status;
  argptr(0, (char**)&status, sizeof(int*));
  return wait(status);
}

int
sys_kill(void)
{
  int pid;

  if(argint(0, &pid) < 0)
    return -1;
  return kill(pid);
}

int
sys_getpid(void)
{
  return myproc()->pid;
}

int
sys_sbrk(void)
{
  int addr;
  int n;

  if(argint(0, &n) < 0)
    return -1;
  addr = myproc()->sz;
  if(growproc(n) < 0)
    return -1;
  return addr;
}

int
sys_sleep(void)
{
  int n;
  uint ticks0;

  if(argint(0, &n) < 0)
    return -1;
  acquire(&tickslock);
  ticks0 = ticks;
  while(ticks - ticks0 < n){
    if(myproc()->killed){
      release(&tickslock);
      return -1;
    }
    sleep(&ticks, &tickslock);
  }
  release(&tickslock);
  return 0;
}

// return how many clock tick interrupts have occurred
// since start.
int
sys_uptime(void)
{
  uint xticks;

  acquire(&tickslock);
  xticks = ticks;
  release(&tickslock);
  return xticks;
}

// Update the wait system call signature to int wait(int *status) - assignment 1
// A handler for our new created exit().
// Reads exit status from the user in the command line argument.
// Then calls new created exit() and takes that argument as its parameter.
int
sys_exitStat(void)
{
    int exit_Status;
    if(argint(0, &exit_Status) < 0){
        return -1;
    }
    return exitStat(exit_Status);
}

// A waitpid system call: int waitpid(int pid, int *status, int options) - assignment1
// The system calls a wait for a process (not necessary a child process) with a pid that equals to one provided by the pid argument.
// The return value is the process id of the process that was terminated or -1
// If this process does not exist or an unexpected error occurred.
int
sys_waitpid(void)
{
    int pid;
    int options = 0; // default value
    int* status;
    if(argint(0, &pid) < 0){
        return -1;
    }
    if(argptr(1,(void*)&status, sizeof(status)) < 0){
        return -1;
    }
    return waitpid(pid, status, options);
}

int sys_setPriority(void)
{
    int priority;
    if (argint(0,&priority)<0){
        return -1;
    }
    return setPriority(priority);
}

int sys_getPriority(void)
{
    return getPriority();
}
