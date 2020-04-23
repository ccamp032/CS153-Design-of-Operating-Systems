
_lab1:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:


int exitWait(void);
int waitPid(void);

int main(int argc, char *argv[]){
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	53                   	push   %ebx
   e:	51                   	push   %ecx
   f:	8b 59 04             	mov    0x4(%ecx),%ebx

  printf(1, "\n This program tests the correctness of your lab#1\n");
  12:	83 ec 08             	sub    $0x8,%esp
  15:	68 9c 0b 00 00       	push   $0xb9c
  1a:	6a 01                	push   $0x1
  1c:	e8 9f 06 00 00       	call   6c0 <printf>
  
  if (atoi(argv[1]) == 1){
  21:	5a                   	pop    %edx
  22:	ff 73 04             	pushl  0x4(%ebx)
  25:	e8 c6 04 00 00       	call   4f0 <atoi>
  2a:	83 c4 10             	add    $0x10,%esp
  2d:	83 f8 01             	cmp    $0x1,%eax
  30:	74 3a                	je     6c <main+0x6c>
    exitWait();
  }
  else if (atoi(argv[1]) == 2){
  32:	83 ec 0c             	sub    $0xc,%esp
  35:	ff 73 04             	pushl  0x4(%ebx)
  38:	e8 b3 04 00 00       	call   4f0 <atoi>
  3d:	83 c4 10             	add    $0x10,%esp
  40:	83 f8 02             	cmp    $0x2,%eax
  43:	74 2e                	je     73 <main+0x73>
    waitPid();
  }
  else{ 
    printf(1, "\ntype \"lab1 1\" to test exit and wait and \"lab1 2\" to test waitpid\n");
  45:	50                   	push   %eax
  46:	50                   	push   %eax
  47:	68 d0 0b 00 00       	push   $0xbd0
  4c:	6a 01                	push   $0x1
  4e:	e8 6d 06 00 00       	call   6c0 <printf>
  53:	83 c4 10             	add    $0x10,%esp
  }
  // End of test
  exitStat(0);
  56:	83 ec 0c             	sub    $0xc,%esp
  59:	6a 00                	push   $0x0
  5b:	e8 a2 05 00 00       	call   602 <exitStat>

  return 0;
 }
  60:	8d 65 f8             	lea    -0x8(%ebp),%esp
  63:	31 c0                	xor    %eax,%eax
  65:	59                   	pop    %ecx
  66:	5b                   	pop    %ebx
  67:	5d                   	pop    %ebp
  68:	8d 61 fc             	lea    -0x4(%ecx),%esp
  6b:	c3                   	ret    
