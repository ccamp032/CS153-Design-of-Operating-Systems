#include "types.h"
#include "user.h"


int exitWait(void);
int waitPid(void);

int main(int argc, char *argv[]){

  printf(1, "\n This program tests the correctness of your lab#1\n");
  
  if (atoi(argv[1]) == 1){
    exitWait();
  }
  else if (atoi(argv[1]) == 2){
    waitPid();
  }
  else{ 
    printf(1, "\ntype \"lab1 1\" to test exit and wait and \"lab1 2\" to test waitpid\n");
  }
  // End of test
  exitStat(0);

  return 0;
 }
  
int exitWait(void) {
  int pid; 
  int return_pid;
  int exit_status;
  int i;
  // use this part to test exit(int status) and wait(int* status)
 
  printf(1, "\n  Parts a & b) testing exit(int status) and wait(int* status):\n");

  for(i = 0; i < 2; i++) 
  {
    pid = fork();
    if(pid == 0){ // only the child executed this code
    if(i == 0){
        printf(1, "\nThis is child with PID# %d and I will exit with status %d\n", getpid(), 0);
        exitStat(0);
      }
    else{
	printf(1, "\nThis is child with PID# %d and I will exit with status %d\n" ,getpid(), -1);
        exitStat(-1);
      } 
    }  
    else if (pid > 0){ // only the parent executes this code
      return_pid = wait(&exit_status);
      printf(1, "\nThis is the parent: child with PID# %d has exited with status %d\n", return_pid, exit_status);
    } 
    else{ // something went wrong with fork system call
      printf(2, "\n Error using fork\n");
      exitStat(-1);
    }
  }// end of for loop
  return 0;
}

int waitPid(void){
  int return_pid;
  int exit_status;
  int i;
  int pid_a[5]={0, 0, 0, 0, 0};
  // use this part to test wait(int pid, int* status, int options)

  printf(1, "\n  Part c) testing waitpid(int pid, int* status, int options):\n");

  for(i = 0; i <5; i++) {
    pid_a[i] = fork();
    if (pid_a[i] == 0) { // only the child executed this code
      printf(1, "\nThis is the child with PID# %d and I will exit with status %d\n", getpid(), getpid() + 4);
      exitStat(getpid() + 4);
    }
  }
       
  sleep(5);
  printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[3]);
  return_pid = waitpid(pid_a[3], &exit_status, 0);
  printf(1, "\n This is the parent: Child# %d has exited with status %d\n",return_pid, exit_status);
  sleep(5);
  printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[1]);
  return_pid = waitpid(pid_a[1], &exit_status, 0);
  printf(1, "\n This is the parent: Child# %d has exited with status %d\n",return_pid, exit_status);
  sleep(5);
  printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[2]);
  return_pid = waitpid(pid_a[2], &exit_status, 0);
  printf(1, "\n This is the parent: Child# %d has exited with status %d\n",return_pid, exit_status);
  sleep(5);
  printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[0]);
  return_pid = waitpid(pid_a[0], &exit_status, 0);
  printf(1, "\n This is the parent: Child# %d has exited with status %d\n",return_pid, exit_status);
  sleep(5);
  printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[4]);
  return_pid = waitpid(pid_a[4], &exit_status, 0);
  printf(1, "\n This is the parent: Child# %d has exited with status %d\n",return_pid, exit_status);
      
  return 0;
}
