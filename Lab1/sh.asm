
_sh:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return 0;
}

int
main(void)
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	pushl  -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	51                   	push   %ecx
       e:	83 ec 04             	sub    $0x4,%esp
  static char buf[100];
  int fd;

  // Ensure that three file descriptors are open.
  while((fd = open("console", O_RDWR)) >= 0){
      11:	eb 0e                	jmp    21 <main+0x21>
      13:	90                   	nop
      14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(fd >= 3){
      18:	83 f8 02             	cmp    $0x2,%eax
      1b:	0f 8f cb 00 00 00    	jg     ec <main+0xec>
{
  static char buf[100];
  int fd;

  // Ensure that three file descriptors are open.
  while((fd = open("console", O_RDWR)) >= 0){
      21:	83 ec 08             	sub    $0x8,%esp
      24:	6a 02                	push   $0x2
      26:	68 61 12 00 00       	push   $0x1261
      2b:	e8 52 0d 00 00       	call   d82 <open>
      30:	83 c4 10             	add    $0x10,%esp
      33:	85 c0                	test   %eax,%eax
      35:	79 e1                	jns    18 <main+0x18>
      37:	eb 36                	jmp    6f <main+0x6f>
      39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
  }

  // Read and run input commands.
  while(getcmd(buf, sizeof(buf)) >= 0){
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      40:	80 3d 82 18 00 00 20 	cmpb   $0x20,0x1882
      47:	74 65                	je     ae <main+0xae>
      49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
int
fork1(void)
{
  int pid;

  pid = fork();
      50:	e8 e5 0c 00 00       	call   d3a <fork>
  if(pid == -1)
      55:	83 f8 ff             	cmp    $0xffffffff,%eax
      58:	74 47                	je     a1 <main+0xa1>
      buf[strlen(buf)-1] = 0;  // chop \n
      if(chdir(buf+3) < 0)
        printf(2, "cannot cd %s\n", buf+3);
      continue;
    }
    if(fork1() == 0)
      5a:	85 c0                	test   %eax,%eax
      5c:	0f 84 a0 00 00 00    	je     102 <main+0x102>
      runcmd(parsecmd(buf));
    wait(0);
      62:	83 ec 0c             	sub    $0xc,%esp
      65:	6a 00                	push   $0x0
      67:	e8 de 0c 00 00       	call   d4a <wait>
      6c:	83 c4 10             	add    $0x10,%esp
      break;
    }
  }

  // Read and run input commands.
  while(getcmd(buf, sizeof(buf)) >= 0){
      6f:	83 ec 08             	sub    $0x8,%esp
      72:	6a 64                	push   $0x64
      74:	68 80 18 00 00       	push   $0x1880
      79:	e8 a2 00 00 00       	call   120 <getcmd>
      7e:	83 c4 10             	add    $0x10,%esp
      81:	85 c0                	test   %eax,%eax
      83:	78 78                	js     fd <main+0xfd>
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      85:	80 3d 80 18 00 00 63 	cmpb   $0x63,0x1880
      8c:	75 c2                	jne    50 <main+0x50>
      8e:	80 3d 81 18 00 00 64 	cmpb   $0x64,0x1881
      95:	74 a9                	je     40 <main+0x40>
int
fork1(void)
{
  int pid;

  pid = fork();
      97:	e8 9e 0c 00 00       	call   d3a <fork>
  if(pid == -1)
      9c:	83 f8 ff             	cmp    $0xffffffff,%eax
      9f:	75 b9                	jne    5a <main+0x5a>
    panic("fork");
      a1:	83 ec 0c             	sub    $0xc,%esp
      a4:	68 ea 11 00 00       	push   $0x11ea
      a9:	e8 c2 00 00 00       	call   170 <panic>

  // Read and run input commands.
  while(getcmd(buf, sizeof(buf)) >= 0){
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      // Chdir must be called by the parent, not the child.
      buf[strlen(buf)-1] = 0;  // chop \n
      ae:	83 ec 0c             	sub    $0xc,%esp
      b1:	68 80 18 00 00       	push   $0x1880
      b6:	e8 c5 0a 00 00       	call   b80 <strlen>
      if(chdir(buf+3) < 0)
      bb:	c7 04 24 83 18 00 00 	movl   $0x1883,(%esp)

  // Read and run input commands.
  while(getcmd(buf, sizeof(buf)) >= 0){
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      // Chdir must be called by the parent, not the child.
      buf[strlen(buf)-1] = 0;  // chop \n
      c2:	c6 80 7f 18 00 00 00 	movb   $0x0,0x187f(%eax)
      if(chdir(buf+3) < 0)
      c9:	e8 e4 0c 00 00       	call   db2 <chdir>
      ce:	83 c4 10             	add    $0x10,%esp
      d1:	85 c0                	test   %eax,%eax
      d3:	79 9a                	jns    6f <main+0x6f>
        printf(2, "cannot cd %s\n", buf+3);
      d5:	50                   	push   %eax
      d6:	68 83 18 00 00       	push   $0x1883
      db:	68 69 12 00 00       	push   $0x1269
      e0:	6a 02                	push   $0x2
      e2:	e8 b9 0d 00 00       	call   ea0 <printf>
      e7:	83 c4 10             	add    $0x10,%esp
      ea:	eb 83                	jmp    6f <main+0x6f>
  int fd;

  // Ensure that three file descriptors are open.
  while((fd = open("console", O_RDWR)) >= 0){
    if(fd >= 3){
      close(fd);
      ec:	83 ec 0c             	sub    $0xc,%esp
      ef:	50                   	push   %eax
      f0:	e8 75 0c 00 00       	call   d6a <close>
      break;
      f5:	83 c4 10             	add    $0x10,%esp
      f8:	e9 72 ff ff ff       	jmp    6f <main+0x6f>
    }
    if(fork1() == 0)
      runcmd(parsecmd(buf));
    wait(0);
  }
  exit();
      fd:	e8 40 0c 00 00       	call   d42 <exit>
      if(chdir(buf+3) < 0)
        printf(2, "cannot cd %s\n", buf+3);
      continue;
    }
    if(fork1() == 0)
      runcmd(parsecmd(buf));
     102:	83 ec 0c             	sub    $0xc,%esp
     105:	68 80 18 00 00       	push   $0x1880
     10a:	e8 81 09 00 00       	call   a90 <parsecmd>
     10f:	89 04 24             	mov    %eax,(%esp)
     112:	e8 79 00 00 00       	call   190 <runcmd>
     117:	66 90                	xchg   %ax,%ax
     119:	66 90                	xchg   %ax,%ax
     11b:	66 90                	xchg   %ax,%ax
     11d:	66 90                	xchg   %ax,%ax
     11f:	90                   	nop

00000120 <getcmd>:
  exit();
}

int
getcmd(char *buf, int nbuf)
{
     120:	55                   	push   %ebp
     121:	89 e5                	mov    %esp,%ebp
     123:	56                   	push   %esi
     124:	53                   	push   %ebx
     125:	8b 75 0c             	mov    0xc(%ebp),%esi
     128:	8b 5d 08             	mov    0x8(%ebp),%ebx
  printf(2, "$ ");
     12b:	83 ec 08             	sub    $0x8,%esp
     12e:	68 c0 11 00 00       	push   $0x11c0
     133:	6a 02                	push   $0x2
     135:	e8 66 0d 00 00       	call   ea0 <printf>
  memset(buf, 0, nbuf);
     13a:	83 c4 0c             	add    $0xc,%esp
     13d:	56                   	push   %esi
     13e:	6a 00                	push   $0x0
     140:	53                   	push   %ebx
     141:	e8 6a 0a 00 00       	call   bb0 <memset>
  gets(buf, nbuf);
     146:	58                   	pop    %eax
     147:	5a                   	pop    %edx
     148:	56                   	push   %esi
     149:	53                   	push   %ebx
     14a:	e8 c1 0a 00 00       	call   c10 <gets>
     14f:	83 c4 10             	add    $0x10,%esp
     152:	31 c0                	xor    %eax,%eax
     154:	80 3b 00             	cmpb   $0x0,(%ebx)
     157:	0f 94 c0             	sete   %al
  if(buf[0] == 0) // EOF
    return -1;
  return 0;
}
     15a:	8d 65 f8             	lea    -0x8(%ebp),%esp
     15d:	f7 d8                	neg    %eax
     15f:	5b                   	pop    %ebx
     160:	5e                   	pop    %esi
     161:	5d                   	pop    %ebp
     162:	c3                   	ret    
     163:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     169:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000170 <panic>:
  exit();
}

void
panic(char *s)
{
     170:	55                   	push   %ebp
     171:	89 e5                	mov    %esp,%ebp
     173:	83 ec 0c             	sub    $0xc,%esp
  printf(2, "%s\n", s);
     176:	ff 75 08             	pushl  0x8(%ebp)
     179:	68 5d 12 00 00       	push   $0x125d
     17e:	6a 02                	push   $0x2
     180:	e8 1b 0d 00 00       	call   ea0 <printf>
  exit();
     185:	e8 b8 0b 00 00       	call   d42 <exit>
     18a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000190 <runcmd>:
struct cmd *parsecmd(char*);

// Execute cmd.  Never returns.
void
runcmd(struct cmd *cmd)
{
     190:	55                   	push   %ebp
     191:	89 e5                	mov    %esp,%ebp
     193:	53                   	push   %ebx
     194:	83 ec 14             	sub    $0x14,%esp
     197:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
     19a:	85 db                	test   %ebx,%ebx
     19c:	0f 84 84 00 00 00    	je     226 <runcmd+0x96>
    exit();

  switch(cmd->type){
     1a2:	83 3b 05             	cmpl   $0x5,(%ebx)
     1a5:	0f 87 09 01 00 00    	ja     2b4 <runcmd+0x124>
     1ab:	8b 03                	mov    (%ebx),%eax
     1ad:	ff 24 85 78 12 00 00 	jmp    *0x1278(,%eax,4)
    runcmd(lcmd->right);
    break;

  case PIPE:
    pcmd = (struct pipecmd*)cmd;
    if(pipe(p) < 0)
     1b4:	8d 45 f0             	lea    -0x10(%ebp),%eax
     1b7:	83 ec 0c             	sub    $0xc,%esp
     1ba:	50                   	push   %eax
     1bb:	e8 92 0b 00 00       	call   d52 <pipe>
     1c0:	83 c4 10             	add    $0x10,%esp
     1c3:	85 c0                	test   %eax,%eax
     1c5:	0f 88 18 01 00 00    	js     2e3 <runcmd+0x153>
int
fork1(void)
{
  int pid;

  pid = fork();
     1cb:	e8 6a 0b 00 00       	call   d3a <fork>
  if(pid == -1)
     1d0:	83 f8 ff             	cmp    $0xffffffff,%eax
     1d3:	0f 84 e8 00 00 00    	je     2c1 <runcmd+0x131>

  case PIPE:
    pcmd = (struct pipecmd*)cmd;
    if(pipe(p) < 0)
      panic("pipe");
    if(fork1() == 0){
     1d9:	85 c0                	test   %eax,%eax
     1db:	0f 84 0f 01 00 00    	je     2f0 <runcmd+0x160>
int
fork1(void)
{
  int pid;

  pid = fork();
     1e1:	e8 54 0b 00 00       	call   d3a <fork>
  if(pid == -1)
     1e6:	83 f8 ff             	cmp    $0xffffffff,%eax
     1e9:	0f 84 d2 00 00 00    	je     2c1 <runcmd+0x131>
      dup(p[1]);
      close(p[0]);
      close(p[1]);
      runcmd(pcmd->left);
    }
    if(fork1() == 0){
     1ef:	85 c0                	test   %eax,%eax
     1f1:	0f 84 27 01 00 00    	je     31e <runcmd+0x18e>
      dup(p[0]);
      close(p[0]);
      close(p[1]);
      runcmd(pcmd->right);
    }
    close(p[0]);
     1f7:	83 ec 0c             	sub    $0xc,%esp
     1fa:	ff 75 f0             	pushl  -0x10(%ebp)
     1fd:	e8 68 0b 00 00       	call   d6a <close>
    close(p[1]);
     202:	58                   	pop    %eax
     203:	ff 75 f4             	pushl  -0xc(%ebp)
     206:	e8 5f 0b 00 00       	call   d6a <close>
    wait(0);
     20b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     212:	e8 33 0b 00 00       	call   d4a <wait>
    wait(0);
     217:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     21e:	e8 27 0b 00 00       	call   d4a <wait>
    break;
     223:	83 c4 10             	add    $0x10,%esp
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
    exit();
     226:	e8 17 0b 00 00       	call   d42 <exit>
int
fork1(void)
{
  int pid;

  pid = fork();
     22b:	e8 0a 0b 00 00       	call   d3a <fork>
  if(pid == -1)
     230:	83 f8 ff             	cmp    $0xffffffff,%eax
     233:	0f 84 88 00 00 00    	je     2c1 <runcmd+0x131>
    wait(0);
    break;

  case BACK:
    bcmd = (struct backcmd*)cmd;
    if(fork1() == 0)
     239:	85 c0                	test   %eax,%eax
     23b:	75 e9                	jne    226 <runcmd+0x96>
     23d:	eb 49                	jmp    288 <runcmd+0xf8>
  default:
    panic("runcmd");

  case EXEC:
    ecmd = (struct execcmd*)cmd;
    if(ecmd->argv[0] == 0)
     23f:	8b 43 04             	mov    0x4(%ebx),%eax
     242:	85 c0                	test   %eax,%eax
     244:	74 e0                	je     226 <runcmd+0x96>
      exit();
    exec(ecmd->argv[0], ecmd->argv);
     246:	8d 53 04             	lea    0x4(%ebx),%edx
     249:	51                   	push   %ecx
     24a:	51                   	push   %ecx
     24b:	52                   	push   %edx
     24c:	50                   	push   %eax
     24d:	e8 28 0b 00 00       	call   d7a <exec>
    printf(2, "exec %s failed\n", ecmd->argv[0]);
     252:	83 c4 0c             	add    $0xc,%esp
     255:	ff 73 04             	pushl  0x4(%ebx)
     258:	68 ca 11 00 00       	push   $0x11ca
     25d:	6a 02                	push   $0x2
     25f:	e8 3c 0c 00 00       	call   ea0 <printf>
    break;
     264:	83 c4 10             	add    $0x10,%esp
     267:	eb bd                	jmp    226 <runcmd+0x96>

  case REDIR:
    rcmd = (struct redircmd*)cmd;
    close(rcmd->fd);
     269:	83 ec 0c             	sub    $0xc,%esp
     26c:	ff 73 14             	pushl  0x14(%ebx)
     26f:	e8 f6 0a 00 00       	call   d6a <close>
    if(open(rcmd->file, rcmd->mode) < 0){
     274:	58                   	pop    %eax
     275:	5a                   	pop    %edx
     276:	ff 73 10             	pushl  0x10(%ebx)
     279:	ff 73 08             	pushl  0x8(%ebx)
     27c:	e8 01 0b 00 00       	call   d82 <open>
     281:	83 c4 10             	add    $0x10,%esp
     284:	85 c0                	test   %eax,%eax
     286:	78 46                	js     2ce <runcmd+0x13e>
    break;

  case BACK:
    bcmd = (struct backcmd*)cmd;
    if(fork1() == 0)
      runcmd(bcmd->cmd);
     288:	83 ec 0c             	sub    $0xc,%esp
     28b:	ff 73 04             	pushl  0x4(%ebx)
     28e:	e8 fd fe ff ff       	call   190 <runcmd>
int
fork1(void)
{
  int pid;

  pid = fork();
     293:	e8 a2 0a 00 00       	call   d3a <fork>
  if(pid == -1)
     298:	83 f8 ff             	cmp    $0xffffffff,%eax
     29b:	74 24                	je     2c1 <runcmd+0x131>
    runcmd(rcmd->cmd);
    break;

  case LIST:
    lcmd = (struct listcmd*)cmd;
    if(fork1() == 0)
     29d:	85 c0                	test   %eax,%eax
     29f:	74 e7                	je     288 <runcmd+0xf8>
      runcmd(lcmd->left);
    wait(0);
     2a1:	83 ec 0c             	sub    $0xc,%esp
     2a4:	6a 00                	push   $0x0
     2a6:	e8 9f 0a 00 00       	call   d4a <wait>
    runcmd(lcmd->right);
     2ab:	5a                   	pop    %edx
     2ac:	ff 73 08             	pushl  0x8(%ebx)
     2af:	e8 dc fe ff ff       	call   190 <runcmd>
  if(cmd == 0)
    exit();

  switch(cmd->type){
  default:
    panic("runcmd");
     2b4:	83 ec 0c             	sub    $0xc,%esp
     2b7:	68 c3 11 00 00       	push   $0x11c3
     2bc:	e8 af fe ff ff       	call   170 <panic>
{
  int pid;

  pid = fork();
  if(pid == -1)
    panic("fork");
     2c1:	83 ec 0c             	sub    $0xc,%esp
     2c4:	68 ea 11 00 00       	push   $0x11ea
     2c9:	e8 a2 fe ff ff       	call   170 <panic>

  case REDIR:
    rcmd = (struct redircmd*)cmd;
    close(rcmd->fd);
    if(open(rcmd->file, rcmd->mode) < 0){
      printf(2, "open %s failed\n", rcmd->file);
     2ce:	51                   	push   %ecx
     2cf:	ff 73 08             	pushl  0x8(%ebx)
     2d2:	68 da 11 00 00       	push   $0x11da
     2d7:	6a 02                	push   $0x2
     2d9:	e8 c2 0b 00 00       	call   ea0 <printf>
      exit();
     2de:	e8 5f 0a 00 00       	call   d42 <exit>
    break;

  case PIPE:
    pcmd = (struct pipecmd*)cmd;
    if(pipe(p) < 0)
      panic("pipe");
     2e3:	83 ec 0c             	sub    $0xc,%esp
     2e6:	68 ef 11 00 00       	push   $0x11ef
     2eb:	e8 80 fe ff ff       	call   170 <panic>
    if(fork1() == 0){
      close(1);
     2f0:	83 ec 0c             	sub    $0xc,%esp
     2f3:	6a 01                	push   $0x1
     2f5:	e8 70 0a 00 00       	call   d6a <close>
      dup(p[1]);
     2fa:	58                   	pop    %eax
     2fb:	ff 75 f4             	pushl  -0xc(%ebp)
     2fe:	e8 b7 0a 00 00       	call   dba <dup>
      close(p[0]);
     303:	58                   	pop    %eax
     304:	ff 75 f0             	pushl  -0x10(%ebp)
     307:	e8 5e 0a 00 00       	call   d6a <close>
      close(p[1]);
     30c:	58                   	pop    %eax
     30d:	ff 75 f4             	pushl  -0xc(%ebp)
     310:	e8 55 0a 00 00       	call   d6a <close>
      runcmd(pcmd->left);
     315:	58                   	pop    %eax
     316:	ff 73 04             	pushl  0x4(%ebx)
     319:	e8 72 fe ff ff       	call   190 <runcmd>
    }
    if(fork1() == 0){
      close(0);
     31e:	83 ec 0c             	sub    $0xc,%esp
     321:	6a 00                	push   $0x0
     323:	e8 42 0a 00 00       	call   d6a <close>
      dup(p[0]);
     328:	5a                   	pop    %edx
     329:	ff 75 f0             	pushl  -0x10(%ebp)
     32c:	e8 89 0a 00 00       	call   dba <dup>
      close(p[0]);
     331:	59                   	pop    %ecx
     332:	ff 75 f0             	pushl  -0x10(%ebp)
     335:	e8 30 0a 00 00       	call   d6a <close>
      close(p[1]);
     33a:	58                   	pop    %eax
     33b:	ff 75 f4             	pushl  -0xc(%ebp)
     33e:	e8 27 0a 00 00       	call   d6a <close>
      runcmd(pcmd->right);
     343:	58                   	pop    %eax
     344:	ff 73 08             	pushl  0x8(%ebx)
     347:	e8 44 fe ff ff       	call   190 <runcmd>
     34c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000350 <fork1>:
  exit();
}

int
fork1(void)
{
     350:	55                   	push   %ebp
     351:	89 e5                	mov    %esp,%ebp
     353:	83 ec 08             	sub    $0x8,%esp
  int pid;

  pid = fork();
     356:	e8 df 09 00 00       	call   d3a <fork>
  if(pid == -1)
     35b:	83 f8 ff             	cmp    $0xffffffff,%eax
     35e:	74 02                	je     362 <fork1+0x12>
    panic("fork");
  return pid;
}
     360:	c9                   	leave  
     361:	c3                   	ret    
{
  int pid;

  pid = fork();
  if(pid == -1)
    panic("fork");
     362:	83 ec 0c             	sub    $0xc,%esp
     365:	68 ea 11 00 00       	push   $0x11ea
     36a:	e8 01 fe ff ff       	call   170 <panic>
     36f:	90                   	nop

00000370 <execcmd>:
//PAGEBREAK!
// Constructors

struct cmd*
execcmd(void)
{
     370:	55                   	push   %ebp
     371:	89 e5                	mov    %esp,%ebp
     373:	53                   	push   %ebx
     374:	83 ec 10             	sub    $0x10,%esp
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     377:	6a 54                	push   $0x54
     379:	e8 52 0d 00 00       	call   10d0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     37e:	83 c4 0c             	add    $0xc,%esp
struct cmd*
execcmd(void)
{
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     381:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     383:	6a 54                	push   $0x54
     385:	6a 00                	push   $0x0
     387:	50                   	push   %eax
     388:	e8 23 08 00 00       	call   bb0 <memset>
  cmd->type = EXEC;
     38d:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
  return (struct cmd*)cmd;
}
     393:	89 d8                	mov    %ebx,%eax
     395:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     398:	c9                   	leave  
     399:	c3                   	ret    
     39a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000003a0 <redircmd>:

struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
     3a0:	55                   	push   %ebp
     3a1:	89 e5                	mov    %esp,%ebp
     3a3:	53                   	push   %ebx
     3a4:	83 ec 10             	sub    $0x10,%esp
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
     3a7:	6a 18                	push   $0x18
     3a9:	e8 22 0d 00 00       	call   10d0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     3ae:	83 c4 0c             	add    $0xc,%esp
struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
     3b1:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     3b3:	6a 18                	push   $0x18
     3b5:	6a 00                	push   $0x0
     3b7:	50                   	push   %eax
     3b8:	e8 f3 07 00 00       	call   bb0 <memset>
  cmd->type = REDIR;
  cmd->cmd = subcmd;
     3bd:	8b 45 08             	mov    0x8(%ebp),%eax
{
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = REDIR;
     3c0:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
  cmd->cmd = subcmd;
     3c6:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->file = file;
     3c9:	8b 45 0c             	mov    0xc(%ebp),%eax
     3cc:	89 43 08             	mov    %eax,0x8(%ebx)
  cmd->efile = efile;
     3cf:	8b 45 10             	mov    0x10(%ebp),%eax
     3d2:	89 43 0c             	mov    %eax,0xc(%ebx)
  cmd->mode = mode;
     3d5:	8b 45 14             	mov    0x14(%ebp),%eax
     3d8:	89 43 10             	mov    %eax,0x10(%ebx)
  cmd->fd = fd;
     3db:	8b 45 18             	mov    0x18(%ebp),%eax
     3de:	89 43 14             	mov    %eax,0x14(%ebx)
  return (struct cmd*)cmd;
}
     3e1:	89 d8                	mov    %ebx,%eax
     3e3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     3e6:	c9                   	leave  
     3e7:	c3                   	ret    
     3e8:	90                   	nop
     3e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003f0 <pipecmd>:

struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
     3f0:	55                   	push   %ebp
     3f1:	89 e5                	mov    %esp,%ebp
     3f3:	53                   	push   %ebx
     3f4:	83 ec 10             	sub    $0x10,%esp
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
     3f7:	6a 0c                	push   $0xc
     3f9:	e8 d2 0c 00 00       	call   10d0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     3fe:	83 c4 0c             	add    $0xc,%esp
struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
     401:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     403:	6a 0c                	push   $0xc
     405:	6a 00                	push   $0x0
     407:	50                   	push   %eax
     408:	e8 a3 07 00 00       	call   bb0 <memset>
  cmd->type = PIPE;
  cmd->left = left;
     40d:	8b 45 08             	mov    0x8(%ebp),%eax
{
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = PIPE;
     410:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
  cmd->left = left;
     416:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     419:	8b 45 0c             	mov    0xc(%ebp),%eax
     41c:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     41f:	89 d8                	mov    %ebx,%eax
     421:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     424:	c9                   	leave  
     425:	c3                   	ret    
     426:	8d 76 00             	lea    0x0(%esi),%esi
     429:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000430 <listcmd>:

struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
     430:	55                   	push   %ebp
     431:	89 e5                	mov    %esp,%ebp
     433:	53                   	push   %ebx
     434:	83 ec 10             	sub    $0x10,%esp
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     437:	6a 0c                	push   $0xc
     439:	e8 92 0c 00 00       	call   10d0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     43e:	83 c4 0c             	add    $0xc,%esp
struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     441:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     443:	6a 0c                	push   $0xc
     445:	6a 00                	push   $0x0
     447:	50                   	push   %eax
     448:	e8 63 07 00 00       	call   bb0 <memset>
  cmd->type = LIST;
  cmd->left = left;
     44d:	8b 45 08             	mov    0x8(%ebp),%eax
{
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = LIST;
     450:	c7 03 04 00 00 00    	movl   $0x4,(%ebx)
  cmd->left = left;
     456:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     459:	8b 45 0c             	mov    0xc(%ebp),%eax
     45c:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     45f:	89 d8                	mov    %ebx,%eax
     461:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     464:	c9                   	leave  
     465:	c3                   	ret    
     466:	8d 76 00             	lea    0x0(%esi),%esi
     469:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000470 <backcmd>:

struct cmd*
backcmd(struct cmd *subcmd)
{
     470:	55                   	push   %ebp
     471:	89 e5                	mov    %esp,%ebp
     473:	53                   	push   %ebx
     474:	83 ec 10             	sub    $0x10,%esp
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     477:	6a 08                	push   $0x8
     479:	e8 52 0c 00 00       	call   10d0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     47e:	83 c4 0c             	add    $0xc,%esp
struct cmd*
backcmd(struct cmd *subcmd)
{
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     481:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     483:	6a 08                	push   $0x8
     485:	6a 00                	push   $0x0
     487:	50                   	push   %eax
     488:	e8 23 07 00 00       	call   bb0 <memset>
  cmd->type = BACK;
  cmd->cmd = subcmd;
     48d:	8b 45 08             	mov    0x8(%ebp),%eax
{
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = BACK;
     490:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
  cmd->cmd = subcmd;
     496:	89 43 04             	mov    %eax,0x4(%ebx)
  return (struct cmd*)cmd;
}
     499:	89 d8                	mov    %ebx,%eax
     49b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     49e:	c9                   	leave  
     49f:	c3                   	ret    

000004a0 <gettoken>:
char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
     4a0:	55                   	push   %ebp
     4a1:	89 e5                	mov    %esp,%ebp
     4a3:	57                   	push   %edi
     4a4:	56                   	push   %esi
     4a5:	53                   	push   %ebx
     4a6:	83 ec 0c             	sub    $0xc,%esp
  char *s;
  int ret;

  s = *ps;
     4a9:	8b 45 08             	mov    0x8(%ebp),%eax
char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
     4ac:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     4af:	8b 75 10             	mov    0x10(%ebp),%esi
  char *s;
  int ret;

  s = *ps;
     4b2:	8b 38                	mov    (%eax),%edi
  while(s < es && strchr(whitespace, *s))
     4b4:	39 df                	cmp    %ebx,%edi
     4b6:	72 13                	jb     4cb <gettoken+0x2b>
     4b8:	eb 29                	jmp    4e3 <gettoken+0x43>
     4ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    s++;
     4c0:	83 c7 01             	add    $0x1,%edi
{
  char *s;
  int ret;

  s = *ps;
  while(s < es && strchr(whitespace, *s))
     4c3:	39 fb                	cmp    %edi,%ebx
     4c5:	0f 84 ed 00 00 00    	je     5b8 <gettoken+0x118>
     4cb:	0f be 07             	movsbl (%edi),%eax
     4ce:	83 ec 08             	sub    $0x8,%esp
     4d1:	50                   	push   %eax
     4d2:	68 68 18 00 00       	push   $0x1868
     4d7:	e8 f4 06 00 00       	call   bd0 <strchr>
     4dc:	83 c4 10             	add    $0x10,%esp
     4df:	85 c0                	test   %eax,%eax
     4e1:	75 dd                	jne    4c0 <gettoken+0x20>
    s++;
  if(q)
     4e3:	85 f6                	test   %esi,%esi
     4e5:	74 02                	je     4e9 <gettoken+0x49>
    *q = s;
     4e7:	89 3e                	mov    %edi,(%esi)
  ret = *s;
     4e9:	0f be 37             	movsbl (%edi),%esi
     4ec:	89 f1                	mov    %esi,%ecx
     4ee:	89 f0                	mov    %esi,%eax
  switch(*s){
     4f0:	80 f9 29             	cmp    $0x29,%cl
     4f3:	7f 5b                	jg     550 <gettoken+0xb0>
     4f5:	80 f9 28             	cmp    $0x28,%cl
     4f8:	7d 61                	jge    55b <gettoken+0xbb>
     4fa:	84 c9                	test   %cl,%cl
     4fc:	0f 85 de 00 00 00    	jne    5e0 <gettoken+0x140>
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
      s++;
    break;
  }
  if(eq)
     502:	8b 55 14             	mov    0x14(%ebp),%edx
     505:	85 d2                	test   %edx,%edx
     507:	74 05                	je     50e <gettoken+0x6e>
    *eq = s;
     509:	8b 45 14             	mov    0x14(%ebp),%eax
     50c:	89 38                	mov    %edi,(%eax)

  while(s < es && strchr(whitespace, *s))
     50e:	39 fb                	cmp    %edi,%ebx
     510:	77 0d                	ja     51f <gettoken+0x7f>
     512:	eb 23                	jmp    537 <gettoken+0x97>
     514:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    s++;
     518:	83 c7 01             	add    $0x1,%edi
    break;
  }
  if(eq)
    *eq = s;

  while(s < es && strchr(whitespace, *s))
     51b:	39 fb                	cmp    %edi,%ebx
     51d:	74 18                	je     537 <gettoken+0x97>
     51f:	0f be 07             	movsbl (%edi),%eax
     522:	83 ec 08             	sub    $0x8,%esp
     525:	50                   	push   %eax
     526:	68 68 18 00 00       	push   $0x1868
     52b:	e8 a0 06 00 00       	call   bd0 <strchr>
     530:	83 c4 10             	add    $0x10,%esp
     533:	85 c0                	test   %eax,%eax
     535:	75 e1                	jne    518 <gettoken+0x78>
    s++;
  *ps = s;
     537:	8b 45 08             	mov    0x8(%ebp),%eax
     53a:	89 38                	mov    %edi,(%eax)
  return ret;
}
     53c:	8d 65 f4             	lea    -0xc(%ebp),%esp
     53f:	89 f0                	mov    %esi,%eax
     541:	5b                   	pop    %ebx
     542:	5e                   	pop    %esi
     543:	5f                   	pop    %edi
     544:	5d                   	pop    %ebp
     545:	c3                   	ret    
     546:	8d 76 00             	lea    0x0(%esi),%esi
     549:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  while(s < es && strchr(whitespace, *s))
    s++;
  if(q)
    *q = s;
  ret = *s;
  switch(*s){
     550:	80 f9 3e             	cmp    $0x3e,%cl
     553:	75 0b                	jne    560 <gettoken+0xc0>
  case '<':
    s++;
    break;
  case '>':
    s++;
    if(*s == '>'){
     555:	80 7f 01 3e          	cmpb   $0x3e,0x1(%edi)
     559:	74 75                	je     5d0 <gettoken+0x130>
  case '&':
  case '<':
    s++;
    break;
  case '>':
    s++;
     55b:	83 c7 01             	add    $0x1,%edi
     55e:	eb a2                	jmp    502 <gettoken+0x62>
  while(s < es && strchr(whitespace, *s))
    s++;
  if(q)
    *q = s;
  ret = *s;
  switch(*s){
     560:	7f 5e                	jg     5c0 <gettoken+0x120>
     562:	83 e9 3b             	sub    $0x3b,%ecx
     565:	80 f9 01             	cmp    $0x1,%cl
     568:	76 f1                	jbe    55b <gettoken+0xbb>
      s++;
    }
    break;
  default:
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     56a:	39 fb                	cmp    %edi,%ebx
     56c:	77 24                	ja     592 <gettoken+0xf2>
     56e:	eb 7c                	jmp    5ec <gettoken+0x14c>
     570:	0f be 07             	movsbl (%edi),%eax
     573:	83 ec 08             	sub    $0x8,%esp
     576:	50                   	push   %eax
     577:	68 60 18 00 00       	push   $0x1860
     57c:	e8 4f 06 00 00       	call   bd0 <strchr>
     581:	83 c4 10             	add    $0x10,%esp
     584:	85 c0                	test   %eax,%eax
     586:	75 1f                	jne    5a7 <gettoken+0x107>
      s++;
     588:	83 c7 01             	add    $0x1,%edi
      s++;
    }
    break;
  default:
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     58b:	39 fb                	cmp    %edi,%ebx
     58d:	74 5b                	je     5ea <gettoken+0x14a>
     58f:	0f be 07             	movsbl (%edi),%eax
     592:	83 ec 08             	sub    $0x8,%esp
     595:	50                   	push   %eax
     596:	68 68 18 00 00       	push   $0x1868
     59b:	e8 30 06 00 00       	call   bd0 <strchr>
     5a0:	83 c4 10             	add    $0x10,%esp
     5a3:	85 c0                	test   %eax,%eax
     5a5:	74 c9                	je     570 <gettoken+0xd0>
      ret = '+';
      s++;
    }
    break;
  default:
    ret = 'a';
     5a7:	be 61 00 00 00       	mov    $0x61,%esi
     5ac:	e9 51 ff ff ff       	jmp    502 <gettoken+0x62>
     5b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     5b8:	89 df                	mov    %ebx,%edi
     5ba:	e9 24 ff ff ff       	jmp    4e3 <gettoken+0x43>
     5bf:	90                   	nop
  while(s < es && strchr(whitespace, *s))
    s++;
  if(q)
    *q = s;
  ret = *s;
  switch(*s){
     5c0:	80 f9 7c             	cmp    $0x7c,%cl
     5c3:	74 96                	je     55b <gettoken+0xbb>
     5c5:	eb a3                	jmp    56a <gettoken+0xca>
     5c7:	89 f6                	mov    %esi,%esi
     5c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    break;
  case '>':
    s++;
    if(*s == '>'){
      ret = '+';
      s++;
     5d0:	83 c7 02             	add    $0x2,%edi
    s++;
    break;
  case '>':
    s++;
    if(*s == '>'){
      ret = '+';
     5d3:	be 2b 00 00 00       	mov    $0x2b,%esi
     5d8:	e9 25 ff ff ff       	jmp    502 <gettoken+0x62>
     5dd:	8d 76 00             	lea    0x0(%esi),%esi
  while(s < es && strchr(whitespace, *s))
    s++;
  if(q)
    *q = s;
  ret = *s;
  switch(*s){
     5e0:	80 f9 26             	cmp    $0x26,%cl
     5e3:	75 85                	jne    56a <gettoken+0xca>
     5e5:	e9 71 ff ff ff       	jmp    55b <gettoken+0xbb>
     5ea:	89 df                	mov    %ebx,%edi
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
      s++;
    break;
  }
  if(eq)
     5ec:	8b 45 14             	mov    0x14(%ebp),%eax
     5ef:	be 61 00 00 00       	mov    $0x61,%esi
     5f4:	85 c0                	test   %eax,%eax
     5f6:	0f 85 0d ff ff ff    	jne    509 <gettoken+0x69>
     5fc:	e9 36 ff ff ff       	jmp    537 <gettoken+0x97>
     601:	eb 0d                	jmp    610 <peek>
     603:	90                   	nop
     604:	90                   	nop
     605:	90                   	nop
     606:	90                   	nop
     607:	90                   	nop
     608:	90                   	nop
     609:	90                   	nop
     60a:	90                   	nop
     60b:	90                   	nop
     60c:	90                   	nop
     60d:	90                   	nop
     60e:	90                   	nop
     60f:	90                   	nop

00000610 <peek>:
  return ret;
}

int
peek(char **ps, char *es, char *toks)
{
     610:	55                   	push   %ebp
     611:	89 e5                	mov    %esp,%ebp
     613:	57                   	push   %edi
     614:	56                   	push   %esi
     615:	53                   	push   %ebx
     616:	83 ec 0c             	sub    $0xc,%esp
     619:	8b 7d 08             	mov    0x8(%ebp),%edi
     61c:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *s;

  s = *ps;
     61f:	8b 1f                	mov    (%edi),%ebx
  while(s < es && strchr(whitespace, *s))
     621:	39 f3                	cmp    %esi,%ebx
     623:	72 12                	jb     637 <peek+0x27>
     625:	eb 28                	jmp    64f <peek+0x3f>
     627:	89 f6                	mov    %esi,%esi
     629:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    s++;
     630:	83 c3 01             	add    $0x1,%ebx
peek(char **ps, char *es, char *toks)
{
  char *s;

  s = *ps;
  while(s < es && strchr(whitespace, *s))
     633:	39 de                	cmp    %ebx,%esi
     635:	74 18                	je     64f <peek+0x3f>
     637:	0f be 03             	movsbl (%ebx),%eax
     63a:	83 ec 08             	sub    $0x8,%esp
     63d:	50                   	push   %eax
     63e:	68 68 18 00 00       	push   $0x1868
     643:	e8 88 05 00 00       	call   bd0 <strchr>
     648:	83 c4 10             	add    $0x10,%esp
     64b:	85 c0                	test   %eax,%eax
     64d:	75 e1                	jne    630 <peek+0x20>
    s++;
  *ps = s;
     64f:	89 1f                	mov    %ebx,(%edi)
  return *s && strchr(toks, *s);
     651:	0f be 13             	movsbl (%ebx),%edx
     654:	31 c0                	xor    %eax,%eax
     656:	84 d2                	test   %dl,%dl
     658:	74 17                	je     671 <peek+0x61>
     65a:	83 ec 08             	sub    $0x8,%esp
     65d:	52                   	push   %edx
     65e:	ff 75 10             	pushl  0x10(%ebp)
     661:	e8 6a 05 00 00       	call   bd0 <strchr>
     666:	83 c4 10             	add    $0x10,%esp
     669:	85 c0                	test   %eax,%eax
     66b:	0f 95 c0             	setne  %al
     66e:	0f b6 c0             	movzbl %al,%eax
}
     671:	8d 65 f4             	lea    -0xc(%ebp),%esp
     674:	5b                   	pop    %ebx
     675:	5e                   	pop    %esi
     676:	5f                   	pop    %edi
     677:	5d                   	pop    %ebp
     678:	c3                   	ret    
     679:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000680 <parseredirs>:
  return cmd;
}

struct cmd*
parseredirs(struct cmd *cmd, char **ps, char *es)
{
     680:	55                   	push   %ebp
     681:	89 e5                	mov    %esp,%ebp
     683:	57                   	push   %edi
     684:	56                   	push   %esi
     685:	53                   	push   %ebx
     686:	83 ec 1c             	sub    $0x1c,%esp
     689:	8b 75 0c             	mov    0xc(%ebp),%esi
     68c:	8b 5d 10             	mov    0x10(%ebp),%ebx
     68f:	90                   	nop
  int tok;
  char *q, *eq;

  while(peek(ps, es, "<>")){
     690:	83 ec 04             	sub    $0x4,%esp
     693:	68 11 12 00 00       	push   $0x1211
     698:	53                   	push   %ebx
     699:	56                   	push   %esi
     69a:	e8 71 ff ff ff       	call   610 <peek>
     69f:	83 c4 10             	add    $0x10,%esp
     6a2:	85 c0                	test   %eax,%eax
     6a4:	74 6a                	je     710 <parseredirs+0x90>
    tok = gettoken(ps, es, 0, 0);
     6a6:	6a 00                	push   $0x0
     6a8:	6a 00                	push   $0x0
     6aa:	53                   	push   %ebx
     6ab:	56                   	push   %esi
     6ac:	e8 ef fd ff ff       	call   4a0 <gettoken>
     6b1:	89 c7                	mov    %eax,%edi
    if(gettoken(ps, es, &q, &eq) != 'a')
     6b3:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     6b6:	50                   	push   %eax
     6b7:	8d 45 e0             	lea    -0x20(%ebp),%eax
     6ba:	50                   	push   %eax
     6bb:	53                   	push   %ebx
     6bc:	56                   	push   %esi
     6bd:	e8 de fd ff ff       	call   4a0 <gettoken>
     6c2:	83 c4 20             	add    $0x20,%esp
     6c5:	83 f8 61             	cmp    $0x61,%eax
     6c8:	75 51                	jne    71b <parseredirs+0x9b>
      panic("missing file for redirection");
    switch(tok){
     6ca:	83 ff 3c             	cmp    $0x3c,%edi
     6cd:	74 31                	je     700 <parseredirs+0x80>
     6cf:	83 ff 3e             	cmp    $0x3e,%edi
     6d2:	74 05                	je     6d9 <parseredirs+0x59>
     6d4:	83 ff 2b             	cmp    $0x2b,%edi
     6d7:	75 b7                	jne    690 <parseredirs+0x10>
      break;
    case '>':
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    case '+':  // >>
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     6d9:	83 ec 0c             	sub    $0xc,%esp
     6dc:	6a 01                	push   $0x1
     6de:	68 01 02 00 00       	push   $0x201
     6e3:	ff 75 e4             	pushl  -0x1c(%ebp)
     6e6:	ff 75 e0             	pushl  -0x20(%ebp)
     6e9:	ff 75 08             	pushl  0x8(%ebp)
     6ec:	e8 af fc ff ff       	call   3a0 <redircmd>
      break;
     6f1:	83 c4 20             	add    $0x20,%esp
      break;
    case '>':
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    case '+':  // >>
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     6f4:	89 45 08             	mov    %eax,0x8(%ebp)
      break;
     6f7:	eb 97                	jmp    690 <parseredirs+0x10>
     6f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    tok = gettoken(ps, es, 0, 0);
    if(gettoken(ps, es, &q, &eq) != 'a')
      panic("missing file for redirection");
    switch(tok){
    case '<':
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     700:	83 ec 0c             	sub    $0xc,%esp
     703:	6a 00                	push   $0x0
     705:	6a 00                	push   $0x0
     707:	eb da                	jmp    6e3 <parseredirs+0x63>
     709:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    }
  }
  return cmd;
}
     710:	8b 45 08             	mov    0x8(%ebp),%eax
     713:	8d 65 f4             	lea    -0xc(%ebp),%esp
     716:	5b                   	pop    %ebx
     717:	5e                   	pop    %esi
     718:	5f                   	pop    %edi
     719:	5d                   	pop    %ebp
     71a:	c3                   	ret    
  char *q, *eq;

  while(peek(ps, es, "<>")){
    tok = gettoken(ps, es, 0, 0);
    if(gettoken(ps, es, &q, &eq) != 'a')
      panic("missing file for redirection");
     71b:	83 ec 0c             	sub    $0xc,%esp
     71e:	68 f4 11 00 00       	push   $0x11f4
     723:	e8 48 fa ff ff       	call   170 <panic>
     728:	90                   	nop
     729:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000730 <parseexec>:
  return cmd;
}

struct cmd*
parseexec(char **ps, char *es)
{
     730:	55                   	push   %ebp
     731:	89 e5                	mov    %esp,%ebp
     733:	57                   	push   %edi
     734:	56                   	push   %esi
     735:	53                   	push   %ebx
     736:	83 ec 30             	sub    $0x30,%esp
     739:	8b 75 08             	mov    0x8(%ebp),%esi
     73c:	8b 7d 0c             	mov    0xc(%ebp),%edi
  char *q, *eq;
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
     73f:	68 14 12 00 00       	push   $0x1214
     744:	57                   	push   %edi
     745:	56                   	push   %esi
     746:	e8 c5 fe ff ff       	call   610 <peek>
     74b:	83 c4 10             	add    $0x10,%esp
     74e:	85 c0                	test   %eax,%eax
     750:	0f 85 9a 00 00 00    	jne    7f0 <parseexec+0xc0>
    return parseblock(ps, es);

  ret = execcmd();
     756:	e8 15 fc ff ff       	call   370 <execcmd>
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
     75b:	83 ec 04             	sub    $0x4,%esp
  struct cmd *ret;

  if(peek(ps, es, "("))
    return parseblock(ps, es);

  ret = execcmd();
     75e:	89 c3                	mov    %eax,%ebx
     760:	89 45 cc             	mov    %eax,-0x34(%ebp)
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
     763:	57                   	push   %edi
     764:	56                   	push   %esi
     765:	8d 5b 04             	lea    0x4(%ebx),%ebx
     768:	50                   	push   %eax
     769:	e8 12 ff ff ff       	call   680 <parseredirs>
     76e:	83 c4 10             	add    $0x10,%esp
     771:	89 45 d0             	mov    %eax,-0x30(%ebp)
    return parseblock(ps, es);

  ret = execcmd();
  cmd = (struct execcmd*)ret;

  argc = 0;
     774:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
     77b:	eb 16                	jmp    793 <parseexec+0x63>
     77d:	8d 76 00             	lea    0x0(%esi),%esi
    cmd->argv[argc] = q;
    cmd->eargv[argc] = eq;
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
     780:	83 ec 04             	sub    $0x4,%esp
     783:	57                   	push   %edi
     784:	56                   	push   %esi
     785:	ff 75 d0             	pushl  -0x30(%ebp)
     788:	e8 f3 fe ff ff       	call   680 <parseredirs>
     78d:	83 c4 10             	add    $0x10,%esp
     790:	89 45 d0             	mov    %eax,-0x30(%ebp)
  ret = execcmd();
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
  while(!peek(ps, es, "|)&;")){
     793:	83 ec 04             	sub    $0x4,%esp
     796:	68 2b 12 00 00       	push   $0x122b
     79b:	57                   	push   %edi
     79c:	56                   	push   %esi
     79d:	e8 6e fe ff ff       	call   610 <peek>
     7a2:	83 c4 10             	add    $0x10,%esp
     7a5:	85 c0                	test   %eax,%eax
     7a7:	75 5f                	jne    808 <parseexec+0xd8>
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
     7a9:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     7ac:	50                   	push   %eax
     7ad:	8d 45 e0             	lea    -0x20(%ebp),%eax
     7b0:	50                   	push   %eax
     7b1:	57                   	push   %edi
     7b2:	56                   	push   %esi
     7b3:	e8 e8 fc ff ff       	call   4a0 <gettoken>
     7b8:	83 c4 10             	add    $0x10,%esp
     7bb:	85 c0                	test   %eax,%eax
     7bd:	74 49                	je     808 <parseexec+0xd8>
      break;
    if(tok != 'a')
     7bf:	83 f8 61             	cmp    $0x61,%eax
     7c2:	75 66                	jne    82a <parseexec+0xfa>
      panic("syntax");
    cmd->argv[argc] = q;
     7c4:	8b 45 e0             	mov    -0x20(%ebp),%eax
    cmd->eargv[argc] = eq;
    argc++;
     7c7:	83 45 d4 01          	addl   $0x1,-0x2c(%ebp)
     7cb:	83 c3 04             	add    $0x4,%ebx
  while(!peek(ps, es, "|)&;")){
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
      break;
    if(tok != 'a')
      panic("syntax");
    cmd->argv[argc] = q;
     7ce:	89 43 fc             	mov    %eax,-0x4(%ebx)
    cmd->eargv[argc] = eq;
     7d1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     7d4:	89 43 24             	mov    %eax,0x24(%ebx)
    argc++;
     7d7:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    if(argc >= MAXARGS)
     7da:	83 f8 0a             	cmp    $0xa,%eax
     7dd:	75 a1                	jne    780 <parseexec+0x50>
      panic("too many args");
     7df:	83 ec 0c             	sub    $0xc,%esp
     7e2:	68 1d 12 00 00       	push   $0x121d
     7e7:	e8 84 f9 ff ff       	call   170 <panic>
     7ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
    return parseblock(ps, es);
     7f0:	83 ec 08             	sub    $0x8,%esp
     7f3:	57                   	push   %edi
     7f4:	56                   	push   %esi
     7f5:	e8 56 01 00 00       	call   950 <parseblock>
     7fa:	83 c4 10             	add    $0x10,%esp
    ret = parseredirs(ret, ps, es);
  }
  cmd->argv[argc] = 0;
  cmd->eargv[argc] = 0;
  return ret;
}
     7fd:	8d 65 f4             	lea    -0xc(%ebp),%esp
     800:	5b                   	pop    %ebx
     801:	5e                   	pop    %esi
     802:	5f                   	pop    %edi
     803:	5d                   	pop    %ebp
     804:	c3                   	ret    
     805:	8d 76 00             	lea    0x0(%esi),%esi
     808:	8b 45 cc             	mov    -0x34(%ebp),%eax
     80b:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     80e:	8d 04 90             	lea    (%eax,%edx,4),%eax
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
  }
  cmd->argv[argc] = 0;
     811:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  cmd->eargv[argc] = 0;
     818:	c7 40 2c 00 00 00 00 	movl   $0x0,0x2c(%eax)
     81f:	8b 45 d0             	mov    -0x30(%ebp),%eax
  return ret;
}
     822:	8d 65 f4             	lea    -0xc(%ebp),%esp
     825:	5b                   	pop    %ebx
     826:	5e                   	pop    %esi
     827:	5f                   	pop    %edi
     828:	5d                   	pop    %ebp
     829:	c3                   	ret    
  ret = parseredirs(ret, ps, es);
  while(!peek(ps, es, "|)&;")){
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
      break;
    if(tok != 'a')
      panic("syntax");
     82a:	83 ec 0c             	sub    $0xc,%esp
     82d:	68 16 12 00 00       	push   $0x1216
     832:	e8 39 f9 ff ff       	call   170 <panic>
     837:	89 f6                	mov    %esi,%esi
     839:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000840 <parsepipe>:
  return cmd;
}

struct cmd*
parsepipe(char **ps, char *es)
{
     840:	55                   	push   %ebp
     841:	89 e5                	mov    %esp,%ebp
     843:	57                   	push   %edi
     844:	56                   	push   %esi
     845:	53                   	push   %ebx
     846:	83 ec 14             	sub    $0x14,%esp
     849:	8b 5d 08             	mov    0x8(%ebp),%ebx
     84c:	8b 75 0c             	mov    0xc(%ebp),%esi
  struct cmd *cmd;

  cmd = parseexec(ps, es);
     84f:	56                   	push   %esi
     850:	53                   	push   %ebx
     851:	e8 da fe ff ff       	call   730 <parseexec>
  if(peek(ps, es, "|")){
     856:	83 c4 0c             	add    $0xc,%esp
struct cmd*
parsepipe(char **ps, char *es)
{
  struct cmd *cmd;

  cmd = parseexec(ps, es);
     859:	89 c7                	mov    %eax,%edi
  if(peek(ps, es, "|")){
     85b:	68 30 12 00 00       	push   $0x1230
     860:	56                   	push   %esi
     861:	53                   	push   %ebx
     862:	e8 a9 fd ff ff       	call   610 <peek>
     867:	83 c4 10             	add    $0x10,%esp
     86a:	85 c0                	test   %eax,%eax
     86c:	75 12                	jne    880 <parsepipe+0x40>
    gettoken(ps, es, 0, 0);
    cmd = pipecmd(cmd, parsepipe(ps, es));
  }
  return cmd;
}
     86e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     871:	89 f8                	mov    %edi,%eax
     873:	5b                   	pop    %ebx
     874:	5e                   	pop    %esi
     875:	5f                   	pop    %edi
     876:	5d                   	pop    %ebp
     877:	c3                   	ret    
     878:	90                   	nop
     879:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
{
  struct cmd *cmd;

  cmd = parseexec(ps, es);
  if(peek(ps, es, "|")){
    gettoken(ps, es, 0, 0);
     880:	6a 00                	push   $0x0
     882:	6a 00                	push   $0x0
     884:	56                   	push   %esi
     885:	53                   	push   %ebx
     886:	e8 15 fc ff ff       	call   4a0 <gettoken>
    cmd = pipecmd(cmd, parsepipe(ps, es));
     88b:	58                   	pop    %eax
     88c:	5a                   	pop    %edx
     88d:	56                   	push   %esi
     88e:	53                   	push   %ebx
     88f:	e8 ac ff ff ff       	call   840 <parsepipe>
     894:	89 7d 08             	mov    %edi,0x8(%ebp)
     897:	89 45 0c             	mov    %eax,0xc(%ebp)
     89a:	83 c4 10             	add    $0x10,%esp
  }
  return cmd;
}
     89d:	8d 65 f4             	lea    -0xc(%ebp),%esp
     8a0:	5b                   	pop    %ebx
     8a1:	5e                   	pop    %esi
     8a2:	5f                   	pop    %edi
     8a3:	5d                   	pop    %ebp
  struct cmd *cmd;

  cmd = parseexec(ps, es);
  if(peek(ps, es, "|")){
    gettoken(ps, es, 0, 0);
    cmd = pipecmd(cmd, parsepipe(ps, es));
     8a4:	e9 47 fb ff ff       	jmp    3f0 <pipecmd>
     8a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000008b0 <parseline>:
  return cmd;
}

struct cmd*
parseline(char **ps, char *es)
{
     8b0:	55                   	push   %ebp
     8b1:	89 e5                	mov    %esp,%ebp
     8b3:	57                   	push   %edi
     8b4:	56                   	push   %esi
     8b5:	53                   	push   %ebx
     8b6:	83 ec 14             	sub    $0x14,%esp
     8b9:	8b 5d 08             	mov    0x8(%ebp),%ebx
     8bc:	8b 75 0c             	mov    0xc(%ebp),%esi
  struct cmd *cmd;

  cmd = parsepipe(ps, es);
     8bf:	56                   	push   %esi
     8c0:	53                   	push   %ebx
     8c1:	e8 7a ff ff ff       	call   840 <parsepipe>
  while(peek(ps, es, "&")){
     8c6:	83 c4 10             	add    $0x10,%esp
struct cmd*
parseline(char **ps, char *es)
{
  struct cmd *cmd;

  cmd = parsepipe(ps, es);
     8c9:	89 c7                	mov    %eax,%edi
  while(peek(ps, es, "&")){
     8cb:	eb 1b                	jmp    8e8 <parseline+0x38>
     8cd:	8d 76 00             	lea    0x0(%esi),%esi
    gettoken(ps, es, 0, 0);
     8d0:	6a 00                	push   $0x0
     8d2:	6a 00                	push   $0x0
     8d4:	56                   	push   %esi
     8d5:	53                   	push   %ebx
     8d6:	e8 c5 fb ff ff       	call   4a0 <gettoken>
    cmd = backcmd(cmd);
     8db:	89 3c 24             	mov    %edi,(%esp)
     8de:	e8 8d fb ff ff       	call   470 <backcmd>
     8e3:	83 c4 10             	add    $0x10,%esp
     8e6:	89 c7                	mov    %eax,%edi
parseline(char **ps, char *es)
{
  struct cmd *cmd;

  cmd = parsepipe(ps, es);
  while(peek(ps, es, "&")){
     8e8:	83 ec 04             	sub    $0x4,%esp
     8eb:	68 32 12 00 00       	push   $0x1232
     8f0:	56                   	push   %esi
     8f1:	53                   	push   %ebx
     8f2:	e8 19 fd ff ff       	call   610 <peek>
     8f7:	83 c4 10             	add    $0x10,%esp
     8fa:	85 c0                	test   %eax,%eax
     8fc:	75 d2                	jne    8d0 <parseline+0x20>
    gettoken(ps, es, 0, 0);
    cmd = backcmd(cmd);
  }
  if(peek(ps, es, ";")){
     8fe:	83 ec 04             	sub    $0x4,%esp
     901:	68 2e 12 00 00       	push   $0x122e
     906:	56                   	push   %esi
     907:	53                   	push   %ebx
     908:	e8 03 fd ff ff       	call   610 <peek>
     90d:	83 c4 10             	add    $0x10,%esp
     910:	85 c0                	test   %eax,%eax
     912:	75 0c                	jne    920 <parseline+0x70>
    gettoken(ps, es, 0, 0);
    cmd = listcmd(cmd, parseline(ps, es));
  }
  return cmd;
}
     914:	8d 65 f4             	lea    -0xc(%ebp),%esp
     917:	89 f8                	mov    %edi,%eax
     919:	5b                   	pop    %ebx
     91a:	5e                   	pop    %esi
     91b:	5f                   	pop    %edi
     91c:	5d                   	pop    %ebp
     91d:	c3                   	ret    
     91e:	66 90                	xchg   %ax,%ax
  while(peek(ps, es, "&")){
    gettoken(ps, es, 0, 0);
    cmd = backcmd(cmd);
  }
  if(peek(ps, es, ";")){
    gettoken(ps, es, 0, 0);
     920:	6a 00                	push   $0x0
     922:	6a 00                	push   $0x0
     924:	56                   	push   %esi
     925:	53                   	push   %ebx
     926:	e8 75 fb ff ff       	call   4a0 <gettoken>
    cmd = listcmd(cmd, parseline(ps, es));
     92b:	58                   	pop    %eax
     92c:	5a                   	pop    %edx
     92d:	56                   	push   %esi
     92e:	53                   	push   %ebx
     92f:	e8 7c ff ff ff       	call   8b0 <parseline>
     934:	89 7d 08             	mov    %edi,0x8(%ebp)
     937:	89 45 0c             	mov    %eax,0xc(%ebp)
     93a:	83 c4 10             	add    $0x10,%esp
  }
  return cmd;
}
     93d:	8d 65 f4             	lea    -0xc(%ebp),%esp
     940:	5b                   	pop    %ebx
     941:	5e                   	pop    %esi
     942:	5f                   	pop    %edi
     943:	5d                   	pop    %ebp
    gettoken(ps, es, 0, 0);
    cmd = backcmd(cmd);
  }
  if(peek(ps, es, ";")){
    gettoken(ps, es, 0, 0);
    cmd = listcmd(cmd, parseline(ps, es));
     944:	e9 e7 fa ff ff       	jmp    430 <listcmd>
     949:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000950 <parseblock>:
  return cmd;
}

struct cmd*
parseblock(char **ps, char *es)
{
     950:	55                   	push   %ebp
     951:	89 e5                	mov    %esp,%ebp
     953:	57                   	push   %edi
     954:	56                   	push   %esi
     955:	53                   	push   %ebx
     956:	83 ec 10             	sub    $0x10,%esp
     959:	8b 5d 08             	mov    0x8(%ebp),%ebx
     95c:	8b 75 0c             	mov    0xc(%ebp),%esi
  struct cmd *cmd;

  if(!peek(ps, es, "("))
     95f:	68 14 12 00 00       	push   $0x1214
     964:	56                   	push   %esi
     965:	53                   	push   %ebx
     966:	e8 a5 fc ff ff       	call   610 <peek>
     96b:	83 c4 10             	add    $0x10,%esp
     96e:	85 c0                	test   %eax,%eax
     970:	74 4a                	je     9bc <parseblock+0x6c>
    panic("parseblock");
  gettoken(ps, es, 0, 0);
     972:	6a 00                	push   $0x0
     974:	6a 00                	push   $0x0
     976:	56                   	push   %esi
     977:	53                   	push   %ebx
     978:	e8 23 fb ff ff       	call   4a0 <gettoken>
  cmd = parseline(ps, es);
     97d:	58                   	pop    %eax
     97e:	5a                   	pop    %edx
     97f:	56                   	push   %esi
     980:	53                   	push   %ebx
     981:	e8 2a ff ff ff       	call   8b0 <parseline>
  if(!peek(ps, es, ")"))
     986:	83 c4 0c             	add    $0xc,%esp
  struct cmd *cmd;

  if(!peek(ps, es, "("))
    panic("parseblock");
  gettoken(ps, es, 0, 0);
  cmd = parseline(ps, es);
     989:	89 c7                	mov    %eax,%edi
  if(!peek(ps, es, ")"))
     98b:	68 50 12 00 00       	push   $0x1250
     990:	56                   	push   %esi
     991:	53                   	push   %ebx
     992:	e8 79 fc ff ff       	call   610 <peek>
     997:	83 c4 10             	add    $0x10,%esp
     99a:	85 c0                	test   %eax,%eax
     99c:	74 2b                	je     9c9 <parseblock+0x79>
    panic("syntax - missing )");
  gettoken(ps, es, 0, 0);
     99e:	6a 00                	push   $0x0
     9a0:	6a 00                	push   $0x0
     9a2:	56                   	push   %esi
     9a3:	53                   	push   %ebx
     9a4:	e8 f7 fa ff ff       	call   4a0 <gettoken>
  cmd = parseredirs(cmd, ps, es);
     9a9:	83 c4 0c             	add    $0xc,%esp
     9ac:	56                   	push   %esi
     9ad:	53                   	push   %ebx
     9ae:	57                   	push   %edi
     9af:	e8 cc fc ff ff       	call   680 <parseredirs>
  return cmd;
}
     9b4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     9b7:	5b                   	pop    %ebx
     9b8:	5e                   	pop    %esi
     9b9:	5f                   	pop    %edi
     9ba:	5d                   	pop    %ebp
     9bb:	c3                   	ret    
parseblock(char **ps, char *es)
{
  struct cmd *cmd;

  if(!peek(ps, es, "("))
    panic("parseblock");
     9bc:	83 ec 0c             	sub    $0xc,%esp
     9bf:	68 34 12 00 00       	push   $0x1234
     9c4:	e8 a7 f7 ff ff       	call   170 <panic>
  gettoken(ps, es, 0, 0);
  cmd = parseline(ps, es);
  if(!peek(ps, es, ")"))
    panic("syntax - missing )");
     9c9:	83 ec 0c             	sub    $0xc,%esp
     9cc:	68 3f 12 00 00       	push   $0x123f
     9d1:	e8 9a f7 ff ff       	call   170 <panic>
     9d6:	8d 76 00             	lea    0x0(%esi),%esi
     9d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000009e0 <nulterminate>:
}

// NUL-terminate all the counted strings.
struct cmd*
nulterminate(struct cmd *cmd)
{
     9e0:	55                   	push   %ebp
     9e1:	89 e5                	mov    %esp,%ebp
     9e3:	53                   	push   %ebx
     9e4:	83 ec 04             	sub    $0x4,%esp
     9e7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
     9ea:	85 db                	test   %ebx,%ebx
     9ec:	0f 84 96 00 00 00    	je     a88 <nulterminate+0xa8>
    return 0;

  switch(cmd->type){
     9f2:	83 3b 05             	cmpl   $0x5,(%ebx)
     9f5:	77 48                	ja     a3f <nulterminate+0x5f>
     9f7:	8b 03                	mov    (%ebx),%eax
     9f9:	ff 24 85 90 12 00 00 	jmp    *0x1290(,%eax,4)
    nulterminate(pcmd->right);
    break;

  case LIST:
    lcmd = (struct listcmd*)cmd;
    nulterminate(lcmd->left);
     a00:	83 ec 0c             	sub    $0xc,%esp
     a03:	ff 73 04             	pushl  0x4(%ebx)
     a06:	e8 d5 ff ff ff       	call   9e0 <nulterminate>
    nulterminate(lcmd->right);
     a0b:	58                   	pop    %eax
     a0c:	ff 73 08             	pushl  0x8(%ebx)
     a0f:	e8 cc ff ff ff       	call   9e0 <nulterminate>
    break;
     a14:	83 c4 10             	add    $0x10,%esp
     a17:	89 d8                	mov    %ebx,%eax
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
     a19:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     a1c:	c9                   	leave  
     a1d:	c3                   	ret    
     a1e:	66 90                	xchg   %ax,%ax
    return 0;

  switch(cmd->type){
  case EXEC:
    ecmd = (struct execcmd*)cmd;
    for(i=0; ecmd->argv[i]; i++)
     a20:	8b 4b 04             	mov    0x4(%ebx),%ecx
     a23:	8d 43 2c             	lea    0x2c(%ebx),%eax
     a26:	85 c9                	test   %ecx,%ecx
     a28:	74 15                	je     a3f <nulterminate+0x5f>
     a2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      *ecmd->eargv[i] = 0;
     a30:	8b 10                	mov    (%eax),%edx
     a32:	83 c0 04             	add    $0x4,%eax
     a35:	c6 02 00             	movb   $0x0,(%edx)
    return 0;

  switch(cmd->type){
  case EXEC:
    ecmd = (struct execcmd*)cmd;
    for(i=0; ecmd->argv[i]; i++)
     a38:	8b 50 d8             	mov    -0x28(%eax),%edx
     a3b:	85 d2                	test   %edx,%edx
     a3d:	75 f1                	jne    a30 <nulterminate+0x50>
  struct redircmd *rcmd;

  if(cmd == 0)
    return 0;

  switch(cmd->type){
     a3f:	89 d8                	mov    %ebx,%eax
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
     a41:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     a44:	c9                   	leave  
     a45:	c3                   	ret    
     a46:	8d 76 00             	lea    0x0(%esi),%esi
     a49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    nulterminate(lcmd->right);
    break;

  case BACK:
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
     a50:	83 ec 0c             	sub    $0xc,%esp
     a53:	ff 73 04             	pushl  0x4(%ebx)
     a56:	e8 85 ff ff ff       	call   9e0 <nulterminate>
    break;
     a5b:	89 d8                	mov    %ebx,%eax
     a5d:	83 c4 10             	add    $0x10,%esp
  }
  return cmd;
}
     a60:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     a63:	c9                   	leave  
     a64:	c3                   	ret    
     a65:	8d 76 00             	lea    0x0(%esi),%esi
      *ecmd->eargv[i] = 0;
    break;

  case REDIR:
    rcmd = (struct redircmd*)cmd;
    nulterminate(rcmd->cmd);
     a68:	83 ec 0c             	sub    $0xc,%esp
     a6b:	ff 73 04             	pushl  0x4(%ebx)
     a6e:	e8 6d ff ff ff       	call   9e0 <nulterminate>
    *rcmd->efile = 0;
     a73:	8b 43 0c             	mov    0xc(%ebx),%eax
    break;
     a76:	83 c4 10             	add    $0x10,%esp
    break;

  case REDIR:
    rcmd = (struct redircmd*)cmd;
    nulterminate(rcmd->cmd);
    *rcmd->efile = 0;
     a79:	c6 00 00             	movb   $0x0,(%eax)
    break;
     a7c:	89 d8                	mov    %ebx,%eax
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
     a7e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     a81:	c9                   	leave  
     a82:	c3                   	ret    
     a83:	90                   	nop
     a84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
    return 0;
     a88:	31 c0                	xor    %eax,%eax
     a8a:	eb 8d                	jmp    a19 <nulterminate+0x39>
     a8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000a90 <parsecmd>:
struct cmd *parseexec(char**, char*);
struct cmd *nulterminate(struct cmd*);

struct cmd*
parsecmd(char *s)
{
     a90:	55                   	push   %ebp
     a91:	89 e5                	mov    %esp,%ebp
     a93:	56                   	push   %esi
     a94:	53                   	push   %ebx
  char *es;
  struct cmd *cmd;

  es = s + strlen(s);
     a95:	8b 5d 08             	mov    0x8(%ebp),%ebx
     a98:	83 ec 0c             	sub    $0xc,%esp
     a9b:	53                   	push   %ebx
     a9c:	e8 df 00 00 00       	call   b80 <strlen>
  cmd = parseline(&s, es);
     aa1:	59                   	pop    %ecx
parsecmd(char *s)
{
  char *es;
  struct cmd *cmd;

  es = s + strlen(s);
     aa2:	01 c3                	add    %eax,%ebx
  cmd = parseline(&s, es);
     aa4:	8d 45 08             	lea    0x8(%ebp),%eax
     aa7:	5e                   	pop    %esi
     aa8:	53                   	push   %ebx
     aa9:	50                   	push   %eax
     aaa:	e8 01 fe ff ff       	call   8b0 <parseline>
     aaf:	89 c6                	mov    %eax,%esi
  peek(&s, es, "");
     ab1:	8d 45 08             	lea    0x8(%ebp),%eax
     ab4:	83 c4 0c             	add    $0xc,%esp
     ab7:	68 d9 11 00 00       	push   $0x11d9
     abc:	53                   	push   %ebx
     abd:	50                   	push   %eax
     abe:	e8 4d fb ff ff       	call   610 <peek>
  if(s != es){
     ac3:	8b 45 08             	mov    0x8(%ebp),%eax
     ac6:	83 c4 10             	add    $0x10,%esp
     ac9:	39 c3                	cmp    %eax,%ebx
     acb:	75 12                	jne    adf <parsecmd+0x4f>
    printf(2, "leftovers: %s\n", s);
    panic("syntax");
  }
  nulterminate(cmd);
     acd:	83 ec 0c             	sub    $0xc,%esp
     ad0:	56                   	push   %esi
     ad1:	e8 0a ff ff ff       	call   9e0 <nulterminate>
  return cmd;
}
     ad6:	8d 65 f8             	lea    -0x8(%ebp),%esp
     ad9:	89 f0                	mov    %esi,%eax
     adb:	5b                   	pop    %ebx
     adc:	5e                   	pop    %esi
     add:	5d                   	pop    %ebp
     ade:	c3                   	ret    

  es = s + strlen(s);
  cmd = parseline(&s, es);
  peek(&s, es, "");
  if(s != es){
    printf(2, "leftovers: %s\n", s);
     adf:	52                   	push   %edx
     ae0:	50                   	push   %eax
     ae1:	68 52 12 00 00       	push   $0x1252
     ae6:	6a 02                	push   $0x2
     ae8:	e8 b3 03 00 00       	call   ea0 <printf>
    panic("syntax");
     aed:	c7 04 24 16 12 00 00 	movl   $0x1216,(%esp)
     af4:	e8 77 f6 ff ff       	call   170 <panic>
     af9:	66 90                	xchg   %ax,%ax
     afb:	66 90                	xchg   %ax,%ax
     afd:	66 90                	xchg   %ax,%ax
     aff:	90                   	nop

00000b00 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
     b00:	55                   	push   %ebp
     b01:	89 e5                	mov    %esp,%ebp
     b03:	53                   	push   %ebx
     b04:	8b 45 08             	mov    0x8(%ebp),%eax
     b07:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     b0a:	89 c2                	mov    %eax,%edx
     b0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     b10:	83 c1 01             	add    $0x1,%ecx
     b13:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
     b17:	83 c2 01             	add    $0x1,%edx
     b1a:	84 db                	test   %bl,%bl
     b1c:	88 5a ff             	mov    %bl,-0x1(%edx)
     b1f:	75 ef                	jne    b10 <strcpy+0x10>
    ;
  return os;
}
     b21:	5b                   	pop    %ebx
     b22:	5d                   	pop    %ebp
     b23:	c3                   	ret    
     b24:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     b2a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000b30 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     b30:	55                   	push   %ebp
     b31:	89 e5                	mov    %esp,%ebp
     b33:	56                   	push   %esi
     b34:	53                   	push   %ebx
     b35:	8b 55 08             	mov    0x8(%ebp),%edx
     b38:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
     b3b:	0f b6 02             	movzbl (%edx),%eax
     b3e:	0f b6 19             	movzbl (%ecx),%ebx
     b41:	84 c0                	test   %al,%al
     b43:	75 1e                	jne    b63 <strcmp+0x33>
     b45:	eb 29                	jmp    b70 <strcmp+0x40>
     b47:	89 f6                	mov    %esi,%esi
     b49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
     b50:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
     b53:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
     b56:	8d 71 01             	lea    0x1(%ecx),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
     b59:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
     b5d:	84 c0                	test   %al,%al
     b5f:	74 0f                	je     b70 <strcmp+0x40>
     b61:	89 f1                	mov    %esi,%ecx
     b63:	38 d8                	cmp    %bl,%al
     b65:	74 e9                	je     b50 <strcmp+0x20>
    p++, q++;
  return (uchar)*p - (uchar)*q;
     b67:	29 d8                	sub    %ebx,%eax
}
     b69:	5b                   	pop    %ebx
     b6a:	5e                   	pop    %esi
     b6b:	5d                   	pop    %ebp
     b6c:	c3                   	ret    
     b6d:	8d 76 00             	lea    0x0(%esi),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
     b70:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
     b72:	29 d8                	sub    %ebx,%eax
}
     b74:	5b                   	pop    %ebx
     b75:	5e                   	pop    %esi
     b76:	5d                   	pop    %ebp
     b77:	c3                   	ret    
     b78:	90                   	nop
     b79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000b80 <strlen>:

uint
strlen(const char *s)
{
     b80:	55                   	push   %ebp
     b81:	89 e5                	mov    %esp,%ebp
     b83:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
     b86:	80 39 00             	cmpb   $0x0,(%ecx)
     b89:	74 12                	je     b9d <strlen+0x1d>
     b8b:	31 d2                	xor    %edx,%edx
     b8d:	8d 76 00             	lea    0x0(%esi),%esi
     b90:	83 c2 01             	add    $0x1,%edx
     b93:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
     b97:	89 d0                	mov    %edx,%eax
     b99:	75 f5                	jne    b90 <strlen+0x10>
    ;
  return n;
}
     b9b:	5d                   	pop    %ebp
     b9c:	c3                   	ret    
uint
strlen(const char *s)
{
  int n;

  for(n = 0; s[n]; n++)
     b9d:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
     b9f:	5d                   	pop    %ebp
     ba0:	c3                   	ret    
     ba1:	eb 0d                	jmp    bb0 <memset>
     ba3:	90                   	nop
     ba4:	90                   	nop
     ba5:	90                   	nop
     ba6:	90                   	nop
     ba7:	90                   	nop
     ba8:	90                   	nop
     ba9:	90                   	nop
     baa:	90                   	nop
     bab:	90                   	nop
     bac:	90                   	nop
     bad:	90                   	nop
     bae:	90                   	nop
     baf:	90                   	nop

00000bb0 <memset>:

void*
memset(void *dst, int c, uint n)
{
     bb0:	55                   	push   %ebp
     bb1:	89 e5                	mov    %esp,%ebp
     bb3:	57                   	push   %edi
     bb4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     bb7:	8b 4d 10             	mov    0x10(%ebp),%ecx
     bba:	8b 45 0c             	mov    0xc(%ebp),%eax
     bbd:	89 d7                	mov    %edx,%edi
     bbf:	fc                   	cld    
     bc0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     bc2:	89 d0                	mov    %edx,%eax
     bc4:	5f                   	pop    %edi
     bc5:	5d                   	pop    %ebp
     bc6:	c3                   	ret    
     bc7:	89 f6                	mov    %esi,%esi
     bc9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000bd0 <strchr>:

char*
strchr(const char *s, char c)
{
     bd0:	55                   	push   %ebp
     bd1:	89 e5                	mov    %esp,%ebp
     bd3:	53                   	push   %ebx
     bd4:	8b 45 08             	mov    0x8(%ebp),%eax
     bd7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
     bda:	0f b6 10             	movzbl (%eax),%edx
     bdd:	84 d2                	test   %dl,%dl
     bdf:	74 1d                	je     bfe <strchr+0x2e>
    if(*s == c)
     be1:	38 d3                	cmp    %dl,%bl
     be3:	89 d9                	mov    %ebx,%ecx
     be5:	75 0d                	jne    bf4 <strchr+0x24>
     be7:	eb 17                	jmp    c00 <strchr+0x30>
     be9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     bf0:	38 ca                	cmp    %cl,%dl
     bf2:	74 0c                	je     c00 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
     bf4:	83 c0 01             	add    $0x1,%eax
     bf7:	0f b6 10             	movzbl (%eax),%edx
     bfa:	84 d2                	test   %dl,%dl
     bfc:	75 f2                	jne    bf0 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
     bfe:	31 c0                	xor    %eax,%eax
}
     c00:	5b                   	pop    %ebx
     c01:	5d                   	pop    %ebp
     c02:	c3                   	ret    
     c03:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     c09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000c10 <gets>:

char*
gets(char *buf, int max)
{
     c10:	55                   	push   %ebp
     c11:	89 e5                	mov    %esp,%ebp
     c13:	57                   	push   %edi
     c14:	56                   	push   %esi
     c15:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     c16:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
     c18:	8d 7d e7             	lea    -0x19(%ebp),%edi
  return 0;
}

char*
gets(char *buf, int max)
{
     c1b:	83 ec 1c             	sub    $0x1c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     c1e:	eb 29                	jmp    c49 <gets+0x39>
    cc = read(0, &c, 1);
     c20:	83 ec 04             	sub    $0x4,%esp
     c23:	6a 01                	push   $0x1
     c25:	57                   	push   %edi
     c26:	6a 00                	push   $0x0
     c28:	e8 2d 01 00 00       	call   d5a <read>
    if(cc < 1)
     c2d:	83 c4 10             	add    $0x10,%esp
     c30:	85 c0                	test   %eax,%eax
     c32:	7e 1d                	jle    c51 <gets+0x41>
      break;
    buf[i++] = c;
     c34:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
     c38:	8b 55 08             	mov    0x8(%ebp),%edx
     c3b:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
     c3d:	3c 0a                	cmp    $0xa,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
     c3f:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
     c43:	74 1b                	je     c60 <gets+0x50>
     c45:	3c 0d                	cmp    $0xd,%al
     c47:	74 17                	je     c60 <gets+0x50>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     c49:	8d 5e 01             	lea    0x1(%esi),%ebx
     c4c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     c4f:	7c cf                	jl     c20 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
     c51:	8b 45 08             	mov    0x8(%ebp),%eax
     c54:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
     c58:	8d 65 f4             	lea    -0xc(%ebp),%esp
     c5b:	5b                   	pop    %ebx
     c5c:	5e                   	pop    %esi
     c5d:	5f                   	pop    %edi
     c5e:	5d                   	pop    %ebp
     c5f:	c3                   	ret    
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
     c60:	8b 45 08             	mov    0x8(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     c63:	89 de                	mov    %ebx,%esi
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
     c65:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
     c69:	8d 65 f4             	lea    -0xc(%ebp),%esp
     c6c:	5b                   	pop    %ebx
     c6d:	5e                   	pop    %esi
     c6e:	5f                   	pop    %edi
     c6f:	5d                   	pop    %ebp
     c70:	c3                   	ret    
     c71:	eb 0d                	jmp    c80 <stat>
     c73:	90                   	nop
     c74:	90                   	nop
     c75:	90                   	nop
     c76:	90                   	nop
     c77:	90                   	nop
     c78:	90                   	nop
     c79:	90                   	nop
     c7a:	90                   	nop
     c7b:	90                   	nop
     c7c:	90                   	nop
     c7d:	90                   	nop
     c7e:	90                   	nop
     c7f:	90                   	nop

00000c80 <stat>:

int
stat(const char *n, struct stat *st)
{
     c80:	55                   	push   %ebp
     c81:	89 e5                	mov    %esp,%ebp
     c83:	56                   	push   %esi
     c84:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     c85:	83 ec 08             	sub    $0x8,%esp
     c88:	6a 00                	push   $0x0
     c8a:	ff 75 08             	pushl  0x8(%ebp)
     c8d:	e8 f0 00 00 00       	call   d82 <open>
  if(fd < 0)
     c92:	83 c4 10             	add    $0x10,%esp
     c95:	85 c0                	test   %eax,%eax
     c97:	78 27                	js     cc0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
     c99:	83 ec 08             	sub    $0x8,%esp
     c9c:	ff 75 0c             	pushl  0xc(%ebp)
     c9f:	89 c3                	mov    %eax,%ebx
     ca1:	50                   	push   %eax
     ca2:	e8 f3 00 00 00       	call   d9a <fstat>
     ca7:	89 c6                	mov    %eax,%esi
  close(fd);
     ca9:	89 1c 24             	mov    %ebx,(%esp)
     cac:	e8 b9 00 00 00       	call   d6a <close>
  return r;
     cb1:	83 c4 10             	add    $0x10,%esp
     cb4:	89 f0                	mov    %esi,%eax
}
     cb6:	8d 65 f8             	lea    -0x8(%ebp),%esp
     cb9:	5b                   	pop    %ebx
     cba:	5e                   	pop    %esi
     cbb:	5d                   	pop    %ebp
     cbc:	c3                   	ret    
     cbd:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
     cc0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     cc5:	eb ef                	jmp    cb6 <stat+0x36>
     cc7:	89 f6                	mov    %esi,%esi
     cc9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000cd0 <atoi>:
  return r;
}

int
atoi(const char *s)
{
     cd0:	55                   	push   %ebp
     cd1:	89 e5                	mov    %esp,%ebp
     cd3:	53                   	push   %ebx
     cd4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     cd7:	0f be 11             	movsbl (%ecx),%edx
     cda:	8d 42 d0             	lea    -0x30(%edx),%eax
     cdd:	3c 09                	cmp    $0x9,%al
     cdf:	b8 00 00 00 00       	mov    $0x0,%eax
     ce4:	77 1f                	ja     d05 <atoi+0x35>
     ce6:	8d 76 00             	lea    0x0(%esi),%esi
     ce9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
     cf0:	8d 04 80             	lea    (%eax,%eax,4),%eax
     cf3:	83 c1 01             	add    $0x1,%ecx
     cf6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     cfa:	0f be 11             	movsbl (%ecx),%edx
     cfd:	8d 5a d0             	lea    -0x30(%edx),%ebx
     d00:	80 fb 09             	cmp    $0x9,%bl
     d03:	76 eb                	jbe    cf0 <atoi+0x20>
    n = n*10 + *s++ - '0';
  return n;
}
     d05:	5b                   	pop    %ebx
     d06:	5d                   	pop    %ebp
     d07:	c3                   	ret    
     d08:	90                   	nop
     d09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000d10 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
     d10:	55                   	push   %ebp
     d11:	89 e5                	mov    %esp,%ebp
     d13:	56                   	push   %esi
     d14:	53                   	push   %ebx
     d15:	8b 5d 10             	mov    0x10(%ebp),%ebx
     d18:	8b 45 08             	mov    0x8(%ebp),%eax
     d1b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     d1e:	85 db                	test   %ebx,%ebx
     d20:	7e 14                	jle    d36 <memmove+0x26>
     d22:	31 d2                	xor    %edx,%edx
     d24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
     d28:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
     d2c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
     d2f:	83 c2 01             	add    $0x1,%edx
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     d32:	39 da                	cmp    %ebx,%edx
     d34:	75 f2                	jne    d28 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
     d36:	5b                   	pop    %ebx
     d37:	5e                   	pop    %esi
     d38:	5d                   	pop    %ebp
     d39:	c3                   	ret    

00000d3a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
     d3a:	b8 01 00 00 00       	mov    $0x1,%eax
     d3f:	cd 40                	int    $0x40
     d41:	c3                   	ret    

00000d42 <exit>:
SYSCALL(exit)
     d42:	b8 02 00 00 00       	mov    $0x2,%eax
     d47:	cd 40                	int    $0x40
     d49:	c3                   	ret    

00000d4a <wait>:
SYSCALL(wait)
     d4a:	b8 03 00 00 00       	mov    $0x3,%eax
     d4f:	cd 40                	int    $0x40
     d51:	c3                   	ret    

00000d52 <pipe>:
SYSCALL(pipe)
     d52:	b8 04 00 00 00       	mov    $0x4,%eax
     d57:	cd 40                	int    $0x40
     d59:	c3                   	ret    

00000d5a <read>:
SYSCALL(read)
     d5a:	b8 05 00 00 00       	mov    $0x5,%eax
     d5f:	cd 40                	int    $0x40
     d61:	c3                   	ret    

00000d62 <write>:
SYSCALL(write)
     d62:	b8 10 00 00 00       	mov    $0x10,%eax
     d67:	cd 40                	int    $0x40
     d69:	c3                   	ret    

00000d6a <close>:
SYSCALL(close)
     d6a:	b8 15 00 00 00       	mov    $0x15,%eax
     d6f:	cd 40                	int    $0x40
     d71:	c3                   	ret    

00000d72 <kill>:
SYSCALL(kill)
     d72:	b8 06 00 00 00       	mov    $0x6,%eax
     d77:	cd 40                	int    $0x40
     d79:	c3                   	ret    

00000d7a <exec>:
SYSCALL(exec)
     d7a:	b8 07 00 00 00       	mov    $0x7,%eax
     d7f:	cd 40                	int    $0x40
     d81:	c3                   	ret    

00000d82 <open>:
SYSCALL(open)
     d82:	b8 0f 00 00 00       	mov    $0xf,%eax
     d87:	cd 40                	int    $0x40
     d89:	c3                   	ret    

00000d8a <mknod>:
SYSCALL(mknod)
     d8a:	b8 11 00 00 00       	mov    $0x11,%eax
     d8f:	cd 40                	int    $0x40
     d91:	c3                   	ret    

00000d92 <unlink>:
SYSCALL(unlink)
     d92:	b8 12 00 00 00       	mov    $0x12,%eax
     d97:	cd 40                	int    $0x40
     d99:	c3                   	ret    

00000d9a <fstat>:
SYSCALL(fstat)
     d9a:	b8 08 00 00 00       	mov    $0x8,%eax
     d9f:	cd 40                	int    $0x40
     da1:	c3                   	ret    

00000da2 <link>:
SYSCALL(link)
     da2:	b8 13 00 00 00       	mov    $0x13,%eax
     da7:	cd 40                	int    $0x40
     da9:	c3                   	ret    

00000daa <mkdir>:
SYSCALL(mkdir)
     daa:	b8 14 00 00 00       	mov    $0x14,%eax
     daf:	cd 40                	int    $0x40
     db1:	c3                   	ret    

00000db2 <chdir>:
SYSCALL(chdir)
     db2:	b8 09 00 00 00       	mov    $0x9,%eax
     db7:	cd 40                	int    $0x40
     db9:	c3                   	ret    

00000dba <dup>:
SYSCALL(dup)
     dba:	b8 0a 00 00 00       	mov    $0xa,%eax
     dbf:	cd 40                	int    $0x40
     dc1:	c3                   	ret    

00000dc2 <getpid>:
SYSCALL(getpid)
     dc2:	b8 0b 00 00 00       	mov    $0xb,%eax
     dc7:	cd 40                	int    $0x40
     dc9:	c3                   	ret    

00000dca <sbrk>:
SYSCALL(sbrk)
     dca:	b8 0c 00 00 00       	mov    $0xc,%eax
     dcf:	cd 40                	int    $0x40
     dd1:	c3                   	ret    

00000dd2 <sleep>:
SYSCALL(sleep)
     dd2:	b8 0d 00 00 00       	mov    $0xd,%eax
     dd7:	cd 40                	int    $0x40
     dd9:	c3                   	ret    

00000dda <uptime>:
SYSCALL(uptime)
     dda:	b8 0e 00 00 00       	mov    $0xe,%eax
     ddf:	cd 40                	int    $0x40
     de1:	c3                   	ret    

00000de2 <exitStat>:
SYSCALL(exitStat)
     de2:	b8 16 00 00 00       	mov    $0x16,%eax
     de7:	cd 40                	int    $0x40
     de9:	c3                   	ret    

00000dea <waitpid>:
SYSCALL(waitpid)
     dea:	b8 17 00 00 00       	mov    $0x17,%eax
     def:	cd 40                	int    $0x40
     df1:	c3                   	ret    
     df2:	66 90                	xchg   %ax,%ax
     df4:	66 90                	xchg   %ax,%ax
     df6:	66 90                	xchg   %ax,%ax
     df8:	66 90                	xchg   %ax,%ax
     dfa:	66 90                	xchg   %ax,%ax
     dfc:	66 90                	xchg   %ax,%ax
     dfe:	66 90                	xchg   %ax,%ax

00000e00 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
     e00:	55                   	push   %ebp
     e01:	89 e5                	mov    %esp,%ebp
     e03:	57                   	push   %edi
     e04:	56                   	push   %esi
     e05:	53                   	push   %ebx
     e06:	89 c6                	mov    %eax,%esi
     e08:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
     e0b:	8b 5d 08             	mov    0x8(%ebp),%ebx
     e0e:	85 db                	test   %ebx,%ebx
     e10:	74 7e                	je     e90 <printint+0x90>
     e12:	89 d0                	mov    %edx,%eax
     e14:	c1 e8 1f             	shr    $0x1f,%eax
     e17:	84 c0                	test   %al,%al
     e19:	74 75                	je     e90 <printint+0x90>
    neg = 1;
    x = -xx;
     e1b:	89 d0                	mov    %edx,%eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
     e1d:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
     e24:	f7 d8                	neg    %eax
     e26:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
     e29:	31 ff                	xor    %edi,%edi
     e2b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
     e2e:	89 ce                	mov    %ecx,%esi
     e30:	eb 08                	jmp    e3a <printint+0x3a>
     e32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
     e38:	89 cf                	mov    %ecx,%edi
     e3a:	31 d2                	xor    %edx,%edx
     e3c:	8d 4f 01             	lea    0x1(%edi),%ecx
     e3f:	f7 f6                	div    %esi
     e41:	0f b6 92 b0 12 00 00 	movzbl 0x12b0(%edx),%edx
  }while((x /= base) != 0);
     e48:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
     e4a:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
     e4d:	75 e9                	jne    e38 <printint+0x38>
  if(neg)
     e4f:	8b 45 c4             	mov    -0x3c(%ebp),%eax
     e52:	8b 75 c0             	mov    -0x40(%ebp),%esi
     e55:	85 c0                	test   %eax,%eax
     e57:	74 08                	je     e61 <printint+0x61>
    buf[i++] = '-';
     e59:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
     e5e:	8d 4f 02             	lea    0x2(%edi),%ecx
     e61:	8d 7c 0d d7          	lea    -0x29(%ebp,%ecx,1),%edi
     e65:	8d 76 00             	lea    0x0(%esi),%esi
     e68:	0f b6 07             	movzbl (%edi),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
     e6b:	83 ec 04             	sub    $0x4,%esp
     e6e:	83 ef 01             	sub    $0x1,%edi
     e71:	6a 01                	push   $0x1
     e73:	53                   	push   %ebx
     e74:	56                   	push   %esi
     e75:	88 45 d7             	mov    %al,-0x29(%ebp)
     e78:	e8 e5 fe ff ff       	call   d62 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
     e7d:	83 c4 10             	add    $0x10,%esp
     e80:	39 df                	cmp    %ebx,%edi
     e82:	75 e4                	jne    e68 <printint+0x68>
    putc(fd, buf[i]);
}
     e84:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e87:	5b                   	pop    %ebx
     e88:	5e                   	pop    %esi
     e89:	5f                   	pop    %edi
     e8a:	5d                   	pop    %ebp
     e8b:	c3                   	ret    
     e8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
     e90:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
     e92:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
     e99:	eb 8b                	jmp    e26 <printint+0x26>
     e9b:	90                   	nop
     e9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000ea0 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
     ea0:	55                   	push   %ebp
     ea1:	89 e5                	mov    %esp,%ebp
     ea3:	57                   	push   %edi
     ea4:	56                   	push   %esi
     ea5:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     ea6:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
     ea9:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     eac:	8b 75 0c             	mov    0xc(%ebp),%esi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
     eaf:	8b 7d 08             	mov    0x8(%ebp),%edi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     eb2:	89 45 d0             	mov    %eax,-0x30(%ebp)
     eb5:	0f b6 1e             	movzbl (%esi),%ebx
     eb8:	83 c6 01             	add    $0x1,%esi
     ebb:	84 db                	test   %bl,%bl
     ebd:	0f 84 b0 00 00 00    	je     f73 <printf+0xd3>
     ec3:	31 d2                	xor    %edx,%edx
     ec5:	eb 39                	jmp    f00 <printf+0x60>
     ec7:	89 f6                	mov    %esi,%esi
     ec9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
     ed0:	83 f8 25             	cmp    $0x25,%eax
     ed3:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
     ed6:	ba 25 00 00 00       	mov    $0x25,%edx
  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
     edb:	74 18                	je     ef5 <printf+0x55>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
     edd:	8d 45 e2             	lea    -0x1e(%ebp),%eax
     ee0:	83 ec 04             	sub    $0x4,%esp
     ee3:	88 5d e2             	mov    %bl,-0x1e(%ebp)
     ee6:	6a 01                	push   $0x1
     ee8:	50                   	push   %eax
     ee9:	57                   	push   %edi
     eea:	e8 73 fe ff ff       	call   d62 <write>
     eef:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     ef2:	83 c4 10             	add    $0x10,%esp
     ef5:	83 c6 01             	add    $0x1,%esi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     ef8:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
     efc:	84 db                	test   %bl,%bl
     efe:	74 73                	je     f73 <printf+0xd3>
    c = fmt[i] & 0xff;
    if(state == 0){
     f00:	85 d2                	test   %edx,%edx
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
     f02:	0f be cb             	movsbl %bl,%ecx
     f05:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
     f08:	74 c6                	je     ed0 <printf+0x30>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
     f0a:	83 fa 25             	cmp    $0x25,%edx
     f0d:	75 e6                	jne    ef5 <printf+0x55>
      if(c == 'd'){
     f0f:	83 f8 64             	cmp    $0x64,%eax
     f12:	0f 84 f8 00 00 00    	je     1010 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
     f18:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
     f1e:	83 f9 70             	cmp    $0x70,%ecx
     f21:	74 5d                	je     f80 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
     f23:	83 f8 73             	cmp    $0x73,%eax
     f26:	0f 84 84 00 00 00    	je     fb0 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
     f2c:	83 f8 63             	cmp    $0x63,%eax
     f2f:	0f 84 ea 00 00 00    	je     101f <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
     f35:	83 f8 25             	cmp    $0x25,%eax
     f38:	0f 84 c2 00 00 00    	je     1000 <printf+0x160>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
     f3e:	8d 45 e7             	lea    -0x19(%ebp),%eax
     f41:	83 ec 04             	sub    $0x4,%esp
     f44:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
     f48:	6a 01                	push   $0x1
     f4a:	50                   	push   %eax
     f4b:	57                   	push   %edi
     f4c:	e8 11 fe ff ff       	call   d62 <write>
     f51:	83 c4 0c             	add    $0xc,%esp
     f54:	8d 45 e6             	lea    -0x1a(%ebp),%eax
     f57:	88 5d e6             	mov    %bl,-0x1a(%ebp)
     f5a:	6a 01                	push   $0x1
     f5c:	50                   	push   %eax
     f5d:	57                   	push   %edi
     f5e:	83 c6 01             	add    $0x1,%esi
     f61:	e8 fc fd ff ff       	call   d62 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     f66:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
     f6a:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
     f6d:	31 d2                	xor    %edx,%edx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     f6f:	84 db                	test   %bl,%bl
     f71:	75 8d                	jne    f00 <printf+0x60>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
     f73:	8d 65 f4             	lea    -0xc(%ebp),%esp
     f76:	5b                   	pop    %ebx
     f77:	5e                   	pop    %esi
     f78:	5f                   	pop    %edi
     f79:	5d                   	pop    %ebp
     f7a:	c3                   	ret    
     f7b:	90                   	nop
     f7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
     f80:	83 ec 0c             	sub    $0xc,%esp
     f83:	b9 10 00 00 00       	mov    $0x10,%ecx
     f88:	6a 00                	push   $0x0
     f8a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
     f8d:	89 f8                	mov    %edi,%eax
     f8f:	8b 13                	mov    (%ebx),%edx
     f91:	e8 6a fe ff ff       	call   e00 <printint>
        ap++;
     f96:	89 d8                	mov    %ebx,%eax
     f98:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
     f9b:	31 d2                	xor    %edx,%edx
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
     f9d:	83 c0 04             	add    $0x4,%eax
     fa0:	89 45 d0             	mov    %eax,-0x30(%ebp)
     fa3:	e9 4d ff ff ff       	jmp    ef5 <printf+0x55>
     fa8:	90                   	nop
     fa9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
     fb0:	8b 45 d0             	mov    -0x30(%ebp),%eax
     fb3:	8b 18                	mov    (%eax),%ebx
        ap++;
     fb5:	83 c0 04             	add    $0x4,%eax
     fb8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
          s = "(null)";
     fbb:	b8 a8 12 00 00       	mov    $0x12a8,%eax
     fc0:	85 db                	test   %ebx,%ebx
     fc2:	0f 44 d8             	cmove  %eax,%ebx
        while(*s != 0){
     fc5:	0f b6 03             	movzbl (%ebx),%eax
     fc8:	84 c0                	test   %al,%al
     fca:	74 23                	je     fef <printf+0x14f>
     fcc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     fd0:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
     fd3:	8d 45 e3             	lea    -0x1d(%ebp),%eax
     fd6:	83 ec 04             	sub    $0x4,%esp
     fd9:	6a 01                	push   $0x1
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
     fdb:	83 c3 01             	add    $0x1,%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
     fde:	50                   	push   %eax
     fdf:	57                   	push   %edi
     fe0:	e8 7d fd ff ff       	call   d62 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
     fe5:	0f b6 03             	movzbl (%ebx),%eax
     fe8:	83 c4 10             	add    $0x10,%esp
     feb:	84 c0                	test   %al,%al
     fed:	75 e1                	jne    fd0 <printf+0x130>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
     fef:	31 d2                	xor    %edx,%edx
     ff1:	e9 ff fe ff ff       	jmp    ef5 <printf+0x55>
     ff6:	8d 76 00             	lea    0x0(%esi),%esi
     ff9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1000:	83 ec 04             	sub    $0x4,%esp
    1003:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    1006:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    1009:	6a 01                	push   $0x1
    100b:	e9 4c ff ff ff       	jmp    f5c <printf+0xbc>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
    1010:	83 ec 0c             	sub    $0xc,%esp
    1013:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1018:	6a 01                	push   $0x1
    101a:	e9 6b ff ff ff       	jmp    f8a <printf+0xea>
    101f:	8b 5d d0             	mov    -0x30(%ebp),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    1022:	83 ec 04             	sub    $0x4,%esp
    1025:	8b 03                	mov    (%ebx),%eax
    1027:	6a 01                	push   $0x1
    1029:	88 45 e4             	mov    %al,-0x1c(%ebp)
    102c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    102f:	50                   	push   %eax
    1030:	57                   	push   %edi
    1031:	e8 2c fd ff ff       	call   d62 <write>
    1036:	e9 5b ff ff ff       	jmp    f96 <printf+0xf6>
    103b:	66 90                	xchg   %ax,%ax
    103d:	66 90                	xchg   %ax,%ax
    103f:	90                   	nop

00001040 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1040:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1041:	a1 e4 18 00 00       	mov    0x18e4,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
    1046:	89 e5                	mov    %esp,%ebp
    1048:	57                   	push   %edi
    1049:	56                   	push   %esi
    104a:	53                   	push   %ebx
    104b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    104e:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
    1050:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1053:	39 c8                	cmp    %ecx,%eax
    1055:	73 19                	jae    1070 <free+0x30>
    1057:	89 f6                	mov    %esi,%esi
    1059:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    1060:	39 d1                	cmp    %edx,%ecx
    1062:	72 1c                	jb     1080 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1064:	39 d0                	cmp    %edx,%eax
    1066:	73 18                	jae    1080 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
    1068:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    106a:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    106c:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    106e:	72 f0                	jb     1060 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1070:	39 d0                	cmp    %edx,%eax
    1072:	72 f4                	jb     1068 <free+0x28>
    1074:	39 d1                	cmp    %edx,%ecx
    1076:	73 f0                	jae    1068 <free+0x28>
    1078:	90                   	nop
    1079:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
    1080:	8b 73 fc             	mov    -0x4(%ebx),%esi
    1083:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    1086:	39 d7                	cmp    %edx,%edi
    1088:	74 19                	je     10a3 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    108a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    108d:	8b 50 04             	mov    0x4(%eax),%edx
    1090:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1093:	39 f1                	cmp    %esi,%ecx
    1095:	74 23                	je     10ba <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    1097:	89 08                	mov    %ecx,(%eax)
  freep = p;
    1099:	a3 e4 18 00 00       	mov    %eax,0x18e4
}
    109e:	5b                   	pop    %ebx
    109f:	5e                   	pop    %esi
    10a0:	5f                   	pop    %edi
    10a1:	5d                   	pop    %ebp
    10a2:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
    10a3:	03 72 04             	add    0x4(%edx),%esi
    10a6:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    10a9:	8b 10                	mov    (%eax),%edx
    10ab:	8b 12                	mov    (%edx),%edx
    10ad:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    10b0:	8b 50 04             	mov    0x4(%eax),%edx
    10b3:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    10b6:	39 f1                	cmp    %esi,%ecx
    10b8:	75 dd                	jne    1097 <free+0x57>
    p->s.size += bp->s.size;
    10ba:	03 53 fc             	add    -0x4(%ebx),%edx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
    10bd:	a3 e4 18 00 00       	mov    %eax,0x18e4
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
    10c2:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    10c5:	8b 53 f8             	mov    -0x8(%ebx),%edx
    10c8:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
    10ca:	5b                   	pop    %ebx
    10cb:	5e                   	pop    %esi
    10cc:	5f                   	pop    %edi
    10cd:	5d                   	pop    %ebp
    10ce:	c3                   	ret    
    10cf:	90                   	nop

000010d0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    10d0:	55                   	push   %ebp
    10d1:	89 e5                	mov    %esp,%ebp
    10d3:	57                   	push   %edi
    10d4:	56                   	push   %esi
    10d5:	53                   	push   %ebx
    10d6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    10d9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    10dc:	8b 15 e4 18 00 00    	mov    0x18e4,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    10e2:	8d 78 07             	lea    0x7(%eax),%edi
    10e5:	c1 ef 03             	shr    $0x3,%edi
    10e8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    10eb:	85 d2                	test   %edx,%edx
    10ed:	0f 84 a3 00 00 00    	je     1196 <malloc+0xc6>
    10f3:	8b 02                	mov    (%edx),%eax
    10f5:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    10f8:	39 cf                	cmp    %ecx,%edi
    10fa:	76 74                	jbe    1170 <malloc+0xa0>
    10fc:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    1102:	be 00 10 00 00       	mov    $0x1000,%esi
    1107:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
    110e:	0f 43 f7             	cmovae %edi,%esi
    1111:	ba 00 80 00 00       	mov    $0x8000,%edx
    1116:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
    111c:	0f 46 da             	cmovbe %edx,%ebx
    111f:	eb 10                	jmp    1131 <malloc+0x61>
    1121:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1128:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    112a:	8b 48 04             	mov    0x4(%eax),%ecx
    112d:	39 cf                	cmp    %ecx,%edi
    112f:	76 3f                	jbe    1170 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1131:	39 05 e4 18 00 00    	cmp    %eax,0x18e4
    1137:	89 c2                	mov    %eax,%edx
    1139:	75 ed                	jne    1128 <malloc+0x58>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
    113b:	83 ec 0c             	sub    $0xc,%esp
    113e:	53                   	push   %ebx
    113f:	e8 86 fc ff ff       	call   dca <sbrk>
  if(p == (char*)-1)
    1144:	83 c4 10             	add    $0x10,%esp
    1147:	83 f8 ff             	cmp    $0xffffffff,%eax
    114a:	74 1c                	je     1168 <malloc+0x98>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
    114c:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
    114f:	83 ec 0c             	sub    $0xc,%esp
    1152:	83 c0 08             	add    $0x8,%eax
    1155:	50                   	push   %eax
    1156:	e8 e5 fe ff ff       	call   1040 <free>
  return freep;
    115b:	8b 15 e4 18 00 00    	mov    0x18e4,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
    1161:	83 c4 10             	add    $0x10,%esp
    1164:	85 d2                	test   %edx,%edx
    1166:	75 c0                	jne    1128 <malloc+0x58>
        return 0;
    1168:	31 c0                	xor    %eax,%eax
    116a:	eb 1c                	jmp    1188 <malloc+0xb8>
    116c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
    1170:	39 cf                	cmp    %ecx,%edi
    1172:	74 1c                	je     1190 <malloc+0xc0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
    1174:	29 f9                	sub    %edi,%ecx
    1176:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    1179:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    117c:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
    117f:	89 15 e4 18 00 00    	mov    %edx,0x18e4
      return (void*)(p + 1);
    1185:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
    1188:	8d 65 f4             	lea    -0xc(%ebp),%esp
    118b:	5b                   	pop    %ebx
    118c:	5e                   	pop    %esi
    118d:	5f                   	pop    %edi
    118e:	5d                   	pop    %ebp
    118f:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
    1190:	8b 08                	mov    (%eax),%ecx
    1192:	89 0a                	mov    %ecx,(%edx)
    1194:	eb e9                	jmp    117f <malloc+0xaf>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    1196:	c7 05 e4 18 00 00 e8 	movl   $0x18e8,0x18e4
    119d:	18 00 00 
    11a0:	c7 05 e8 18 00 00 e8 	movl   $0x18e8,0x18e8
    11a7:	18 00 00 
    base.s.size = 0;
    11aa:	b8 e8 18 00 00       	mov    $0x18e8,%eax
    11af:	c7 05 ec 18 00 00 00 	movl   $0x0,0x18ec
    11b6:	00 00 00 
    11b9:	e9 3e ff ff ff       	jmp    10fc <malloc+0x2c>