int main(int argc, char *argv[]){

  printf(1, "\n This program tests the correctness of your lab#1\n");
  
  if (atoi(argv[1]) == 1){
    exitWait();
  6c:	e8 0f 00 00 00       	call   80 <exitWait>
  71:	eb e3                	jmp    56 <main+0x56>
  }
  else if (atoi(argv[1]) == 2){
    waitPid();
  73:	e8 e8 00 00 00       	call   160 <waitPid>
  78:	eb dc                	jmp    56 <main+0x56>
  7a:	66 90                	xchg   %ax,%ax
  7c:	66 90                	xchg   %ax,%ax
  7e:	66 90                	xchg   %ax,%ax

00000080 <exitWait>:
  exitStat(0);

  return 0;
 }
  
int exitWait(void) {
  80:	55                   	push   %ebp
  81:	89 e5                	mov    %esp,%ebp
  83:	53                   	push   %ebx
  int return_pid;
  int exit_status;
  int i;
  // use this part to test exit(int status) and wait(int* status)
 
  printf(1, "\n  Parts a & b) testing exit(int status) and wait(int* status):\n");
  84:	bb 01 00 00 00       	mov    $0x1,%ebx
  exitStat(0);

  return 0;
 }
  
int exitWait(void) {
  89:	83 ec 1c             	sub    $0x1c,%esp
  int return_pid;
  int exit_status;
  int i;
  // use this part to test exit(int status) and wait(int* status)
 
  printf(1, "\n  Parts a & b) testing exit(int status) and wait(int* status):\n");
  8c:	68 e0 09 00 00       	push   $0x9e0
  91:	6a 01                	push   $0x1
  93:	e8 28 06 00 00       	call   6c0 <printf>
  98:	83 c4 10             	add    $0x10,%esp

  for(i = 0; i < 2; i++) 
  {
    pid = fork();
  9b:	e8 ba 04 00 00       	call   55a <fork>
    if(pid == 0){ // only the child executed this code
  a0:	83 f8 00             	cmp    $0x0,%eax
  a3:	75 3b                	jne    e0 <exitWait+0x60>
    if(i == 0){
  a5:	83 fb 01             	cmp    $0x1,%ebx
  a8:	0f 84 82 00 00 00    	je     130 <exitWait+0xb0>
        printf(1, "\nThis is child with PID# %d and I will exit with status %d\n", getpid(), 0);
        exitStat(0);
      }
    else{
	printf(1, "\nThis is child with PID# %d and I will exit with status %d\n" ,getpid(), -1);
  ae:	e8 2f 05 00 00       	call   5e2 <getpid>
  b3:	6a ff                	push   $0xffffffff
  b5:	50                   	push   %eax
  b6:	68 24 0a 00 00       	push   $0xa24
  bb:	6a 01                	push   $0x1
  bd:	e8 fe 05 00 00       	call   6c0 <printf>
        exitStat(-1);
  c2:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
  c9:	e8 34 05 00 00       	call   602 <exitStat>
  ce:	83 c4 10             	add    $0x10,%esp
  int i;
  // use this part to test exit(int status) and wait(int* status)
 
  printf(1, "\n  Parts a & b) testing exit(int status) and wait(int* status):\n");

  for(i = 0; i < 2; i++) 
  d1:	83 fb 02             	cmp    $0x2,%ebx
  d4:	75 30                	jne    106 <exitWait+0x86>
      printf(2, "\n Error using fork\n");
      exitStat(-1);
    }
  }// end of for loop
  return 0;
}
  d6:	31 c0                	xor    %eax,%eax
  d8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  db:	c9                   	leave  
  dc:	c3                   	ret    
  dd:	8d 76 00             	lea    0x0(%esi),%esi
    else{
	printf(1, "\nThis is child with PID# %d and I will exit with status %d\n" ,getpid(), -1);
        exitStat(-1);
      } 
    }  
    else if (pid > 0){ // only the parent executes this code
  e0:	7e 2e                	jle    110 <exitWait+0x90>
      return_pid = wait(&exit_status);
  e2:	8d 45 f4             	lea    -0xc(%ebp),%eax
  e5:	83 ec 0c             	sub    $0xc,%esp
  e8:	50                   	push   %eax
  e9:	e8 7c 04 00 00       	call   56a <wait>
      printf(1, "\nThis is the parent: child with PID# %d has exited with status %d\n", return_pid, exit_status);
  ee:	ff 75 f4             	pushl  -0xc(%ebp)
  f1:	50                   	push   %eax
  f2:	68 60 0a 00 00       	push   $0xa60
  f7:	6a 01                	push   $0x1
  f9:	e8 c2 05 00 00       	call   6c0 <printf>
  fe:	83 c4 20             	add    $0x20,%esp
  int i;
  // use this part to test exit(int status) and wait(int* status)
 
  printf(1, "\n  Parts a & b) testing exit(int status) and wait(int* status):\n");

  for(i = 0; i < 2; i++) 
 101:	83 fb 02             	cmp    $0x2,%ebx
 104:	74 d0                	je     d6 <exitWait+0x56>
 106:	83 c3 01             	add    $0x1,%ebx
 109:	eb 90                	jmp    9b <exitWait+0x1b>
 10b:	90                   	nop
 10c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    else if (pid > 0){ // only the parent executes this code
      return_pid = wait(&exit_status);
      printf(1, "\nThis is the parent: child with PID# %d has exited with status %d\n", return_pid, exit_status);
    } 
    else{ // something went wrong with fork system call
      printf(2, "\n Error using fork\n");
 110:	83 ec 08             	sub    $0x8,%esp
 113:	68 14 0c 00 00       	push   $0xc14
 118:	6a 02                	push   $0x2
 11a:	e8 a1 05 00 00       	call   6c0 <printf>
      exitStat(-1);
 11f:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 126:	e8 d7 04 00 00       	call   602 <exitStat>
 12b:	83 c4 10             	add    $0x10,%esp
 12e:	eb a1                	jmp    d1 <exitWait+0x51>
  for(i = 0; i < 2; i++) 
  {
    pid = fork();
    if(pid == 0){ // only the child executed this code
    if(i == 0){
        printf(1, "\nThis is child with PID# %d and I will exit with status %d\n", getpid(), 0);
 130:	e8 ad 04 00 00       	call   5e2 <getpid>
 135:	6a 00                	push   $0x0
 137:	50                   	push   %eax
 138:	68 24 0a 00 00       	push   $0xa24
 13d:	6a 01                	push   $0x1
 13f:	e8 7c 05 00 00       	call   6c0 <printf>
        exitStat(0);
 144:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 14b:	e8 b2 04 00 00       	call   602 <exitStat>
 150:	83 c4 10             	add    $0x10,%esp
 153:	eb b1                	jmp    106 <exitWait+0x86>
 155:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 159:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000160 <waitPid>:
    }
  }// end of for loop
  return 0;
}

int waitPid(void){
 160:	55                   	push   %ebp
 161:	89 e5                	mov    %esp,%ebp
 163:	56                   	push   %esi
 164:	53                   	push   %ebx
  int pid_a[5]={0, 0, 0, 0, 0};
  // use this part to test wait(int pid, int* status, int options)

  printf(1, "\n  Part c) testing waitpid(int pid, int* status, int options):\n");

  for(i = 0; i <5; i++) {
 165:	31 db                	xor    %ebx,%ebx
    }
  }// end of for loop
  return 0;
}

int waitPid(void){
 167:	83 ec 28             	sub    $0x28,%esp
  int return_pid;
  int exit_status;
  int i;
  int pid_a[5]={0, 0, 0, 0, 0};
 16a:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 171:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  // use this part to test wait(int pid, int* status, int options)

  printf(1, "\n  Part c) testing waitpid(int pid, int* status, int options):\n");
 178:	68 a4 0a 00 00       	push   $0xaa4
 17d:	6a 01                	push   $0x1

int waitPid(void){
  int return_pid;
  int exit_status;
  int i;
  int pid_a[5]={0, 0, 0, 0, 0};
 17f:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 186:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 18d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  // use this part to test wait(int pid, int* status, int options)

  printf(1, "\n  Part c) testing waitpid(int pid, int* status, int options):\n");
 194:	e8 27 05 00 00       	call   6c0 <printf>
 199:	83 c4 10             	add    $0x10,%esp

  for(i = 0; i <5; i++) {
    pid_a[i] = fork();
 19c:	e8 b9 03 00 00       	call   55a <fork>
    if (pid_a[i] == 0) { // only the child executed this code
 1a1:	85 c0                	test   %eax,%eax
  // use this part to test wait(int pid, int* status, int options)

  printf(1, "\n  Part c) testing waitpid(int pid, int* status, int options):\n");

  for(i = 0; i <5; i++) {
    pid_a[i] = fork();
 1a3:	89 44 9d e4          	mov    %eax,-0x1c(%ebp,%ebx,4)
    if (pid_a[i] == 0) { // only the child executed this code
 1a7:	0f 84 33 01 00 00    	je     2e0 <waitPid+0x180>
  int pid_a[5]={0, 0, 0, 0, 0};
  // use this part to test wait(int pid, int* status, int options)

  printf(1, "\n  Part c) testing waitpid(int pid, int* status, int options):\n");

  for(i = 0; i <5; i++) {
 1ad:	83 c3 01             	add    $0x1,%ebx
 1b0:	83 fb 05             	cmp    $0x5,%ebx
 1b3:	75 e7                	jne    19c <waitPid+0x3c>
      printf(1, "\nThis is the child with PID# %d and I will exit with status %d\n", getpid(), getpid() + 4);
      exitStat(getpid() + 4);
    }
  }
       
  sleep(5);
 1b5:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[3]);
  return_pid = waitpid(pid_a[3], &exit_status, 0);
 1b8:	8d 5d e0             	lea    -0x20(%ebp),%ebx
      printf(1, "\nThis is the child with PID# %d and I will exit with status %d\n", getpid(), getpid() + 4);
      exitStat(getpid() + 4);
    }
  }
       
  sleep(5);
 1bb:	6a 05                	push   $0x5
 1bd:	e8 30 04 00 00       	call   5f2 <sleep>
  printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[3]);
 1c2:	8b 75 f0             	mov    -0x10(%ebp),%esi
 1c5:	83 c4 0c             	add    $0xc,%esp
 1c8:	56                   	push   %esi
 1c9:	68 24 0b 00 00       	push   $0xb24
 1ce:	6a 01                	push   $0x1
 1d0:	e8 eb 04 00 00       	call   6c0 <printf>
  return_pid = waitpid(pid_a[3], &exit_status, 0);
 1d5:	83 c4 0c             	add    $0xc,%esp
 1d8:	6a 00                	push   $0x0
 1da:	53                   	push   %ebx
 1db:	56                   	push   %esi
 1dc:	e8 29 04 00 00       	call   60a <waitpid>
  printf(1, "\n This is the parent: Child# %d has exited with status %d\n",return_pid, exit_status);
 1e1:	ff 75 e0             	pushl  -0x20(%ebp)
 1e4:	50                   	push   %eax
 1e5:	68 60 0b 00 00       	push   $0xb60
 1ea:	6a 01                	push   $0x1
 1ec:	e8 cf 04 00 00       	call   6c0 <printf>
  sleep(5);
 1f1:	83 c4 14             	add    $0x14,%esp
 1f4:	6a 05                	push   $0x5
 1f6:	e8 f7 03 00 00       	call   5f2 <sleep>
  printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[1]);
 1fb:	8b 75 e8             	mov    -0x18(%ebp),%esi
 1fe:	83 c4 0c             	add    $0xc,%esp
 201:	56                   	push   %esi
 202:	68 24 0b 00 00       	push   $0xb24
 207:	6a 01                	push   $0x1
 209:	e8 b2 04 00 00       	call   6c0 <printf>
  return_pid = waitpid(pid_a[1], &exit_status, 0);
 20e:	83 c4 0c             	add    $0xc,%esp
 211:	6a 00                	push   $0x0
 213:	53                   	push   %ebx
 214:	56                   	push   %esi
 215:	e8 f0 03 00 00       	call   60a <waitpid>
  printf(1, "\n This is the parent: Child# %d has exited with status %d\n",return_pid, exit_status);
 21a:	ff 75 e0             	pushl  -0x20(%ebp)
 21d:	50                   	push   %eax
 21e:	68 60 0b 00 00       	push   $0xb60
 223:	6a 01                	push   $0x1
 225:	e8 96 04 00 00       	call   6c0 <printf>
  sleep(5);
 22a:	83 c4 14             	add    $0x14,%esp
 22d:	6a 05                	push   $0x5
 22f:	e8 be 03 00 00       	call   5f2 <sleep>
  printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[2]);
 234:	8b 75 ec             	mov    -0x14(%ebp),%esi
 237:	83 c4 0c             	add    $0xc,%esp
 23a:	56                   	push   %esi
 23b:	68 24 0b 00 00       	push   $0xb24
 240:	6a 01                	push   $0x1
 242:	e8 79 04 00 00       	call   6c0 <printf>
  return_pid = waitpid(pid_a[2], &exit_status, 0);
 247:	83 c4 0c             	add    $0xc,%esp
 24a:	6a 00                	push   $0x0
 24c:	53                   	push   %ebx
 24d:	56                   	push   %esi
 24e:	e8 b7 03 00 00       	call   60a <waitpid>
  printf(1, "\n This is the parent: Child# %d has exited with status %d\n",return_pid, exit_status);
 253:	ff 75 e0             	pushl  -0x20(%ebp)
 256:	50                   	push   %eax
 257:	68 60 0b 00 00       	push   $0xb60
 25c:	6a 01                	push   $0x1
 25e:	e8 5d 04 00 00       	call   6c0 <printf>
  sleep(5);
 263:	83 c4 14             	add    $0x14,%esp
 266:	6a 05                	push   $0x5
 268:	e8 85 03 00 00       	call   5f2 <sleep>
  printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[0]);
 26d:	8b 75 e4             	mov    -0x1c(%ebp),%esi
 270:	83 c4 0c             	add    $0xc,%esp
 273:	56                   	push   %esi
 274:	68 24 0b 00 00       	push   $0xb24
 279:	6a 01                	push   $0x1
 27b:	e8 40 04 00 00       	call   6c0 <printf>
  return_pid = waitpid(pid_a[0], &exit_status, 0);
 280:	83 c4 0c             	add    $0xc,%esp
 283:	6a 00                	push   $0x0
 285:	53                   	push   %ebx
 286:	56                   	push   %esi
 287:	e8 7e 03 00 00       	call   60a <waitpid>
  printf(1, "\n This is the parent: Child# %d has exited with status %d\n",return_pid, exit_status);
 28c:	ff 75 e0             	pushl  -0x20(%ebp)
 28f:	50                   	push   %eax
 290:	68 60 0b 00 00       	push   $0xb60
 295:	6a 01                	push   $0x1
 297:	e8 24 04 00 00       	call   6c0 <printf>
  sleep(5);
 29c:	83 c4 14             	add    $0x14,%esp
 29f:	6a 05                	push   $0x5
 2a1:	e8 4c 03 00 00       	call   5f2 <sleep>
  printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[4]);
 2a6:	8b 75 f4             	mov    -0xc(%ebp),%esi
 2a9:	83 c4 0c             	add    $0xc,%esp
 2ac:	56                   	push   %esi
 2ad:	68 24 0b 00 00       	push   $0xb24
 2b2:	6a 01                	push   $0x1
 2b4:	e8 07 04 00 00       	call   6c0 <printf>
  return_pid = waitpid(pid_a[4], &exit_status, 0);
 2b9:	83 c4 0c             	add    $0xc,%esp
 2bc:	6a 00                	push   $0x0
 2be:	53                   	push   %ebx
 2bf:	56                   	push   %esi
 2c0:	e8 45 03 00 00       	call   60a <waitpid>
  printf(1, "\n This is the parent: Child# %d has exited with status %d\n",return_pid, exit_status);
 2c5:	ff 75 e0             	pushl  -0x20(%ebp)
 2c8:	50                   	push   %eax
 2c9:	68 60 0b 00 00       	push   $0xb60
 2ce:	6a 01                	push   $0x1
 2d0:	e8 eb 03 00 00       	call   6c0 <printf>
      
  return 0;
}
 2d5:	8d 65 f8             	lea    -0x8(%ebp),%esp
 2d8:	31 c0                	xor    %eax,%eax
 2da:	5b                   	pop    %ebx
 2db:	5e                   	pop    %esi
 2dc:	5d                   	pop    %ebp
 2dd:	c3                   	ret    
 2de:	66 90                	xchg   %ax,%ax
  printf(1, "\n  Part c) testing waitpid(int pid, int* status, int options):\n");

  for(i = 0; i <5; i++) {
    pid_a[i] = fork();
    if (pid_a[i] == 0) { // only the child executed this code
      printf(1, "\nThis is the child with PID# %d and I will exit with status %d\n", getpid(), getpid() + 4);
 2e0:	e8 fd 02 00 00       	call   5e2 <getpid>
 2e5:	89 c6                	mov    %eax,%esi
 2e7:	83 c6 04             	add    $0x4,%esi
 2ea:	e8 f3 02 00 00       	call   5e2 <getpid>
 2ef:	56                   	push   %esi
 2f0:	50                   	push   %eax
 2f1:	68 e4 0a 00 00       	push   $0xae4
 2f6:	6a 01                	push   $0x1
 2f8:	e8 c3 03 00 00       	call   6c0 <printf>
      exitStat(getpid() + 4);
 2fd:	e8 e0 02 00 00       	call   5e2 <getpid>
 302:	83 c0 04             	add    $0x4,%eax
 305:	89 04 24             	mov    %eax,(%esp)
 308:	e8 f5 02 00 00       	call   602 <exitStat>
 30d:	83 c4 10             	add    $0x10,%esp
 310:	e9 98 fe ff ff       	jmp    1ad <waitPid+0x4d>
 315:	66 90                	xchg   %ax,%ax
 317:	66 90                	xchg   %ax,%ax
 319:	66 90                	xchg   %ax,%ax
 31b:	66 90                	xchg   %ax,%ax
 31d:	66 90                	xchg   %ax,%ax
 31f:	90                   	nop

00000320 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 320:	55                   	push   %ebp
 321:	89 e5                	mov    %esp,%ebp
 323:	53                   	push   %ebx
 324:	8b 45 08             	mov    0x8(%ebp),%eax
 327:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 32a:	89 c2                	mov    %eax,%edx
 32c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 330:	83 c1 01             	add    $0x1,%ecx
 333:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 337:	83 c2 01             	add    $0x1,%edx
 33a:	84 db                	test   %bl,%bl
 33c:	88 5a ff             	mov    %bl,-0x1(%edx)
 33f:	75 ef                	jne    330 <strcpy+0x10>
    ;
  return os;
}
 341:	5b                   	pop    %ebx
 342:	5d                   	pop    %ebp
 343:	c3                   	ret    
 344:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 34a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000350 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	56                   	push   %esi
 354:	53                   	push   %ebx
 355:	8b 55 08             	mov    0x8(%ebp),%edx
 358:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 35b:	0f b6 02             	movzbl (%edx),%eax
 35e:	0f b6 19             	movzbl (%ecx),%ebx
 361:	84 c0                	test   %al,%al
 363:	75 1e                	jne    383 <strcmp+0x33>
 365:	eb 29                	jmp    390 <strcmp+0x40>
 367:	89 f6                	mov    %esi,%esi
 369:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 370:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 373:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 376:	8d 71 01             	lea    0x1(%ecx),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 379:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 37d:	84 c0                	test   %al,%al
 37f:	74 0f                	je     390 <strcmp+0x40>
 381:	89 f1                	mov    %esi,%ecx
 383:	38 d8                	cmp    %bl,%al
 385:	74 e9                	je     370 <strcmp+0x20>
    p++, q++;
  return (uchar)*p - (uchar)*q;
 387:	29 d8                	sub    %ebx,%eax
}
 389:	5b                   	pop    %ebx
 38a:	5e                   	pop    %esi
 38b:	5d                   	pop    %ebp
 38c:	c3                   	ret    
 38d:	8d 76 00             	lea    0x0(%esi),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 390:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
 392:	29 d8                	sub    %ebx,%eax
}
 394:	5b                   	pop    %ebx
 395:	5e                   	pop    %esi
 396:	5d                   	pop    %ebp
 397:	c3                   	ret    
 398:	90                   	nop
 399:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003a0 <strlen>:

uint
strlen(const char *s)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 3a6:	80 39 00             	cmpb   $0x0,(%ecx)
 3a9:	74 12                	je     3bd <strlen+0x1d>
 3ab:	31 d2                	xor    %edx,%edx
 3ad:	8d 76 00             	lea    0x0(%esi),%esi
 3b0:	83 c2 01             	add    $0x1,%edx
 3b3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 3b7:	89 d0                	mov    %edx,%eax
 3b9:	75 f5                	jne    3b0 <strlen+0x10>
    ;
  return n;
}
 3bb:	5d                   	pop    %ebp
 3bc:	c3                   	ret    
uint
strlen(const char *s)
{
  int n;

  for(n = 0; s[n]; n++)
 3bd:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
 3bf:	5d                   	pop    %ebp
 3c0:	c3                   	ret    
 3c1:	eb 0d                	jmp    3d0 <memset>
 3c3:	90                   	nop
 3c4:	90                   	nop
 3c5:	90                   	nop
 3c6:	90                   	nop
 3c7:	90                   	nop
 3c8:	90                   	nop
 3c9:	90                   	nop
 3ca:	90                   	nop
 3cb:	90                   	nop
 3cc:	90                   	nop
 3cd:	90                   	nop
 3ce:	90                   	nop
 3cf:	90                   	nop

000003d0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	57                   	push   %edi
 3d4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 3d7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 3da:	8b 45 0c             	mov    0xc(%ebp),%eax
 3dd:	89 d7                	mov    %edx,%edi
 3df:	fc                   	cld    
 3e0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 3e2:	89 d0                	mov    %edx,%eax
 3e4:	5f                   	pop    %edi
 3e5:	5d                   	pop    %ebp
 3e6:	c3                   	ret    
 3e7:	89 f6                	mov    %esi,%esi
 3e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000003f0 <strchr>:

char*
strchr(const char *s, char c)
{
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
 3f3:	53                   	push   %ebx
 3f4:	8b 45 08             	mov    0x8(%ebp),%eax
 3f7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 3fa:	0f b6 10             	movzbl (%eax),%edx
 3fd:	84 d2                	test   %dl,%dl
 3ff:	74 1d                	je     41e <strchr+0x2e>
    if(*s == c)
 401:	38 d3                	cmp    %dl,%bl
 403:	89 d9                	mov    %ebx,%ecx
 405:	75 0d                	jne    414 <strchr+0x24>
 407:	eb 17                	jmp    420 <strchr+0x30>
 409:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 410:	38 ca                	cmp    %cl,%dl
 412:	74 0c                	je     420 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 414:	83 c0 01             	add    $0x1,%eax
 417:	0f b6 10             	movzbl (%eax),%edx
 41a:	84 d2                	test   %dl,%dl
 41c:	75 f2                	jne    410 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
 41e:	31 c0                	xor    %eax,%eax
}
 420:	5b                   	pop    %ebx
 421:	5d                   	pop    %ebp
 422:	c3                   	ret    
 423:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 429:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000430 <gets>:

char*
gets(char *buf, int max)
{
 430:	55                   	push   %ebp
 431:	89 e5                	mov    %esp,%ebp
 433:	57                   	push   %edi
 434:	56                   	push   %esi
 435:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 436:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
 438:	8d 7d e7             	lea    -0x19(%ebp),%edi
  return 0;
}

char*
gets(char *buf, int max)
{
 43b:	83 ec 1c             	sub    $0x1c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 43e:	eb 29                	jmp    469 <gets+0x39>
    cc = read(0, &c, 1);
 440:	83 ec 04             	sub    $0x4,%esp
 443:	6a 01                	push   $0x1
 445:	57                   	push   %edi
 446:	6a 00                	push   $0x0
 448:	e8 2d 01 00 00       	call   57a <read>
    if(cc < 1)
 44d:	83 c4 10             	add    $0x10,%esp
 450:	85 c0                	test   %eax,%eax
 452:	7e 1d                	jle    471 <gets+0x41>
      break;
    buf[i++] = c;
 454:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 458:	8b 55 08             	mov    0x8(%ebp),%edx
 45b:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
 45d:	3c 0a                	cmp    $0xa,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 45f:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 463:	74 1b                	je     480 <gets+0x50>
 465:	3c 0d                	cmp    $0xd,%al
 467:	74 17                	je     480 <gets+0x50>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 469:	8d 5e 01             	lea    0x1(%esi),%ebx
 46c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 46f:	7c cf                	jl     440 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 471:	8b 45 08             	mov    0x8(%ebp),%eax
 474:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 478:	8d 65 f4             	lea    -0xc(%ebp),%esp
 47b:	5b                   	pop    %ebx
 47c:	5e                   	pop    %esi
 47d:	5f                   	pop    %edi
 47e:	5d                   	pop    %ebp
 47f:	c3                   	ret    
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 480:	8b 45 08             	mov    0x8(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 483:	89 de                	mov    %ebx,%esi
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 485:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 489:	8d 65 f4             	lea    -0xc(%ebp),%esp
 48c:	5b                   	pop    %ebx
 48d:	5e                   	pop    %esi
 48e:	5f                   	pop    %edi
 48f:	5d                   	pop    %ebp
 490:	c3                   	ret    
 491:	eb 0d                	jmp    4a0 <stat>
 493:	90                   	nop
 494:	90                   	nop
 495:	90                   	nop
 496:	90                   	nop
 497:	90                   	nop
 498:	90                   	nop
 499:	90                   	nop
 49a:	90                   	nop
 49b:	90                   	nop
 49c:	90                   	nop
 49d:	90                   	nop
 49e:	90                   	nop
 49f:	90                   	nop

000004a0 <stat>:

int
stat(const char *n, struct stat *st)
{
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	56                   	push   %esi
 4a4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 4a5:	83 ec 08             	sub    $0x8,%esp
 4a8:	6a 00                	push   $0x0
 4aa:	ff 75 08             	pushl  0x8(%ebp)
 4ad:	e8 f0 00 00 00       	call   5a2 <open>
  if(fd < 0)
 4b2:	83 c4 10             	add    $0x10,%esp
 4b5:	85 c0                	test   %eax,%eax
 4b7:	78 27                	js     4e0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 4b9:	83 ec 08             	sub    $0x8,%esp
 4bc:	ff 75 0c             	pushl  0xc(%ebp)
 4bf:	89 c3                	mov    %eax,%ebx
 4c1:	50                   	push   %eax
 4c2:	e8 f3 00 00 00       	call   5ba <fstat>
 4c7:	89 c6                	mov    %eax,%esi
  close(fd);
 4c9:	89 1c 24             	mov    %ebx,(%esp)
 4cc:	e8 b9 00 00 00       	call   58a <close>
  return r;
 4d1:	83 c4 10             	add    $0x10,%esp
 4d4:	89 f0                	mov    %esi,%eax
}
 4d6:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4d9:	5b                   	pop    %ebx
 4da:	5e                   	pop    %esi
 4db:	5d                   	pop    %ebp
 4dc:	c3                   	ret    
 4dd:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
 4e0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 4e5:	eb ef                	jmp    4d6 <stat+0x36>
 4e7:	89 f6                	mov    %esi,%esi
 4e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000004f0 <atoi>:
  return r;
}

int
atoi(const char *s)
{
 4f0:	55                   	push   %ebp
 4f1:	89 e5                	mov    %esp,%ebp
 4f3:	53                   	push   %ebx
 4f4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 4f7:	0f be 11             	movsbl (%ecx),%edx
 4fa:	8d 42 d0             	lea    -0x30(%edx),%eax
 4fd:	3c 09                	cmp    $0x9,%al
 4ff:	b8 00 00 00 00       	mov    $0x0,%eax
 504:	77 1f                	ja     525 <atoi+0x35>
 506:	8d 76 00             	lea    0x0(%esi),%esi
 509:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 510:	8d 04 80             	lea    (%eax,%eax,4),%eax
 513:	83 c1 01             	add    $0x1,%ecx
 516:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 51a:	0f be 11             	movsbl (%ecx),%edx
 51d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 520:	80 fb 09             	cmp    $0x9,%bl
 523:	76 eb                	jbe    510 <atoi+0x20>
    n = n*10 + *s++ - '0';
  return n;
}
 525:	5b                   	pop    %ebx
 526:	5d                   	pop    %ebp
 527:	c3                   	ret    
 528:	90                   	nop
 529:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000530 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 530:	55                   	push   %ebp
 531:	89 e5                	mov    %esp,%ebp
 533:	56                   	push   %esi
 534:	53                   	push   %ebx
 535:	8b 5d 10             	mov    0x10(%ebp),%ebx
 538:	8b 45 08             	mov    0x8(%ebp),%eax
 53b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 53e:	85 db                	test   %ebx,%ebx
 540:	7e 14                	jle    556 <memmove+0x26>
 542:	31 d2                	xor    %edx,%edx
 544:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 548:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 54c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 54f:	83 c2 01             	add    $0x1,%edx
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 552:	39 da                	cmp    %ebx,%edx
 554:	75 f2                	jne    548 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
 556:	5b                   	pop    %ebx
 557:	5e                   	pop    %esi
 558:	5d                   	pop    %ebp
 559:	c3                   	ret    

0000055a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 55a:	b8 01 00 00 00       	mov    $0x1,%eax
 55f:	cd 40                	int    $0x40
 561:	c3                   	ret    

00000562 <exit>:
SYSCALL(exit)
 562:	b8 02 00 00 00       	mov    $0x2,%eax
 567:	cd 40                	int    $0x40
 569:	c3                   	ret    

0000056a <wait>:
SYSCALL(wait)
 56a:	b8 03 00 00 00       	mov    $0x3,%eax
 56f:	cd 40                	int    $0x40
 571:	c3                   	ret    

00000572 <pipe>:
SYSCALL(pipe)
 572:	b8 04 00 00 00       	mov    $0x4,%eax
 577:	cd 40                	int    $0x40
 579:	c3                   	ret    

0000057a <read>:
SYSCALL(read)
 57a:	b8 05 00 00 00       	mov    $0x5,%eax
 57f:	cd 40                	int    $0x40
 581:	c3                   	ret    

00000582 <write>:
SYSCALL(write)
 582:	b8 10 00 00 00       	mov    $0x10,%eax
 587:	cd 40                	int    $0x40
 589:	c3                   	ret    

0000058a <close>:
SYSCALL(close)
 58a:	b8 15 00 00 00       	mov    $0x15,%eax
 58f:	cd 40                	int    $0x40
 591:	c3                   	ret    

00000592 <kill>:
SYSCALL(kill)
 592:	b8 06 00 00 00       	mov    $0x6,%eax
 597:	cd 40                	int    $0x40
 599:	c3                   	ret    

0000059a <exec>:
SYSCALL(exec)
 59a:	b8 07 00 00 00       	mov    $0x7,%eax
 59f:	cd 40                	int    $0x40
 5a1:	c3                   	ret    

000005a2 <open>:
SYSCALL(open)
 5a2:	b8 0f 00 00 00       	mov    $0xf,%eax
 5a7:	cd 40                	int    $0x40
 5a9:	c3                   	ret    

000005aa <mknod>:
SYSCALL(mknod)
 5aa:	b8 11 00 00 00       	mov    $0x11,%eax
 5af:	cd 40                	int    $0x40
 5b1:	c3                   	ret    

000005b2 <unlink>:
SYSCALL(unlink)
 5b2:	b8 12 00 00 00       	mov    $0x12,%eax
 5b7:	cd 40                	int    $0x40
 5b9:	c3                   	ret    

000005ba <fstat>:
SYSCALL(fstat)
 5ba:	b8 08 00 00 00       	mov    $0x8,%eax
 5bf:	cd 40                	int    $0x40
 5c1:	c3                   	ret    

000005c2 <link>:
SYSCALL(link)
 5c2:	b8 13 00 00 00       	mov    $0x13,%eax
 5c7:	cd 40                	int    $0x40
 5c9:	c3                   	ret    

000005ca <mkdir>:
SYSCALL(mkdir)
 5ca:	b8 14 00 00 00       	mov    $0x14,%eax
 5cf:	cd 40                	int    $0x40
 5d1:	c3                   	ret    

000005d2 <chdir>:
SYSCALL(chdir)
 5d2:	b8 09 00 00 00       	mov    $0x9,%eax
 5d7:	cd 40                	int    $0x40
 5d9:	c3                   	ret    

000005da <dup>:
SYSCALL(dup)
 5da:	b8 0a 00 00 00       	mov    $0xa,%eax
 5df:	cd 40                	int    $0x40
 5e1:	c3                   	ret    

000005e2 <getpid>:
SYSCALL(getpid)
 5e2:	b8 0b 00 00 00       	mov    $0xb,%eax
 5e7:	cd 40                	int    $0x40
 5e9:	c3                   	ret    

000005ea <sbrk>:
SYSCALL(sbrk)
 5ea:	b8 0c 00 00 00       	mov    $0xc,%eax
 5ef:	cd 40                	int    $0x40
 5f1:	c3                   	ret    

000005f2 <sleep>:
SYSCALL(sleep)
 5f2:	b8 0d 00 00 00       	mov    $0xd,%eax
 5f7:	cd 40                	int    $0x40
 5f9:	c3                   	ret    

000005fa <uptime>:
SYSCALL(uptime)
 5fa:	b8 0e 00 00 00       	mov    $0xe,%eax
 5ff:	cd 40                	int    $0x40
 601:	c3                   	ret    

00000602 <exitStat>:
SYSCALL(exitStat)
 602:	b8 16 00 00 00       	mov    $0x16,%eax
 607:	cd 40                	int    $0x40
 609:	c3                   	ret    

0000060a <waitpid>:
SYSCALL(waitpid)
 60a:	b8 17 00 00 00       	mov    $0x17,%eax
 60f:	cd 40                	int    $0x40
 611:	c3                   	ret    
 612:	66 90                	xchg   %ax,%ax
 614:	66 90                	xchg   %ax,%ax
 616:	66 90                	xchg   %ax,%ax
 618:	66 90                	xchg   %ax,%ax
 61a:	66 90                	xchg   %ax,%ax
 61c:	66 90                	xchg   %ax,%ax
 61e:	66 90                	xchg   %ax,%ax

00000620 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 620:	55                   	push   %ebp
 621:	89 e5                	mov    %esp,%ebp
 623:	57                   	push   %edi
 624:	56                   	push   %esi
 625:	53                   	push   %ebx
 626:	89 c6                	mov    %eax,%esi
 628:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 62b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 62e:	85 db                	test   %ebx,%ebx
 630:	74 7e                	je     6b0 <printint+0x90>
 632:	89 d0                	mov    %edx,%eax
 634:	c1 e8 1f             	shr    $0x1f,%eax
 637:	84 c0                	test   %al,%al
 639:	74 75                	je     6b0 <printint+0x90>
    neg = 1;
    x = -xx;
 63b:	89 d0                	mov    %edx,%eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 63d:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
 644:	f7 d8                	neg    %eax
 646:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 649:	31 ff                	xor    %edi,%edi
 64b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 64e:	89 ce                	mov    %ecx,%esi
 650:	eb 08                	jmp    65a <printint+0x3a>
 652:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 658:	89 cf                	mov    %ecx,%edi
 65a:	31 d2                	xor    %edx,%edx
 65c:	8d 4f 01             	lea    0x1(%edi),%ecx
 65f:	f7 f6                	div    %esi
 661:	0f b6 92 30 0c 00 00 	movzbl 0xc30(%edx),%edx
  }while((x /= base) != 0);
 668:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 66a:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 66d:	75 e9                	jne    658 <printint+0x38>
  if(neg)
 66f:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 672:	8b 75 c0             	mov    -0x40(%ebp),%esi
 675:	85 c0                	test   %eax,%eax
 677:	74 08                	je     681 <printint+0x61>
    buf[i++] = '-';
 679:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
 67e:	8d 4f 02             	lea    0x2(%edi),%ecx
 681:	8d 7c 0d d7          	lea    -0x29(%ebp,%ecx,1),%edi
 685:	8d 76 00             	lea    0x0(%esi),%esi
 688:	0f b6 07             	movzbl (%edi),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 68b:	83 ec 04             	sub    $0x4,%esp
 68e:	83 ef 01             	sub    $0x1,%edi
 691:	6a 01                	push   $0x1
 693:	53                   	push   %ebx
 694:	56                   	push   %esi
 695:	88 45 d7             	mov    %al,-0x29(%ebp)
 698:	e8 e5 fe ff ff       	call   582 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 69d:	83 c4 10             	add    $0x10,%esp
 6a0:	39 df                	cmp    %ebx,%edi
 6a2:	75 e4                	jne    688 <printint+0x68>
    putc(fd, buf[i]);
}
 6a4:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6a7:	5b                   	pop    %ebx
 6a8:	5e                   	pop    %esi
 6a9:	5f                   	pop    %edi
 6aa:	5d                   	pop    %ebp
 6ab:	c3                   	ret    
 6ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 6b0:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 6b2:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 6b9:	eb 8b                	jmp    646 <printint+0x26>
 6bb:	90                   	nop
 6bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000006c0 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 6c0:	55                   	push   %ebp
 6c1:	89 e5                	mov    %esp,%ebp
 6c3:	57                   	push   %edi
 6c4:	56                   	push   %esi
 6c5:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 6c6:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 6c9:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 6cc:	8b 75 0c             	mov    0xc(%ebp),%esi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 6cf:	8b 7d 08             	mov    0x8(%ebp),%edi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 6d2:	89 45 d0             	mov    %eax,-0x30(%ebp)
 6d5:	0f b6 1e             	movzbl (%esi),%ebx
 6d8:	83 c6 01             	add    $0x1,%esi
 6db:	84 db                	test   %bl,%bl
 6dd:	0f 84 b0 00 00 00    	je     793 <printf+0xd3>
 6e3:	31 d2                	xor    %edx,%edx
 6e5:	eb 39                	jmp    720 <printf+0x60>
 6e7:	89 f6                	mov    %esi,%esi
 6e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 6f0:	83 f8 25             	cmp    $0x25,%eax
 6f3:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
 6f6:	ba 25 00 00 00       	mov    $0x25,%edx
  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 6fb:	74 18                	je     715 <printf+0x55>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 6fd:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 700:	83 ec 04             	sub    $0x4,%esp
 703:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 706:	6a 01                	push   $0x1
 708:	50                   	push   %eax
 709:	57                   	push   %edi
 70a:	e8 73 fe ff ff       	call   582 <write>
 70f:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 712:	83 c4 10             	add    $0x10,%esp
 715:	83 c6 01             	add    $0x1,%esi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 718:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 71c:	84 db                	test   %bl,%bl
 71e:	74 73                	je     793 <printf+0xd3>
    c = fmt[i] & 0xff;
    if(state == 0){
 720:	85 d2                	test   %edx,%edx
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 722:	0f be cb             	movsbl %bl,%ecx
 725:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 728:	74 c6                	je     6f0 <printf+0x30>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 72a:	83 fa 25             	cmp    $0x25,%edx
 72d:	75 e6                	jne    715 <printf+0x55>
      if(c == 'd'){
 72f:	83 f8 64             	cmp    $0x64,%eax
 732:	0f 84 f8 00 00 00    	je     830 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 738:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 73e:	83 f9 70             	cmp    $0x70,%ecx
 741:	74 5d                	je     7a0 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 743:	83 f8 73             	cmp    $0x73,%eax
 746:	0f 84 84 00 00 00    	je     7d0 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 74c:	83 f8 63             	cmp    $0x63,%eax
 74f:	0f 84 ea 00 00 00    	je     83f <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 755:	83 f8 25             	cmp    $0x25,%eax
 758:	0f 84 c2 00 00 00    	je     820 <printf+0x160>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 75e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 761:	83 ec 04             	sub    $0x4,%esp
 764:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 768:	6a 01                	push   $0x1
 76a:	50                   	push   %eax
 76b:	57                   	push   %edi
 76c:	e8 11 fe ff ff       	call   582 <write>
 771:	83 c4 0c             	add    $0xc,%esp
 774:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 777:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 77a:	6a 01                	push   $0x1
 77c:	50                   	push   %eax
 77d:	57                   	push   %edi
 77e:	83 c6 01             	add    $0x1,%esi
 781:	e8 fc fd ff ff       	call   582 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 786:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 78a:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 78d:	31 d2                	xor    %edx,%edx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 78f:	84 db                	test   %bl,%bl
 791:	75 8d                	jne    720 <printf+0x60>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 793:	8d 65 f4             	lea    -0xc(%ebp),%esp
 796:	5b                   	pop    %ebx
 797:	5e                   	pop    %esi
 798:	5f                   	pop    %edi
 799:	5d                   	pop    %ebp
 79a:	c3                   	ret    
 79b:	90                   	nop
 79c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 7a0:	83 ec 0c             	sub    $0xc,%esp
 7a3:	b9 10 00 00 00       	mov    $0x10,%ecx
 7a8:	6a 00                	push   $0x0
 7aa:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 7ad:	89 f8                	mov    %edi,%eax
 7af:	8b 13                	mov    (%ebx),%edx
 7b1:	e8 6a fe ff ff       	call   620 <printint>
        ap++;
 7b6:	89 d8                	mov    %ebx,%eax
 7b8:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 7bb:	31 d2                	xor    %edx,%edx
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
 7bd:	83 c0 04             	add    $0x4,%eax
 7c0:	89 45 d0             	mov    %eax,-0x30(%ebp)
 7c3:	e9 4d ff ff ff       	jmp    715 <printf+0x55>
 7c8:	90                   	nop
 7c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 7d0:	8b 45 d0             	mov    -0x30(%ebp),%eax
 7d3:	8b 18                	mov    (%eax),%ebx
        ap++;
 7d5:	83 c0 04             	add    $0x4,%eax
 7d8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
          s = "(null)";
 7db:	b8 28 0c 00 00       	mov    $0xc28,%eax
 7e0:	85 db                	test   %ebx,%ebx
 7e2:	0f 44 d8             	cmove  %eax,%ebx
        while(*s != 0){
 7e5:	0f b6 03             	movzbl (%ebx),%eax
 7e8:	84 c0                	test   %al,%al
 7ea:	74 23                	je     80f <printf+0x14f>
 7ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 7f0:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 7f3:	8d 45 e3             	lea    -0x1d(%ebp),%eax
 7f6:	83 ec 04             	sub    $0x4,%esp
 7f9:	6a 01                	push   $0x1
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 7fb:	83 c3 01             	add    $0x1,%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 7fe:	50                   	push   %eax
 7ff:	57                   	push   %edi
 800:	e8 7d fd ff ff       	call   582 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 805:	0f b6 03             	movzbl (%ebx),%eax
 808:	83 c4 10             	add    $0x10,%esp
 80b:	84 c0                	test   %al,%al
 80d:	75 e1                	jne    7f0 <printf+0x130>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 80f:	31 d2                	xor    %edx,%edx
 811:	e9 ff fe ff ff       	jmp    715 <printf+0x55>
 816:	8d 76 00             	lea    0x0(%esi),%esi
 819:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 820:	83 ec 04             	sub    $0x4,%esp
 823:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 826:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 829:	6a 01                	push   $0x1
 82b:	e9 4c ff ff ff       	jmp    77c <printf+0xbc>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 830:	83 ec 0c             	sub    $0xc,%esp
 833:	b9 0a 00 00 00       	mov    $0xa,%ecx
 838:	6a 01                	push   $0x1
 83a:	e9 6b ff ff ff       	jmp    7aa <printf+0xea>
 83f:	8b 5d d0             	mov    -0x30(%ebp),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 842:	83 ec 04             	sub    $0x4,%esp
 845:	8b 03                	mov    (%ebx),%eax
 847:	6a 01                	push   $0x1
 849:	88 45 e4             	mov    %al,-0x1c(%ebp)
 84c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 84f:	50                   	push   %eax
 850:	57                   	push   %edi
 851:	e8 2c fd ff ff       	call   582 <write>
 856:	e9 5b ff ff ff       	jmp    7b6 <printf+0xf6>
 85b:	66 90                	xchg   %ax,%ax
 85d:	66 90                	xchg   %ax,%ax
 85f:	90                   	nop

00000860 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 860:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 861:	a1 30 0f 00 00       	mov    0xf30,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
 866:	89 e5                	mov    %esp,%ebp
 868:	57                   	push   %edi
 869:	56                   	push   %esi
 86a:	53                   	push   %ebx
 86b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 86e:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
 870:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 873:	39 c8                	cmp    %ecx,%eax
 875:	73 19                	jae    890 <free+0x30>
 877:	89 f6                	mov    %esi,%esi
 879:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 880:	39 d1                	cmp    %edx,%ecx
 882:	72 1c                	jb     8a0 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 884:	39 d0                	cmp    %edx,%eax
 886:	73 18                	jae    8a0 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
 888:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 88a:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 88c:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 88e:	72 f0                	jb     880 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 890:	39 d0                	cmp    %edx,%eax
 892:	72 f4                	jb     888 <free+0x28>
 894:	39 d1                	cmp    %edx,%ecx
 896:	73 f0                	jae    888 <free+0x28>
 898:	90                   	nop
 899:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
 8a0:	8b 73 fc             	mov    -0x4(%ebx),%esi
 8a3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 8a6:	39 d7                	cmp    %edx,%edi
 8a8:	74 19                	je     8c3 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 8aa:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 8ad:	8b 50 04             	mov    0x4(%eax),%edx
 8b0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 8b3:	39 f1                	cmp    %esi,%ecx
 8b5:	74 23                	je     8da <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 8b7:	89 08                	mov    %ecx,(%eax)
  freep = p;
 8b9:	a3 30 0f 00 00       	mov    %eax,0xf30
}
 8be:	5b                   	pop    %ebx
 8bf:	5e                   	pop    %esi
 8c0:	5f                   	pop    %edi
 8c1:	5d                   	pop    %ebp
 8c2:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
 8c3:	03 72 04             	add    0x4(%edx),%esi
 8c6:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 8c9:	8b 10                	mov    (%eax),%edx
 8cb:	8b 12                	mov    (%edx),%edx
 8cd:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 8d0:	8b 50 04             	mov    0x4(%eax),%edx
 8d3:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 8d6:	39 f1                	cmp    %esi,%ecx
 8d8:	75 dd                	jne    8b7 <free+0x57>
    p->s.size += bp->s.size;
 8da:	03 53 fc             	add    -0x4(%ebx),%edx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
 8dd:	a3 30 0f 00 00       	mov    %eax,0xf30
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
 8e2:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 8e5:	8b 53 f8             	mov    -0x8(%ebx),%edx
 8e8:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 8ea:	5b                   	pop    %ebx
 8eb:	5e                   	pop    %esi
 8ec:	5f                   	pop    %edi
 8ed:	5d                   	pop    %ebp
 8ee:	c3                   	ret    
 8ef:	90                   	nop

000008f0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 8f0:	55                   	push   %ebp
 8f1:	89 e5                	mov    %esp,%ebp
 8f3:	57                   	push   %edi
 8f4:	56                   	push   %esi
 8f5:	53                   	push   %ebx
 8f6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8f9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 8fc:	8b 15 30 0f 00 00    	mov    0xf30,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 902:	8d 78 07             	lea    0x7(%eax),%edi
 905:	c1 ef 03             	shr    $0x3,%edi
 908:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 90b:	85 d2                	test   %edx,%edx
 90d:	0f 84 a3 00 00 00    	je     9b6 <malloc+0xc6>
 913:	8b 02                	mov    (%edx),%eax
 915:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 918:	39 cf                	cmp    %ecx,%edi
 91a:	76 74                	jbe    990 <malloc+0xa0>
 91c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 922:	be 00 10 00 00       	mov    $0x1000,%esi
 927:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
 92e:	0f 43 f7             	cmovae %edi,%esi
 931:	ba 00 80 00 00       	mov    $0x8000,%edx
 936:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
 93c:	0f 46 da             	cmovbe %edx,%ebx
 93f:	eb 10                	jmp    951 <malloc+0x61>
 941:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 948:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 94a:	8b 48 04             	mov    0x4(%eax),%ecx
 94d:	39 cf                	cmp    %ecx,%edi
 94f:	76 3f                	jbe    990 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 951:	39 05 30 0f 00 00    	cmp    %eax,0xf30
 957:	89 c2                	mov    %eax,%edx
 959:	75 ed                	jne    948 <malloc+0x58>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
 95b:	83 ec 0c             	sub    $0xc,%esp
 95e:	53                   	push   %ebx
 95f:	e8 86 fc ff ff       	call   5ea <sbrk>
  if(p == (char*)-1)
 964:	83 c4 10             	add    $0x10,%esp
 967:	83 f8 ff             	cmp    $0xffffffff,%eax
 96a:	74 1c                	je     988 <malloc+0x98>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
 96c:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
 96f:	83 ec 0c             	sub    $0xc,%esp
 972:	83 c0 08             	add    $0x8,%eax
 975:	50                   	push   %eax
 976:	e8 e5 fe ff ff       	call   860 <free>
  return freep;
 97b:	8b 15 30 0f 00 00    	mov    0xf30,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
 981:	83 c4 10             	add    $0x10,%esp
 984:	85 d2                	test   %edx,%edx
 986:	75 c0                	jne    948 <malloc+0x58>
        return 0;
 988:	31 c0                	xor    %eax,%eax
 98a:	eb 1c                	jmp    9a8 <malloc+0xb8>
 98c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
 990:	39 cf                	cmp    %ecx,%edi
 992:	74 1c                	je     9b0 <malloc+0xc0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
 994:	29 f9                	sub    %edi,%ecx
 996:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 999:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 99c:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
 99f:	89 15 30 0f 00 00    	mov    %edx,0xf30
      return (void*)(p + 1);
 9a5:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
 9a8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 9ab:	5b                   	pop    %ebx
 9ac:	5e                   	pop    %esi
 9ad:	5f                   	pop    %edi
 9ae:	5d                   	pop    %ebp
 9af:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
 9b0:	8b 08                	mov    (%eax),%ecx
 9b2:	89 0a                	mov    %ecx,(%edx)
 9b4:	eb e9                	jmp    99f <malloc+0xaf>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 9b6:	c7 05 30 0f 00 00 34 	movl   $0xf34,0xf30
 9bd:	0f 00 00 
 9c0:	c7 05 34 0f 00 00 34 	movl   $0xf34,0xf34
 9c7:	0f 00 00 
    base.s.size = 0;
 9ca:	b8 34 0f 00 00       	mov    $0xf34,%eax
 9cf:	c7 05 38 0f 00 00 00 	movl   $0x0,0xf38
 9d6:	00 00 00 
 9d9:	e9 3e ff ff ff       	jmp    91c <malloc+0x2c>
