
_usertests:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return randstate;
}

int
main(int argc, char *argv[])
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	pushl  -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	51                   	push   %ecx
       e:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "usertests starting\n");
      11:	68 ee 4d 00 00       	push   $0x4dee
      16:	6a 01                	push   $0x1
      18:	e8 c3 3a 00 00       	call   3ae0 <printf>

  if(open("usertests.ran", 0) >= 0){
      1d:	5a                   	pop    %edx
      1e:	59                   	pop    %ecx
      1f:	6a 00                	push   $0x0
      21:	68 02 4e 00 00       	push   $0x4e02
      26:	e8 97 39 00 00       	call   39c2 <open>
      2b:	83 c4 10             	add    $0x10,%esp
      2e:	85 c0                	test   %eax,%eax
      30:	78 14                	js     46 <main+0x46>
    printf(1, "already ran user tests -- rebuild fs.img\n");
      32:	83 ec 08             	sub    $0x8,%esp
      35:	68 6c 55 00 00       	push   $0x556c
      3a:	6a 01                	push   $0x1
      3c:	e8 9f 3a 00 00       	call   3ae0 <printf>
    exit();
      41:	e8 3c 39 00 00       	call   3982 <exit>
  }
  close(open("usertests.ran", O_CREATE));
      46:	50                   	push   %eax
      47:	50                   	push   %eax
      48:	68 00 02 00 00       	push   $0x200
      4d:	68 02 4e 00 00       	push   $0x4e02
      52:	e8 6b 39 00 00       	call   39c2 <open>
      57:	89 04 24             	mov    %eax,(%esp)
      5a:	e8 4b 39 00 00       	call   39aa <close>

  argptest();
      5f:	e8 4c 36 00 00       	call   36b0 <argptest>
  createdelete();
      64:	e8 d7 11 00 00       	call   1240 <createdelete>
  linkunlink();
      69:	e8 c2 1a 00 00       	call   1b30 <linkunlink>
  concreate();
      6e:	e8 9d 17 00 00       	call   1810 <concreate>
  fourfiles();
      73:	e8 b8 0f 00 00       	call   1030 <fourfiles>
  sharedfd();
      78:	e8 f3 0d 00 00       	call   e70 <sharedfd>

  bigargtest();
      7d:	e8 ae 32 00 00       	call   3330 <bigargtest>
  bigwrite();
      82:	e8 c9 23 00 00       	call   2450 <bigwrite>
  bigargtest();
      87:	e8 a4 32 00 00       	call   3330 <bigargtest>
  bsstest();
      8c:	e8 2f 32 00 00       	call   32c0 <bsstest>
  sbrktest();
      91:	e8 1a 2d 00 00       	call   2db0 <sbrktest>
  validatetest();
      96:	e8 65 31 00 00       	call   3200 <validatetest>

  opentest();
      9b:	e8 60 03 00 00       	call   400 <opentest>
  writetest();
      a0:	e8 eb 03 00 00       	call   490 <writetest>
  writetest1();
      a5:	e8 c6 05 00 00       	call   670 <writetest1>
  createtest();
      aa:	e8 91 07 00 00       	call   840 <createtest>

  openiputtest();
      af:	e8 4c 02 00 00       	call   300 <openiputtest>
  exitiputtest();
      b4:	e8 47 01 00 00       	call   200 <exitiputtest>
  iputtest();
      b9:	e8 62 00 00 00       	call   120 <iputtest>

  mem();
      be:	e8 dd 0c 00 00       	call   da0 <mem>
  pipe1();
      c3:	e8 58 09 00 00       	call   a20 <pipe1>
  preempt();
      c8:	e8 f3 0a 00 00       	call   bc0 <preempt>
  exitwait();
      cd:	e8 3e 0c 00 00       	call   d10 <exitwait>

  rmdot();
      d2:	e8 69 27 00 00       	call   2840 <rmdot>
  fourteen();
      d7:	e8 24 26 00 00       	call   2700 <fourteen>
  bigfile();
      dc:	e8 4f 24 00 00       	call   2530 <bigfile>
  subdir();
      e1:	e8 8a 1c 00 00       	call   1d70 <subdir>
  linktest();
      e6:	e8 15 15 00 00       	call   1600 <linktest>
  unlinkread();
      eb:	e8 80 13 00 00       	call   1470 <unlinkread>
  dirfile();
      f0:	e8 cb 28 00 00       	call   29c0 <dirfile>
  iref();
      f5:	e8 c6 2a 00 00       	call   2bc0 <iref>
  forktest();
      fa:	e8 e1 2b 00 00       	call   2ce0 <forktest>
  bigdir(); // slow
      ff:	e8 3c 1b 00 00       	call   1c40 <bigdir>

  uio();
     104:	e8 27 35 00 00       	call   3630 <uio>

  exectest();
     109:	e8 c2 08 00 00       	call   9d0 <exectest>

  exit();
     10e:	e8 6f 38 00 00       	call   3982 <exit>
     113:	66 90                	xchg   %ax,%ax
     115:	66 90                	xchg   %ax,%ax
     117:	66 90                	xchg   %ax,%ax
     119:	66 90                	xchg   %ax,%ax
     11b:	66 90                	xchg   %ax,%ax
     11d:	66 90                	xchg   %ax,%ax
     11f:	90                   	nop

00000120 <iputtest>:
int stdout = 1;

// does chdir() call iput(p->cwd) in a transaction?
void
iputtest(void)
{
     120:	55                   	push   %ebp
     121:	89 e5                	mov    %esp,%ebp
     123:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "iput test\n");
     126:	68 94 3e 00 00       	push   $0x3e94
     12b:	ff 35 94 5e 00 00    	pushl  0x5e94
     131:	e8 aa 39 00 00       	call   3ae0 <printf>

  if(mkdir("iputdir") < 0){
     136:	c7 04 24 27 3e 00 00 	movl   $0x3e27,(%esp)
     13d:	e8 a8 38 00 00       	call   39ea <mkdir>
     142:	83 c4 10             	add    $0x10,%esp
     145:	85 c0                	test   %eax,%eax
     147:	78 58                	js     1a1 <iputtest+0x81>
    printf(stdout, "mkdir failed\n");
    exit();
  }
  if(chdir("iputdir") < 0){
     149:	83 ec 0c             	sub    $0xc,%esp
     14c:	68 27 3e 00 00       	push   $0x3e27
     151:	e8 9c 38 00 00       	call   39f2 <chdir>
     156:	83 c4 10             	add    $0x10,%esp
     159:	85 c0                	test   %eax,%eax
     15b:	0f 88 85 00 00 00    	js     1e6 <iputtest+0xc6>
    printf(stdout, "chdir iputdir failed\n");
    exit();
  }
  if(unlink("../iputdir") < 0){
     161:	83 ec 0c             	sub    $0xc,%esp
     164:	68 24 3e 00 00       	push   $0x3e24
     169:	e8 64 38 00 00       	call   39d2 <unlink>
     16e:	83 c4 10             	add    $0x10,%esp
     171:	85 c0                	test   %eax,%eax
     173:	78 5a                	js     1cf <iputtest+0xaf>
    printf(stdout, "unlink ../iputdir failed\n");
    exit();
  }
  if(chdir("/") < 0){
     175:	83 ec 0c             	sub    $0xc,%esp
     178:	68 49 3e 00 00       	push   $0x3e49
     17d:	e8 70 38 00 00       	call   39f2 <chdir>
     182:	83 c4 10             	add    $0x10,%esp
     185:	85 c0                	test   %eax,%eax
     187:	78 2f                	js     1b8 <iputtest+0x98>
    printf(stdout, "chdir / failed\n");
    exit();
  }
  printf(stdout, "iput test ok\n");
     189:	83 ec 08             	sub    $0x8,%esp
     18c:	68 cc 3e 00 00       	push   $0x3ecc
     191:	ff 35 94 5e 00 00    	pushl  0x5e94
     197:	e8 44 39 00 00       	call   3ae0 <printf>
}
     19c:	83 c4 10             	add    $0x10,%esp
     19f:	c9                   	leave  
     1a0:	c3                   	ret    
iputtest(void)
{
  printf(stdout, "iput test\n");

  if(mkdir("iputdir") < 0){
    printf(stdout, "mkdir failed\n");
     1a1:	50                   	push   %eax
     1a2:	50                   	push   %eax
     1a3:	68 00 3e 00 00       	push   $0x3e00
     1a8:	ff 35 94 5e 00 00    	pushl  0x5e94
     1ae:	e8 2d 39 00 00       	call   3ae0 <printf>
    exit();
     1b3:	e8 ca 37 00 00       	call   3982 <exit>
  if(unlink("../iputdir") < 0){
    printf(stdout, "unlink ../iputdir failed\n");
    exit();
  }
  if(chdir("/") < 0){
    printf(stdout, "chdir / failed\n");
     1b8:	50                   	push   %eax
     1b9:	50                   	push   %eax
     1ba:	68 4b 3e 00 00       	push   $0x3e4b
     1bf:	ff 35 94 5e 00 00    	pushl  0x5e94
     1c5:	e8 16 39 00 00       	call   3ae0 <printf>
    exit();
     1ca:	e8 b3 37 00 00       	call   3982 <exit>
  if(chdir("iputdir") < 0){
    printf(stdout, "chdir iputdir failed\n");
    exit();
  }
  if(unlink("../iputdir") < 0){
    printf(stdout, "unlink ../iputdir failed\n");
     1cf:	52                   	push   %edx
     1d0:	52                   	push   %edx
     1d1:	68 2f 3e 00 00       	push   $0x3e2f
     1d6:	ff 35 94 5e 00 00    	pushl  0x5e94
     1dc:	e8 ff 38 00 00       	call   3ae0 <printf>
    exit();
     1e1:	e8 9c 37 00 00       	call   3982 <exit>
  if(mkdir("iputdir") < 0){
    printf(stdout, "mkdir failed\n");
    exit();
  }
  if(chdir("iputdir") < 0){
    printf(stdout, "chdir iputdir failed\n");
     1e6:	51                   	push   %ecx
     1e7:	51                   	push   %ecx
     1e8:	68 0e 3e 00 00       	push   $0x3e0e
     1ed:	ff 35 94 5e 00 00    	pushl  0x5e94
     1f3:	e8 e8 38 00 00       	call   3ae0 <printf>
    exit();
     1f8:	e8 85 37 00 00       	call   3982 <exit>
     1fd:	8d 76 00             	lea    0x0(%esi),%esi

00000200 <exitiputtest>:
}

// does exit() call iput(p->cwd) in a transaction?
void
exitiputtest(void)
{
     200:	55                   	push   %ebp
     201:	89 e5                	mov    %esp,%ebp
     203:	83 ec 10             	sub    $0x10,%esp
  int pid;

  printf(stdout, "exitiput test\n");
     206:	68 5b 3e 00 00       	push   $0x3e5b
     20b:	ff 35 94 5e 00 00    	pushl  0x5e94
     211:	e8 ca 38 00 00       	call   3ae0 <printf>

  pid = fork();
     216:	e8 5f 37 00 00       	call   397a <fork>
  if(pid < 0){
     21b:	83 c4 10             	add    $0x10,%esp
     21e:	85 c0                	test   %eax,%eax
     220:	0f 88 8a 00 00 00    	js     2b0 <exitiputtest+0xb0>
    printf(stdout, "fork failed\n");
    exit();
  }
  if(pid == 0){
     226:	75 48                	jne    270 <exitiputtest+0x70>
    if(mkdir("iputdir") < 0){
     228:	83 ec 0c             	sub    $0xc,%esp
     22b:	68 27 3e 00 00       	push   $0x3e27
     230:	e8 b5 37 00 00       	call   39ea <mkdir>
     235:	83 c4 10             	add    $0x10,%esp
     238:	85 c0                	test   %eax,%eax
     23a:	0f 88 9e 00 00 00    	js     2de <exitiputtest+0xde>
      printf(stdout, "mkdir failed\n");
      exit();
    }
    if(chdir("iputdir") < 0){
     240:	83 ec 0c             	sub    $0xc,%esp
     243:	68 27 3e 00 00       	push   $0x3e27
     248:	e8 a5 37 00 00       	call   39f2 <chdir>
     24d:	83 c4 10             	add    $0x10,%esp
     250:	85 c0                	test   %eax,%eax
     252:	78 73                	js     2c7 <exitiputtest+0xc7>
      printf(stdout, "child chdir failed\n");
      exit();
    }
    if(unlink("../iputdir") < 0){
     254:	83 ec 0c             	sub    $0xc,%esp
     257:	68 24 3e 00 00       	push   $0x3e24
     25c:	e8 71 37 00 00       	call   39d2 <unlink>
     261:	83 c4 10             	add    $0x10,%esp
     264:	85 c0                	test   %eax,%eax
     266:	78 30                	js     298 <exitiputtest+0x98>
      printf(stdout, "unlink ../iputdir failed\n");
      exit();
    }
    exit();
     268:	e8 15 37 00 00       	call   3982 <exit>
     26d:	8d 76 00             	lea    0x0(%esi),%esi
  }
  wait(0);
     270:	83 ec 0c             	sub    $0xc,%esp
     273:	6a 00                	push   $0x0
     275:	e8 10 37 00 00       	call   398a <wait>
  printf(stdout, "exitiput test ok\n");
     27a:	58                   	pop    %eax
     27b:	5a                   	pop    %edx
     27c:	68 7e 3e 00 00       	push   $0x3e7e
     281:	ff 35 94 5e 00 00    	pushl  0x5e94
     287:	e8 54 38 00 00       	call   3ae0 <printf>
}
     28c:	83 c4 10             	add    $0x10,%esp
     28f:	c9                   	leave  
     290:	c3                   	ret    
     291:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(chdir("iputdir") < 0){
      printf(stdout, "child chdir failed\n");
      exit();
    }
    if(unlink("../iputdir") < 0){
      printf(stdout, "unlink ../iputdir failed\n");
     298:	83 ec 08             	sub    $0x8,%esp
     29b:	68 2f 3e 00 00       	push   $0x3e2f
     2a0:	ff 35 94 5e 00 00    	pushl  0x5e94
     2a6:	e8 35 38 00 00       	call   3ae0 <printf>
      exit();
     2ab:	e8 d2 36 00 00       	call   3982 <exit>

  printf(stdout, "exitiput test\n");

  pid = fork();
  if(pid < 0){
    printf(stdout, "fork failed\n");
     2b0:	50                   	push   %eax
     2b1:	50                   	push   %eax
     2b2:	68 41 4d 00 00       	push   $0x4d41
     2b7:	ff 35 94 5e 00 00    	pushl  0x5e94
     2bd:	e8 1e 38 00 00       	call   3ae0 <printf>
    exit();
     2c2:	e8 bb 36 00 00       	call   3982 <exit>
    if(mkdir("iputdir") < 0){
      printf(stdout, "mkdir failed\n");
      exit();
    }
    if(chdir("iputdir") < 0){
      printf(stdout, "child chdir failed\n");
     2c7:	51                   	push   %ecx
     2c8:	51                   	push   %ecx
     2c9:	68 6a 3e 00 00       	push   $0x3e6a
     2ce:	ff 35 94 5e 00 00    	pushl  0x5e94
     2d4:	e8 07 38 00 00       	call   3ae0 <printf>
      exit();
     2d9:	e8 a4 36 00 00       	call   3982 <exit>
    printf(stdout, "fork failed\n");
    exit();
  }
  if(pid == 0){
    if(mkdir("iputdir") < 0){
      printf(stdout, "mkdir failed\n");
     2de:	50                   	push   %eax
     2df:	50                   	push   %eax
     2e0:	68 00 3e 00 00       	push   $0x3e00
     2e5:	ff 35 94 5e 00 00    	pushl  0x5e94
     2eb:	e8 f0 37 00 00       	call   3ae0 <printf>
      exit();
     2f0:	e8 8d 36 00 00       	call   3982 <exit>
     2f5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     2f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000300 <openiputtest>:
//      for(i = 0; i < 10000; i++)
//        yield();
//    }
void
openiputtest(void)
{
     300:	55                   	push   %ebp
     301:	89 e5                	mov    %esp,%ebp
     303:	83 ec 10             	sub    $0x10,%esp
  int pid;

  printf(stdout, "openiput test\n");
     306:	68 90 3e 00 00       	push   $0x3e90
     30b:	ff 35 94 5e 00 00    	pushl  0x5e94
     311:	e8 ca 37 00 00       	call   3ae0 <printf>
  if(mkdir("oidir") < 0){
     316:	c7 04 24 9f 3e 00 00 	movl   $0x3e9f,(%esp)
     31d:	e8 c8 36 00 00       	call   39ea <mkdir>
     322:	83 c4 10             	add    $0x10,%esp
     325:	85 c0                	test   %eax,%eax
     327:	0f 88 88 00 00 00    	js     3b5 <openiputtest+0xb5>
    printf(stdout, "mkdir oidir failed\n");
    exit();
  }
  pid = fork();
     32d:	e8 48 36 00 00       	call   397a <fork>
  if(pid < 0){
     332:	85 c0                	test   %eax,%eax
     334:	0f 88 92 00 00 00    	js     3cc <openiputtest+0xcc>
    printf(stdout, "fork failed\n");
    exit();
  }
  if(pid == 0){
     33a:	75 34                	jne    370 <openiputtest+0x70>
    int fd = open("oidir", O_RDWR);
     33c:	83 ec 08             	sub    $0x8,%esp
     33f:	6a 02                	push   $0x2
     341:	68 9f 3e 00 00       	push   $0x3e9f
     346:	e8 77 36 00 00       	call   39c2 <open>
    if(fd >= 0){
     34b:	83 c4 10             	add    $0x10,%esp
     34e:	85 c0                	test   %eax,%eax
     350:	78 5e                	js     3b0 <openiputtest+0xb0>
      printf(stdout, "open directory for write succeeded\n");
     352:	83 ec 08             	sub    $0x8,%esp
     355:	68 24 4e 00 00       	push   $0x4e24
     35a:	ff 35 94 5e 00 00    	pushl  0x5e94
     360:	e8 7b 37 00 00       	call   3ae0 <printf>
      exit();
     365:	e8 18 36 00 00       	call   3982 <exit>
     36a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    }
    exit();
  }
  sleep(1);
     370:	83 ec 0c             	sub    $0xc,%esp
     373:	6a 01                	push   $0x1
     375:	e8 98 36 00 00       	call   3a12 <sleep>
  if(unlink("oidir") != 0){
     37a:	c7 04 24 9f 3e 00 00 	movl   $0x3e9f,(%esp)
     381:	e8 4c 36 00 00       	call   39d2 <unlink>
     386:	83 c4 10             	add    $0x10,%esp
     389:	85 c0                	test   %eax,%eax
     38b:	75 56                	jne    3e3 <openiputtest+0xe3>
    printf(stdout, "unlink failed\n");
    exit();
  }
  wait(0);
     38d:	83 ec 0c             	sub    $0xc,%esp
     390:	6a 00                	push   $0x0
     392:	e8 f3 35 00 00       	call   398a <wait>
  printf(stdout, "openiput test ok\n");
     397:	58                   	pop    %eax
     398:	5a                   	pop    %edx
     399:	68 c8 3e 00 00       	push   $0x3ec8
     39e:	ff 35 94 5e 00 00    	pushl  0x5e94
     3a4:	e8 37 37 00 00       	call   3ae0 <printf>
     3a9:	83 c4 10             	add    $0x10,%esp
}
     3ac:	c9                   	leave  
     3ad:	c3                   	ret    
     3ae:	66 90                	xchg   %ax,%ax
    int fd = open("oidir", O_RDWR);
    if(fd >= 0){
      printf(stdout, "open directory for write succeeded\n");
      exit();
    }
    exit();
     3b0:	e8 cd 35 00 00       	call   3982 <exit>
{
  int pid;

  printf(stdout, "openiput test\n");
  if(mkdir("oidir") < 0){
    printf(stdout, "mkdir oidir failed\n");
     3b5:	50                   	push   %eax
     3b6:	50                   	push   %eax
     3b7:	68 a5 3e 00 00       	push   $0x3ea5
     3bc:	ff 35 94 5e 00 00    	pushl  0x5e94
     3c2:	e8 19 37 00 00       	call   3ae0 <printf>
    exit();
     3c7:	e8 b6 35 00 00       	call   3982 <exit>
  }
  pid = fork();
  if(pid < 0){
    printf(stdout, "fork failed\n");
     3cc:	50                   	push   %eax
     3cd:	50                   	push   %eax
     3ce:	68 41 4d 00 00       	push   $0x4d41
     3d3:	ff 35 94 5e 00 00    	pushl  0x5e94
     3d9:	e8 02 37 00 00       	call   3ae0 <printf>
    exit();
     3de:	e8 9f 35 00 00       	call   3982 <exit>
    }
    exit();
  }
  sleep(1);
  if(unlink("oidir") != 0){
    printf(stdout, "unlink failed\n");
     3e3:	51                   	push   %ecx
     3e4:	51                   	push   %ecx
     3e5:	68 b9 3e 00 00       	push   $0x3eb9
     3ea:	ff 35 94 5e 00 00    	pushl  0x5e94
     3f0:	e8 eb 36 00 00       	call   3ae0 <printf>
    exit();
     3f5:	e8 88 35 00 00       	call   3982 <exit>
     3fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000400 <opentest>:

// simple file system tests

void
opentest(void)
{
     400:	55                   	push   %ebp
     401:	89 e5                	mov    %esp,%ebp
     403:	83 ec 10             	sub    $0x10,%esp
  int fd;

  printf(stdout, "open test\n");
     406:	68 da 3e 00 00       	push   $0x3eda
     40b:	ff 35 94 5e 00 00    	pushl  0x5e94
     411:	e8 ca 36 00 00       	call   3ae0 <printf>
  fd = open("echo", 0);
     416:	58                   	pop    %eax
     417:	5a                   	pop    %edx
     418:	6a 00                	push   $0x0
     41a:	68 e5 3e 00 00       	push   $0x3ee5
     41f:	e8 9e 35 00 00       	call   39c2 <open>
  if(fd < 0){
     424:	83 c4 10             	add    $0x10,%esp
     427:	85 c0                	test   %eax,%eax
     429:	78 36                	js     461 <opentest+0x61>
    printf(stdout, "open echo failed!\n");
    exit();
  }
  close(fd);
     42b:	83 ec 0c             	sub    $0xc,%esp
     42e:	50                   	push   %eax
     42f:	e8 76 35 00 00       	call   39aa <close>
  fd = open("doesnotexist", 0);
     434:	5a                   	pop    %edx
     435:	59                   	pop    %ecx
     436:	6a 00                	push   $0x0
     438:	68 fd 3e 00 00       	push   $0x3efd
     43d:	e8 80 35 00 00       	call   39c2 <open>
  if(fd >= 0){
     442:	83 c4 10             	add    $0x10,%esp
     445:	85 c0                	test   %eax,%eax
     447:	79 2f                	jns    478 <opentest+0x78>
    printf(stdout, "open doesnotexist succeeded!\n");
    exit();
  }
  printf(stdout, "open test ok\n");
     449:	83 ec 08             	sub    $0x8,%esp
     44c:	68 28 3f 00 00       	push   $0x3f28
     451:	ff 35 94 5e 00 00    	pushl  0x5e94
     457:	e8 84 36 00 00       	call   3ae0 <printf>
}
     45c:	83 c4 10             	add    $0x10,%esp
     45f:	c9                   	leave  
     460:	c3                   	ret    
  int fd;

  printf(stdout, "open test\n");
  fd = open("echo", 0);
  if(fd < 0){
    printf(stdout, "open echo failed!\n");
     461:	50                   	push   %eax
     462:	50                   	push   %eax
     463:	68 ea 3e 00 00       	push   $0x3eea
     468:	ff 35 94 5e 00 00    	pushl  0x5e94
     46e:	e8 6d 36 00 00       	call   3ae0 <printf>
    exit();
     473:	e8 0a 35 00 00       	call   3982 <exit>
  }
  close(fd);
  fd = open("doesnotexist", 0);
  if(fd >= 0){
    printf(stdout, "open doesnotexist succeeded!\n");
     478:	50                   	push   %eax
     479:	50                   	push   %eax
     47a:	68 0a 3f 00 00       	push   $0x3f0a
     47f:	ff 35 94 5e 00 00    	pushl  0x5e94
     485:	e8 56 36 00 00       	call   3ae0 <printf>
    exit();
     48a:	e8 f3 34 00 00       	call   3982 <exit>
     48f:	90                   	nop

00000490 <writetest>:
  printf(stdout, "open test ok\n");
}

void
writetest(void)
{
     490:	55                   	push   %ebp
     491:	89 e5                	mov    %esp,%ebp
     493:	56                   	push   %esi
     494:	53                   	push   %ebx
  int fd;
  int i;

  printf(stdout, "small file test\n");
     495:	83 ec 08             	sub    $0x8,%esp
     498:	68 36 3f 00 00       	push   $0x3f36
     49d:	ff 35 94 5e 00 00    	pushl  0x5e94
     4a3:	e8 38 36 00 00       	call   3ae0 <printf>
  fd = open("small", O_CREATE|O_RDWR);
     4a8:	59                   	pop    %ecx
     4a9:	5b                   	pop    %ebx
     4aa:	68 02 02 00 00       	push   $0x202
     4af:	68 47 3f 00 00       	push   $0x3f47
     4b4:	e8 09 35 00 00       	call   39c2 <open>
  if(fd >= 0){
     4b9:	83 c4 10             	add    $0x10,%esp
     4bc:	85 c0                	test   %eax,%eax
     4be:	0f 88 8b 01 00 00    	js     64f <writetest+0x1bf>
    printf(stdout, "creat small succeeded; ok\n");
     4c4:	83 ec 08             	sub    $0x8,%esp
     4c7:	89 c6                	mov    %eax,%esi
  } else {
    printf(stdout, "error: creat small failed!\n");
    exit();
  }
  for(i = 0; i < 100; i++){
     4c9:	31 db                	xor    %ebx,%ebx
  int i;

  printf(stdout, "small file test\n");
  fd = open("small", O_CREATE|O_RDWR);
  if(fd >= 0){
    printf(stdout, "creat small succeeded; ok\n");
     4cb:	68 4d 3f 00 00       	push   $0x3f4d
     4d0:	ff 35 94 5e 00 00    	pushl  0x5e94
     4d6:	e8 05 36 00 00       	call   3ae0 <printf>
     4db:	83 c4 10             	add    $0x10,%esp
     4de:	66 90                	xchg   %ax,%ax
  } else {
    printf(stdout, "error: creat small failed!\n");
    exit();
  }
  for(i = 0; i < 100; i++){
    if(write(fd, "aaaaaaaaaa", 10) != 10){
     4e0:	83 ec 04             	sub    $0x4,%esp
     4e3:	6a 0a                	push   $0xa
     4e5:	68 84 3f 00 00       	push   $0x3f84
     4ea:	56                   	push   %esi
     4eb:	e8 b2 34 00 00       	call   39a2 <write>
     4f0:	83 c4 10             	add    $0x10,%esp
     4f3:	83 f8 0a             	cmp    $0xa,%eax
     4f6:	0f 85 d9 00 00 00    	jne    5d5 <writetest+0x145>
      printf(stdout, "error: write aa %d new file failed\n", i);
      exit();
    }
    if(write(fd, "bbbbbbbbbb", 10) != 10){
     4fc:	83 ec 04             	sub    $0x4,%esp
     4ff:	6a 0a                	push   $0xa
     501:	68 8f 3f 00 00       	push   $0x3f8f
     506:	56                   	push   %esi
     507:	e8 96 34 00 00       	call   39a2 <write>
     50c:	83 c4 10             	add    $0x10,%esp
     50f:	83 f8 0a             	cmp    $0xa,%eax
     512:	0f 85 d6 00 00 00    	jne    5ee <writetest+0x15e>
    printf(stdout, "creat small succeeded; ok\n");
  } else {
    printf(stdout, "error: creat small failed!\n");
    exit();
  }
  for(i = 0; i < 100; i++){
     518:	83 c3 01             	add    $0x1,%ebx
     51b:	83 fb 64             	cmp    $0x64,%ebx
     51e:	75 c0                	jne    4e0 <writetest+0x50>
    if(write(fd, "bbbbbbbbbb", 10) != 10){
      printf(stdout, "error: write bb %d new file failed\n", i);
      exit();
    }
  }
  printf(stdout, "writes ok\n");
     520:	83 ec 08             	sub    $0x8,%esp
     523:	68 9a 3f 00 00       	push   $0x3f9a
     528:	ff 35 94 5e 00 00    	pushl  0x5e94
     52e:	e8 ad 35 00 00       	call   3ae0 <printf>
  close(fd);
     533:	89 34 24             	mov    %esi,(%esp)
     536:	e8 6f 34 00 00       	call   39aa <close>
  fd = open("small", O_RDONLY);
     53b:	58                   	pop    %eax
     53c:	5a                   	pop    %edx
     53d:	6a 00                	push   $0x0
     53f:	68 47 3f 00 00       	push   $0x3f47
     544:	e8 79 34 00 00       	call   39c2 <open>
  if(fd >= 0){
     549:	83 c4 10             	add    $0x10,%esp
     54c:	85 c0                	test   %eax,%eax
      exit();
    }
  }
  printf(stdout, "writes ok\n");
  close(fd);
  fd = open("small", O_RDONLY);
     54e:	89 c3                	mov    %eax,%ebx
  if(fd >= 0){
     550:	0f 88 b1 00 00 00    	js     607 <writetest+0x177>
    printf(stdout, "open small succeeded ok\n");
     556:	83 ec 08             	sub    $0x8,%esp
     559:	68 a5 3f 00 00       	push   $0x3fa5
     55e:	ff 35 94 5e 00 00    	pushl  0x5e94
     564:	e8 77 35 00 00       	call   3ae0 <printf>
  } else {
    printf(stdout, "error: open small failed!\n");
    exit();
  }
  i = read(fd, buf, 2000);
     569:	83 c4 0c             	add    $0xc,%esp
     56c:	68 d0 07 00 00       	push   $0x7d0
     571:	68 80 86 00 00       	push   $0x8680
     576:	53                   	push   %ebx
     577:	e8 1e 34 00 00       	call   399a <read>
  if(i == 2000){
     57c:	83 c4 10             	add    $0x10,%esp
     57f:	3d d0 07 00 00       	cmp    $0x7d0,%eax
     584:	0f 85 95 00 00 00    	jne    61f <writetest+0x18f>
    printf(stdout, "read succeeded ok\n");
     58a:	83 ec 08             	sub    $0x8,%esp
     58d:	68 d9 3f 00 00       	push   $0x3fd9
     592:	ff 35 94 5e 00 00    	pushl  0x5e94
     598:	e8 43 35 00 00       	call   3ae0 <printf>
  } else {
    printf(stdout, "read failed\n");
    exit();
  }
  close(fd);
     59d:	89 1c 24             	mov    %ebx,(%esp)
     5a0:	e8 05 34 00 00       	call   39aa <close>

  if(unlink("small") < 0){
     5a5:	c7 04 24 47 3f 00 00 	movl   $0x3f47,(%esp)
     5ac:	e8 21 34 00 00       	call   39d2 <unlink>
     5b1:	83 c4 10             	add    $0x10,%esp
     5b4:	85 c0                	test   %eax,%eax
     5b6:	78 7f                	js     637 <writetest+0x1a7>
    printf(stdout, "unlink small failed\n");
    exit();
  }
  printf(stdout, "small file test ok\n");
     5b8:	83 ec 08             	sub    $0x8,%esp
     5bb:	68 01 40 00 00       	push   $0x4001
     5c0:	ff 35 94 5e 00 00    	pushl  0x5e94
     5c6:	e8 15 35 00 00       	call   3ae0 <printf>
}
     5cb:	83 c4 10             	add    $0x10,%esp
     5ce:	8d 65 f8             	lea    -0x8(%ebp),%esp
     5d1:	5b                   	pop    %ebx
     5d2:	5e                   	pop    %esi
     5d3:	5d                   	pop    %ebp
     5d4:	c3                   	ret    
    printf(stdout, "error: creat small failed!\n");
    exit();
  }
  for(i = 0; i < 100; i++){
    if(write(fd, "aaaaaaaaaa", 10) != 10){
      printf(stdout, "error: write aa %d new file failed\n", i);
     5d5:	83 ec 04             	sub    $0x4,%esp
     5d8:	53                   	push   %ebx
     5d9:	68 48 4e 00 00       	push   $0x4e48
     5de:	ff 35 94 5e 00 00    	pushl  0x5e94
     5e4:	e8 f7 34 00 00       	call   3ae0 <printf>
      exit();
     5e9:	e8 94 33 00 00       	call   3982 <exit>
    }
    if(write(fd, "bbbbbbbbbb", 10) != 10){
      printf(stdout, "error: write bb %d new file failed\n", i);
     5ee:	83 ec 04             	sub    $0x4,%esp
     5f1:	53                   	push   %ebx
     5f2:	68 6c 4e 00 00       	push   $0x4e6c
     5f7:	ff 35 94 5e 00 00    	pushl  0x5e94
     5fd:	e8 de 34 00 00       	call   3ae0 <printf>
      exit();
     602:	e8 7b 33 00 00       	call   3982 <exit>
  close(fd);
  fd = open("small", O_RDONLY);
  if(fd >= 0){
    printf(stdout, "open small succeeded ok\n");
  } else {
    printf(stdout, "error: open small failed!\n");
     607:	83 ec 08             	sub    $0x8,%esp
     60a:	68 be 3f 00 00       	push   $0x3fbe
     60f:	ff 35 94 5e 00 00    	pushl  0x5e94
     615:	e8 c6 34 00 00       	call   3ae0 <printf>
    exit();
     61a:	e8 63 33 00 00       	call   3982 <exit>
  }
  i = read(fd, buf, 2000);
  if(i == 2000){
    printf(stdout, "read succeeded ok\n");
  } else {
    printf(stdout, "read failed\n");
     61f:	83 ec 08             	sub    $0x8,%esp
     622:	68 05 43 00 00       	push   $0x4305
     627:	ff 35 94 5e 00 00    	pushl  0x5e94
     62d:	e8 ae 34 00 00       	call   3ae0 <printf>
    exit();
     632:	e8 4b 33 00 00       	call   3982 <exit>
  }
  close(fd);

  if(unlink("small") < 0){
    printf(stdout, "unlink small failed\n");
     637:	83 ec 08             	sub    $0x8,%esp
     63a:	68 ec 3f 00 00       	push   $0x3fec
     63f:	ff 35 94 5e 00 00    	pushl  0x5e94
     645:	e8 96 34 00 00       	call   3ae0 <printf>
    exit();
     64a:	e8 33 33 00 00       	call   3982 <exit>
  printf(stdout, "small file test\n");
  fd = open("small", O_CREATE|O_RDWR);
  if(fd >= 0){
    printf(stdout, "creat small succeeded; ok\n");
  } else {
    printf(stdout, "error: creat small failed!\n");
     64f:	83 ec 08             	sub    $0x8,%esp
     652:	68 68 3f 00 00       	push   $0x3f68
     657:	ff 35 94 5e 00 00    	pushl  0x5e94
     65d:	e8 7e 34 00 00       	call   3ae0 <printf>
    exit();
     662:	e8 1b 33 00 00       	call   3982 <exit>
     667:	89 f6                	mov    %esi,%esi
     669:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000670 <writetest1>:
  printf(stdout, "small file test ok\n");
}

void
writetest1(void)
{
     670:	55                   	push   %ebp
     671:	89 e5                	mov    %esp,%ebp
     673:	56                   	push   %esi
     674:	53                   	push   %ebx
  int i, fd, n;

  printf(stdout, "big files test\n");
     675:	83 ec 08             	sub    $0x8,%esp
     678:	68 15 40 00 00       	push   $0x4015
     67d:	ff 35 94 5e 00 00    	pushl  0x5e94
     683:	e8 58 34 00 00       	call   3ae0 <printf>

  fd = open("big", O_CREATE|O_RDWR);
     688:	59                   	pop    %ecx
     689:	5b                   	pop    %ebx
     68a:	68 02 02 00 00       	push   $0x202
     68f:	68 8f 40 00 00       	push   $0x408f
     694:	e8 29 33 00 00       	call   39c2 <open>
  if(fd < 0){
     699:	83 c4 10             	add    $0x10,%esp
     69c:	85 c0                	test   %eax,%eax
     69e:	0f 88 64 01 00 00    	js     808 <writetest1+0x198>
     6a4:	89 c6                	mov    %eax,%esi
     6a6:	31 db                	xor    %ebx,%ebx
     6a8:	90                   	nop
     6a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    exit();
  }

  for(i = 0; i < MAXFILE; i++){
    ((int*)buf)[0] = i;
    if(write(fd, buf, 512) != 512){
     6b0:	83 ec 04             	sub    $0x4,%esp
    printf(stdout, "error: creat big failed!\n");
    exit();
  }

  for(i = 0; i < MAXFILE; i++){
    ((int*)buf)[0] = i;
     6b3:	89 1d 80 86 00 00    	mov    %ebx,0x8680
    if(write(fd, buf, 512) != 512){
     6b9:	68 00 02 00 00       	push   $0x200
     6be:	68 80 86 00 00       	push   $0x8680
     6c3:	56                   	push   %esi
     6c4:	e8 d9 32 00 00       	call   39a2 <write>
     6c9:	83 c4 10             	add    $0x10,%esp
     6cc:	3d 00 02 00 00       	cmp    $0x200,%eax
     6d1:	0f 85 b3 00 00 00    	jne    78a <writetest1+0x11a>
  if(fd < 0){
    printf(stdout, "error: creat big failed!\n");
    exit();
  }

  for(i = 0; i < MAXFILE; i++){
     6d7:	83 c3 01             	add    $0x1,%ebx
     6da:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
     6e0:	75 ce                	jne    6b0 <writetest1+0x40>
      printf(stdout, "error: write big file failed\n", i);
      exit();
    }
  }

  close(fd);
     6e2:	83 ec 0c             	sub    $0xc,%esp
     6e5:	56                   	push   %esi
     6e6:	e8 bf 32 00 00       	call   39aa <close>

  fd = open("big", O_RDONLY);
     6eb:	58                   	pop    %eax
     6ec:	5a                   	pop    %edx
     6ed:	6a 00                	push   $0x0
     6ef:	68 8f 40 00 00       	push   $0x408f
     6f4:	e8 c9 32 00 00       	call   39c2 <open>
  if(fd < 0){
     6f9:	83 c4 10             	add    $0x10,%esp
     6fc:	85 c0                	test   %eax,%eax
    }
  }

  close(fd);

  fd = open("big", O_RDONLY);
     6fe:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     700:	0f 88 ea 00 00 00    	js     7f0 <writetest1+0x180>
     706:	31 db                	xor    %ebx,%ebx
     708:	eb 1d                	jmp    727 <writetest1+0xb7>
     70a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(n == MAXFILE - 1){
        printf(stdout, "read only %d blocks from big", n);
        exit();
      }
      break;
    } else if(i != 512){
     710:	3d 00 02 00 00       	cmp    $0x200,%eax
     715:	0f 85 9f 00 00 00    	jne    7ba <writetest1+0x14a>
      printf(stdout, "read failed %d\n", i);
      exit();
    }
    if(((int*)buf)[0] != n){
     71b:	a1 80 86 00 00       	mov    0x8680,%eax
     720:	39 c3                	cmp    %eax,%ebx
     722:	75 7f                	jne    7a3 <writetest1+0x133>
      printf(stdout, "read content of block %d is %d\n",
             n, ((int*)buf)[0]);
      exit();
    }
    n++;
     724:	83 c3 01             	add    $0x1,%ebx
    exit();
  }

  n = 0;
  for(;;){
    i = read(fd, buf, 512);
     727:	83 ec 04             	sub    $0x4,%esp
     72a:	68 00 02 00 00       	push   $0x200
     72f:	68 80 86 00 00       	push   $0x8680
     734:	56                   	push   %esi
     735:	e8 60 32 00 00       	call   399a <read>
    if(i == 0){
     73a:	83 c4 10             	add    $0x10,%esp
     73d:	85 c0                	test   %eax,%eax
     73f:	75 cf                	jne    710 <writetest1+0xa0>
      if(n == MAXFILE - 1){
     741:	81 fb 8b 00 00 00    	cmp    $0x8b,%ebx
     747:	0f 84 86 00 00 00    	je     7d3 <writetest1+0x163>
             n, ((int*)buf)[0]);
      exit();
    }
    n++;
  }
  close(fd);
     74d:	83 ec 0c             	sub    $0xc,%esp
     750:	56                   	push   %esi
     751:	e8 54 32 00 00       	call   39aa <close>
  if(unlink("big") < 0){
     756:	c7 04 24 8f 40 00 00 	movl   $0x408f,(%esp)
     75d:	e8 70 32 00 00       	call   39d2 <unlink>
     762:	83 c4 10             	add    $0x10,%esp
     765:	85 c0                	test   %eax,%eax
     767:	0f 88 b3 00 00 00    	js     820 <writetest1+0x1b0>
    printf(stdout, "unlink big failed\n");
    exit();
  }
  printf(stdout, "big files ok\n");
     76d:	83 ec 08             	sub    $0x8,%esp
     770:	68 b6 40 00 00       	push   $0x40b6
     775:	ff 35 94 5e 00 00    	pushl  0x5e94
     77b:	e8 60 33 00 00       	call   3ae0 <printf>
}
     780:	83 c4 10             	add    $0x10,%esp
     783:	8d 65 f8             	lea    -0x8(%ebp),%esp
     786:	5b                   	pop    %ebx
     787:	5e                   	pop    %esi
     788:	5d                   	pop    %ebp
     789:	c3                   	ret    
  }

  for(i = 0; i < MAXFILE; i++){
    ((int*)buf)[0] = i;
    if(write(fd, buf, 512) != 512){
      printf(stdout, "error: write big file failed\n", i);
     78a:	83 ec 04             	sub    $0x4,%esp
     78d:	53                   	push   %ebx
     78e:	68 3f 40 00 00       	push   $0x403f
     793:	ff 35 94 5e 00 00    	pushl  0x5e94
     799:	e8 42 33 00 00       	call   3ae0 <printf>
      exit();
     79e:	e8 df 31 00 00       	call   3982 <exit>
    } else if(i != 512){
      printf(stdout, "read failed %d\n", i);
      exit();
    }
    if(((int*)buf)[0] != n){
      printf(stdout, "read content of block %d is %d\n",
     7a3:	50                   	push   %eax
     7a4:	53                   	push   %ebx
     7a5:	68 90 4e 00 00       	push   $0x4e90
     7aa:	ff 35 94 5e 00 00    	pushl  0x5e94
     7b0:	e8 2b 33 00 00       	call   3ae0 <printf>
             n, ((int*)buf)[0]);
      exit();
     7b5:	e8 c8 31 00 00       	call   3982 <exit>
        printf(stdout, "read only %d blocks from big", n);
        exit();
      }
      break;
    } else if(i != 512){
      printf(stdout, "read failed %d\n", i);
     7ba:	83 ec 04             	sub    $0x4,%esp
     7bd:	50                   	push   %eax
     7be:	68 93 40 00 00       	push   $0x4093
     7c3:	ff 35 94 5e 00 00    	pushl  0x5e94
     7c9:	e8 12 33 00 00       	call   3ae0 <printf>
      exit();
     7ce:	e8 af 31 00 00       	call   3982 <exit>
  n = 0;
  for(;;){
    i = read(fd, buf, 512);
    if(i == 0){
      if(n == MAXFILE - 1){
        printf(stdout, "read only %d blocks from big", n);
     7d3:	83 ec 04             	sub    $0x4,%esp
     7d6:	68 8b 00 00 00       	push   $0x8b
     7db:	68 76 40 00 00       	push   $0x4076
     7e0:	ff 35 94 5e 00 00    	pushl  0x5e94
     7e6:	e8 f5 32 00 00       	call   3ae0 <printf>
        exit();
     7eb:	e8 92 31 00 00       	call   3982 <exit>

  close(fd);

  fd = open("big", O_RDONLY);
  if(fd < 0){
    printf(stdout, "error: open big failed!\n");
     7f0:	83 ec 08             	sub    $0x8,%esp
     7f3:	68 5d 40 00 00       	push   $0x405d
     7f8:	ff 35 94 5e 00 00    	pushl  0x5e94
     7fe:	e8 dd 32 00 00       	call   3ae0 <printf>
    exit();
     803:	e8 7a 31 00 00       	call   3982 <exit>

  printf(stdout, "big files test\n");

  fd = open("big", O_CREATE|O_RDWR);
  if(fd < 0){
    printf(stdout, "error: creat big failed!\n");
     808:	83 ec 08             	sub    $0x8,%esp
     80b:	68 25 40 00 00       	push   $0x4025
     810:	ff 35 94 5e 00 00    	pushl  0x5e94
     816:	e8 c5 32 00 00       	call   3ae0 <printf>
    exit();
     81b:	e8 62 31 00 00       	call   3982 <exit>
    }
    n++;
  }
  close(fd);
  if(unlink("big") < 0){
    printf(stdout, "unlink big failed\n");
     820:	83 ec 08             	sub    $0x8,%esp
     823:	68 a3 40 00 00       	push   $0x40a3
     828:	ff 35 94 5e 00 00    	pushl  0x5e94
     82e:	e8 ad 32 00 00       	call   3ae0 <printf>
    exit();
     833:	e8 4a 31 00 00       	call   3982 <exit>
     838:	90                   	nop
     839:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000840 <createtest>:
  printf(stdout, "big files ok\n");
}

void
createtest(void)
{
     840:	55                   	push   %ebp
     841:	89 e5                	mov    %esp,%ebp
     843:	53                   	push   %ebx
  int i, fd;

  printf(stdout, "many creates, followed by unlink test\n");

  name[0] = 'a';
  name[2] = '\0';
     844:	bb 30 00 00 00       	mov    $0x30,%ebx
  printf(stdout, "big files ok\n");
}

void
createtest(void)
{
     849:	83 ec 0c             	sub    $0xc,%esp
  int i, fd;

  printf(stdout, "many creates, followed by unlink test\n");
     84c:	68 b0 4e 00 00       	push   $0x4eb0
     851:	ff 35 94 5e 00 00    	pushl  0x5e94
     857:	e8 84 32 00 00       	call   3ae0 <printf>

  name[0] = 'a';
     85c:	c6 05 80 a6 00 00 61 	movb   $0x61,0xa680
  name[2] = '\0';
     863:	c6 05 82 a6 00 00 00 	movb   $0x0,0xa682
     86a:	83 c4 10             	add    $0x10,%esp
     86d:	8d 76 00             	lea    0x0(%esi),%esi
  for(i = 0; i < 52; i++){
    name[1] = '0' + i;
    fd = open(name, O_CREATE|O_RDWR);
     870:	83 ec 08             	sub    $0x8,%esp
  printf(stdout, "many creates, followed by unlink test\n");

  name[0] = 'a';
  name[2] = '\0';
  for(i = 0; i < 52; i++){
    name[1] = '0' + i;
     873:	88 1d 81 a6 00 00    	mov    %bl,0xa681
     879:	83 c3 01             	add    $0x1,%ebx
    fd = open(name, O_CREATE|O_RDWR);
     87c:	68 02 02 00 00       	push   $0x202
     881:	68 80 a6 00 00       	push   $0xa680
     886:	e8 37 31 00 00       	call   39c2 <open>
    close(fd);
     88b:	89 04 24             	mov    %eax,(%esp)
     88e:	e8 17 31 00 00       	call   39aa <close>

  printf(stdout, "many creates, followed by unlink test\n");

  name[0] = 'a';
  name[2] = '\0';
  for(i = 0; i < 52; i++){
     893:	83 c4 10             	add    $0x10,%esp
     896:	80 fb 64             	cmp    $0x64,%bl
     899:	75 d5                	jne    870 <createtest+0x30>
    name[1] = '0' + i;
    fd = open(name, O_CREATE|O_RDWR);
    close(fd);
  }
  name[0] = 'a';
     89b:	c6 05 80 a6 00 00 61 	movb   $0x61,0xa680
  name[2] = '\0';
     8a2:	c6 05 82 a6 00 00 00 	movb   $0x0,0xa682
     8a9:	bb 30 00 00 00       	mov    $0x30,%ebx
     8ae:	66 90                	xchg   %ax,%ax
  for(i = 0; i < 52; i++){
    name[1] = '0' + i;
    unlink(name);
     8b0:	83 ec 0c             	sub    $0xc,%esp
    close(fd);
  }
  name[0] = 'a';
  name[2] = '\0';
  for(i = 0; i < 52; i++){
    name[1] = '0' + i;
     8b3:	88 1d 81 a6 00 00    	mov    %bl,0xa681
     8b9:	83 c3 01             	add    $0x1,%ebx
    unlink(name);
     8bc:	68 80 a6 00 00       	push   $0xa680
     8c1:	e8 0c 31 00 00       	call   39d2 <unlink>
    fd = open(name, O_CREATE|O_RDWR);
    close(fd);
  }
  name[0] = 'a';
  name[2] = '\0';
  for(i = 0; i < 52; i++){
     8c6:	83 c4 10             	add    $0x10,%esp
     8c9:	80 fb 64             	cmp    $0x64,%bl
     8cc:	75 e2                	jne    8b0 <createtest+0x70>
    name[1] = '0' + i;
    unlink(name);
  }
  printf(stdout, "many creates, followed by unlink; ok\n");
     8ce:	83 ec 08             	sub    $0x8,%esp
     8d1:	68 d8 4e 00 00       	push   $0x4ed8
     8d6:	ff 35 94 5e 00 00    	pushl  0x5e94
     8dc:	e8 ff 31 00 00       	call   3ae0 <printf>
}
     8e1:	83 c4 10             	add    $0x10,%esp
     8e4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     8e7:	c9                   	leave  
     8e8:	c3                   	ret    
     8e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000008f0 <dirtest>:

void dirtest(void)
{
     8f0:	55                   	push   %ebp
     8f1:	89 e5                	mov    %esp,%ebp
     8f3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "mkdir test\n");
     8f6:	68 c4 40 00 00       	push   $0x40c4
     8fb:	ff 35 94 5e 00 00    	pushl  0x5e94
     901:	e8 da 31 00 00       	call   3ae0 <printf>

  if(mkdir("dir0") < 0){
     906:	c7 04 24 d0 40 00 00 	movl   $0x40d0,(%esp)
     90d:	e8 d8 30 00 00       	call   39ea <mkdir>
     912:	83 c4 10             	add    $0x10,%esp
     915:	85 c0                	test   %eax,%eax
     917:	78 58                	js     971 <dirtest+0x81>
    printf(stdout, "mkdir failed\n");
    exit();
  }

  if(chdir("dir0") < 0){
     919:	83 ec 0c             	sub    $0xc,%esp
     91c:	68 d0 40 00 00       	push   $0x40d0
     921:	e8 cc 30 00 00       	call   39f2 <chdir>
     926:	83 c4 10             	add    $0x10,%esp
     929:	85 c0                	test   %eax,%eax
     92b:	0f 88 85 00 00 00    	js     9b6 <dirtest+0xc6>
    printf(stdout, "chdir dir0 failed\n");
    exit();
  }

  if(chdir("..") < 0){
     931:	83 ec 0c             	sub    $0xc,%esp
     934:	68 75 46 00 00       	push   $0x4675
     939:	e8 b4 30 00 00       	call   39f2 <chdir>
     93e:	83 c4 10             	add    $0x10,%esp
     941:	85 c0                	test   %eax,%eax
     943:	78 5a                	js     99f <dirtest+0xaf>
    printf(stdout, "chdir .. failed\n");
    exit();
  }

  if(unlink("dir0") < 0){
     945:	83 ec 0c             	sub    $0xc,%esp
     948:	68 d0 40 00 00       	push   $0x40d0
     94d:	e8 80 30 00 00       	call   39d2 <unlink>
     952:	83 c4 10             	add    $0x10,%esp
     955:	85 c0                	test   %eax,%eax
     957:	78 2f                	js     988 <dirtest+0x98>
    printf(stdout, "unlink dir0 failed\n");
    exit();
  }
  printf(stdout, "mkdir test ok\n");
     959:	83 ec 08             	sub    $0x8,%esp
     95c:	68 0d 41 00 00       	push   $0x410d
     961:	ff 35 94 5e 00 00    	pushl  0x5e94
     967:	e8 74 31 00 00       	call   3ae0 <printf>
}
     96c:	83 c4 10             	add    $0x10,%esp
     96f:	c9                   	leave  
     970:	c3                   	ret    
void dirtest(void)
{
  printf(stdout, "mkdir test\n");

  if(mkdir("dir0") < 0){
    printf(stdout, "mkdir failed\n");
     971:	50                   	push   %eax
     972:	50                   	push   %eax
     973:	68 00 3e 00 00       	push   $0x3e00
     978:	ff 35 94 5e 00 00    	pushl  0x5e94
     97e:	e8 5d 31 00 00       	call   3ae0 <printf>
    exit();
     983:	e8 fa 2f 00 00       	call   3982 <exit>
    printf(stdout, "chdir .. failed\n");
    exit();
  }

  if(unlink("dir0") < 0){
    printf(stdout, "unlink dir0 failed\n");
     988:	50                   	push   %eax
     989:	50                   	push   %eax
     98a:	68 f9 40 00 00       	push   $0x40f9
     98f:	ff 35 94 5e 00 00    	pushl  0x5e94
     995:	e8 46 31 00 00       	call   3ae0 <printf>
    exit();
     99a:	e8 e3 2f 00 00       	call   3982 <exit>
    printf(stdout, "chdir dir0 failed\n");
    exit();
  }

  if(chdir("..") < 0){
    printf(stdout, "chdir .. failed\n");
     99f:	52                   	push   %edx
     9a0:	52                   	push   %edx
     9a1:	68 e8 40 00 00       	push   $0x40e8
     9a6:	ff 35 94 5e 00 00    	pushl  0x5e94
     9ac:	e8 2f 31 00 00       	call   3ae0 <printf>
    exit();
     9b1:	e8 cc 2f 00 00       	call   3982 <exit>
    printf(stdout, "mkdir failed\n");
    exit();
  }

  if(chdir("dir0") < 0){
    printf(stdout, "chdir dir0 failed\n");
     9b6:	51                   	push   %ecx
     9b7:	51                   	push   %ecx
     9b8:	68 d5 40 00 00       	push   $0x40d5
     9bd:	ff 35 94 5e 00 00    	pushl  0x5e94
     9c3:	e8 18 31 00 00       	call   3ae0 <printf>
    exit();
     9c8:	e8 b5 2f 00 00       	call   3982 <exit>
     9cd:	8d 76 00             	lea    0x0(%esi),%esi

000009d0 <exectest>:
  printf(stdout, "mkdir test ok\n");
}

void
exectest(void)
{
     9d0:	55                   	push   %ebp
     9d1:	89 e5                	mov    %esp,%ebp
     9d3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exec test\n");
     9d6:	68 1c 41 00 00       	push   $0x411c
     9db:	ff 35 94 5e 00 00    	pushl  0x5e94
     9e1:	e8 fa 30 00 00       	call   3ae0 <printf>
  if(exec("echo", echoargv) < 0){
     9e6:	5a                   	pop    %edx
     9e7:	59                   	pop    %ecx
     9e8:	68 98 5e 00 00       	push   $0x5e98
     9ed:	68 e5 3e 00 00       	push   $0x3ee5
     9f2:	e8 c3 2f 00 00       	call   39ba <exec>
     9f7:	83 c4 10             	add    $0x10,%esp
     9fa:	85 c0                	test   %eax,%eax
     9fc:	78 02                	js     a00 <exectest+0x30>
    printf(stdout, "exec echo failed\n");
    exit();
  }
}
     9fe:	c9                   	leave  
     9ff:	c3                   	ret    
void
exectest(void)
{
  printf(stdout, "exec test\n");
  if(exec("echo", echoargv) < 0){
    printf(stdout, "exec echo failed\n");
     a00:	50                   	push   %eax
     a01:	50                   	push   %eax
     a02:	68 27 41 00 00       	push   $0x4127
     a07:	ff 35 94 5e 00 00    	pushl  0x5e94
     a0d:	e8 ce 30 00 00       	call   3ae0 <printf>
    exit();
     a12:	e8 6b 2f 00 00       	call   3982 <exit>
     a17:	89 f6                	mov    %esi,%esi
     a19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000a20 <pipe1>:

// simple fork and pipe read/write

void
pipe1(void)
{
     a20:	55                   	push   %ebp
     a21:	89 e5                	mov    %esp,%ebp
     a23:	57                   	push   %edi
     a24:	56                   	push   %esi
     a25:	53                   	push   %ebx
  int fds[2], pid;
  int seq, i, n, cc, total;

  if(pipe(fds) != 0){
     a26:	8d 45 e0             	lea    -0x20(%ebp),%eax

// simple fork and pipe read/write

void
pipe1(void)
{
     a29:	83 ec 38             	sub    $0x38,%esp
  int fds[2], pid;
  int seq, i, n, cc, total;

  if(pipe(fds) != 0){
     a2c:	50                   	push   %eax
     a2d:	e8 60 2f 00 00       	call   3992 <pipe>
     a32:	83 c4 10             	add    $0x10,%esp
     a35:	85 c0                	test   %eax,%eax
     a37:	0f 85 40 01 00 00    	jne    b7d <pipe1+0x15d>
    printf(1, "pipe() failed\n");
    exit();
  }
  pid = fork();
     a3d:	e8 38 2f 00 00       	call   397a <fork>
  seq = 0;
  if(pid == 0){
     a42:	83 f8 00             	cmp    $0x0,%eax
     a45:	0f 84 86 00 00 00    	je     ad1 <pipe1+0xb1>
        printf(1, "pipe1 oops 1\n");
        exit();
      }
    }
    exit();
  } else if(pid > 0){
     a4b:	0f 8e 40 01 00 00    	jle    b91 <pipe1+0x171>
    close(fds[1]);
     a51:	83 ec 0c             	sub    $0xc,%esp
     a54:	ff 75 e4             	pushl  -0x1c(%ebp)
    total = 0;
    cc = 1;
     a57:	bf 01 00 00 00       	mov    $0x1,%edi
  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
    exit();
  }
  pid = fork();
  seq = 0;
     a5c:	31 db                	xor    %ebx,%ebx
        exit();
      }
    }
    exit();
  } else if(pid > 0){
    close(fds[1]);
     a5e:	e8 47 2f 00 00       	call   39aa <close>
    total = 0;
    cc = 1;
    while((n = read(fds[0], buf, cc)) > 0){
     a63:	83 c4 10             	add    $0x10,%esp
      }
    }
    exit();
  } else if(pid > 0){
    close(fds[1]);
    total = 0;
     a66:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    cc = 1;
    while((n = read(fds[0], buf, cc)) > 0){
     a6d:	83 ec 04             	sub    $0x4,%esp
     a70:	57                   	push   %edi
     a71:	68 80 86 00 00       	push   $0x8680
     a76:	ff 75 e0             	pushl  -0x20(%ebp)
     a79:	e8 1c 2f 00 00       	call   399a <read>
     a7e:	83 c4 10             	add    $0x10,%esp
     a81:	85 c0                	test   %eax,%eax
     a83:	0f 8e a7 00 00 00    	jle    b30 <pipe1+0x110>
      for(i = 0; i < n; i++){
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     a89:	89 d9                	mov    %ebx,%ecx
     a8b:	8d 34 18             	lea    (%eax,%ebx,1),%esi
     a8e:	f7 d9                	neg    %ecx
     a90:	38 9c 0b 80 86 00 00 	cmp    %bl,0x8680(%ebx,%ecx,1)
     a97:	8d 53 01             	lea    0x1(%ebx),%edx
     a9a:	75 1b                	jne    ab7 <pipe1+0x97>
  } else if(pid > 0){
    close(fds[1]);
    total = 0;
    cc = 1;
    while((n = read(fds[0], buf, cc)) > 0){
      for(i = 0; i < n; i++){
     a9c:	39 f2                	cmp    %esi,%edx
     a9e:	89 d3                	mov    %edx,%ebx
     aa0:	75 ee                	jne    a90 <pipe1+0x70>
          printf(1, "pipe1 oops 2\n");
          return;
        }
      }
      total += n;
      cc = cc * 2;
     aa2:	01 ff                	add    %edi,%edi
        if((buf[i] & 0xff) != (seq++ & 0xff)){
          printf(1, "pipe1 oops 2\n");
          return;
        }
      }
      total += n;
     aa4:	01 45 d4             	add    %eax,-0x2c(%ebp)
     aa7:	b8 00 20 00 00       	mov    $0x2000,%eax
     aac:	81 ff 00 20 00 00    	cmp    $0x2000,%edi
     ab2:	0f 4f f8             	cmovg  %eax,%edi
     ab5:	eb b6                	jmp    a6d <pipe1+0x4d>
    total = 0;
    cc = 1;
    while((n = read(fds[0], buf, cc)) > 0){
      for(i = 0; i < n; i++){
        if((buf[i] & 0xff) != (seq++ & 0xff)){
          printf(1, "pipe1 oops 2\n");
     ab7:	83 ec 08             	sub    $0x8,%esp
     aba:	68 56 41 00 00       	push   $0x4156
     abf:	6a 01                	push   $0x1
     ac1:	e8 1a 30 00 00       	call   3ae0 <printf>
          return;
     ac6:	83 c4 10             	add    $0x10,%esp
  } else {
    printf(1, "fork() failed\n");
    exit();
  }
  printf(1, "pipe1 ok\n");
}
     ac9:	8d 65 f4             	lea    -0xc(%ebp),%esp
     acc:	5b                   	pop    %ebx
     acd:	5e                   	pop    %esi
     ace:	5f                   	pop    %edi
     acf:	5d                   	pop    %ebp
     ad0:	c3                   	ret    
    exit();
  }
  pid = fork();
  seq = 0;
  if(pid == 0){
    close(fds[0]);
     ad1:	83 ec 0c             	sub    $0xc,%esp
     ad4:	ff 75 e0             	pushl  -0x20(%ebp)
  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
    exit();
  }
  pid = fork();
  seq = 0;
     ad7:	31 f6                	xor    %esi,%esi
  if(pid == 0){
    close(fds[0]);
     ad9:	e8 cc 2e 00 00       	call   39aa <close>
     ade:	83 c4 10             	add    $0x10,%esp
    for(n = 0; n < 5; n++){
      for(i = 0; i < 1033; i++)
        buf[i] = seq++;
     ae1:	89 f0                	mov    %esi,%eax
     ae3:	8d 96 09 04 00 00    	lea    0x409(%esi),%edx

// simple fork and pipe read/write

void
pipe1(void)
{
     ae9:	89 f3                	mov    %esi,%ebx
  seq = 0;
  if(pid == 0){
    close(fds[0]);
    for(n = 0; n < 5; n++){
      for(i = 0; i < 1033; i++)
        buf[i] = seq++;
     aeb:	f7 d8                	neg    %eax
     aed:	8d 76 00             	lea    0x0(%esi),%esi
     af0:	88 9c 18 80 86 00 00 	mov    %bl,0x8680(%eax,%ebx,1)
     af7:	83 c3 01             	add    $0x1,%ebx
  pid = fork();
  seq = 0;
  if(pid == 0){
    close(fds[0]);
    for(n = 0; n < 5; n++){
      for(i = 0; i < 1033; i++)
     afa:	39 d3                	cmp    %edx,%ebx
     afc:	75 f2                	jne    af0 <pipe1+0xd0>
        buf[i] = seq++;
      if(write(fds[1], buf, 1033) != 1033){
     afe:	83 ec 04             	sub    $0x4,%esp
     b01:	89 de                	mov    %ebx,%esi
     b03:	68 09 04 00 00       	push   $0x409
     b08:	68 80 86 00 00       	push   $0x8680
     b0d:	ff 75 e4             	pushl  -0x1c(%ebp)
     b10:	e8 8d 2e 00 00       	call   39a2 <write>
     b15:	83 c4 10             	add    $0x10,%esp
     b18:	3d 09 04 00 00       	cmp    $0x409,%eax
     b1d:	0f 85 82 00 00 00    	jne    ba5 <pipe1+0x185>
  }
  pid = fork();
  seq = 0;
  if(pid == 0){
    close(fds[0]);
    for(n = 0; n < 5; n++){
     b23:	81 fb 2d 14 00 00    	cmp    $0x142d,%ebx
     b29:	75 b6                	jne    ae1 <pipe1+0xc1>
      if(write(fds[1], buf, 1033) != 1033){
        printf(1, "pipe1 oops 1\n");
        exit();
      }
    }
    exit();
     b2b:	e8 52 2e 00 00       	call   3982 <exit>
      total += n;
      cc = cc * 2;
      if(cc > sizeof(buf))
        cc = sizeof(buf);
    }
    if(total != 5 * 1033){
     b30:	81 7d d4 2d 14 00 00 	cmpl   $0x142d,-0x2c(%ebp)
     b37:	75 2d                	jne    b66 <pipe1+0x146>
      printf(1, "pipe1 oops 3 total %d\n", total);
      exit();
    }
    close(fds[0]);
     b39:	83 ec 0c             	sub    $0xc,%esp
     b3c:	ff 75 e0             	pushl  -0x20(%ebp)
     b3f:	e8 66 2e 00 00       	call   39aa <close>
    wait(0);
     b44:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     b4b:	e8 3a 2e 00 00       	call   398a <wait>
  } else {
    printf(1, "fork() failed\n");
    exit();
  }
  printf(1, "pipe1 ok\n");
     b50:	58                   	pop    %eax
     b51:	5a                   	pop    %edx
     b52:	68 7b 41 00 00       	push   $0x417b
     b57:	6a 01                	push   $0x1
     b59:	e8 82 2f 00 00       	call   3ae0 <printf>
     b5e:	83 c4 10             	add    $0x10,%esp
     b61:	e9 63 ff ff ff       	jmp    ac9 <pipe1+0xa9>
      cc = cc * 2;
      if(cc > sizeof(buf))
        cc = sizeof(buf);
    }
    if(total != 5 * 1033){
      printf(1, "pipe1 oops 3 total %d\n", total);
     b66:	83 ec 04             	sub    $0x4,%esp
     b69:	ff 75 d4             	pushl  -0x2c(%ebp)
     b6c:	68 64 41 00 00       	push   $0x4164
     b71:	6a 01                	push   $0x1
     b73:	e8 68 2f 00 00       	call   3ae0 <printf>
      exit();
     b78:	e8 05 2e 00 00       	call   3982 <exit>
{
  int fds[2], pid;
  int seq, i, n, cc, total;

  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
     b7d:	83 ec 08             	sub    $0x8,%esp
     b80:	68 39 41 00 00       	push   $0x4139
     b85:	6a 01                	push   $0x1
     b87:	e8 54 2f 00 00       	call   3ae0 <printf>
    exit();
     b8c:	e8 f1 2d 00 00       	call   3982 <exit>
      exit();
    }
    close(fds[0]);
    wait(0);
  } else {
    printf(1, "fork() failed\n");
     b91:	83 ec 08             	sub    $0x8,%esp
     b94:	68 85 41 00 00       	push   $0x4185
     b99:	6a 01                	push   $0x1
     b9b:	e8 40 2f 00 00       	call   3ae0 <printf>
    exit();
     ba0:	e8 dd 2d 00 00       	call   3982 <exit>
    close(fds[0]);
    for(n = 0; n < 5; n++){
      for(i = 0; i < 1033; i++)
        buf[i] = seq++;
      if(write(fds[1], buf, 1033) != 1033){
        printf(1, "pipe1 oops 1\n");
     ba5:	83 ec 08             	sub    $0x8,%esp
     ba8:	68 48 41 00 00       	push   $0x4148
     bad:	6a 01                	push   $0x1
     baf:	e8 2c 2f 00 00       	call   3ae0 <printf>
        exit();
     bb4:	e8 c9 2d 00 00       	call   3982 <exit>
     bb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000bc0 <preempt>:
}

// meant to be run w/ at most two CPUs
void
preempt(void)
{
     bc0:	55                   	push   %ebp
     bc1:	89 e5                	mov    %esp,%ebp
     bc3:	57                   	push   %edi
     bc4:	56                   	push   %esi
     bc5:	53                   	push   %ebx
     bc6:	83 ec 24             	sub    $0x24,%esp
  int pid1, pid2, pid3;
  int pfds[2];

  printf(1, "preempt: ");
     bc9:	68 94 41 00 00       	push   $0x4194
     bce:	6a 01                	push   $0x1
     bd0:	e8 0b 2f 00 00       	call   3ae0 <printf>
  pid1 = fork();
     bd5:	e8 a0 2d 00 00       	call   397a <fork>
  if(pid1 == 0)
     bda:	83 c4 10             	add    $0x10,%esp
     bdd:	85 c0                	test   %eax,%eax
     bdf:	75 02                	jne    be3 <preempt+0x23>
     be1:	eb fe                	jmp    be1 <preempt+0x21>
     be3:	89 c7                	mov    %eax,%edi
    for(;;)
      ;

  pid2 = fork();
     be5:	e8 90 2d 00 00       	call   397a <fork>
  if(pid2 == 0)
     bea:	85 c0                	test   %eax,%eax
  pid1 = fork();
  if(pid1 == 0)
    for(;;)
      ;

  pid2 = fork();
     bec:	89 c6                	mov    %eax,%esi
  if(pid2 == 0)
     bee:	75 02                	jne    bf2 <preempt+0x32>
     bf0:	eb fe                	jmp    bf0 <preempt+0x30>
    for(;;)
      ;

  pipe(pfds);
     bf2:	8d 45 e0             	lea    -0x20(%ebp),%eax
     bf5:	83 ec 0c             	sub    $0xc,%esp
     bf8:	50                   	push   %eax
     bf9:	e8 94 2d 00 00       	call   3992 <pipe>
  pid3 = fork();
     bfe:	e8 77 2d 00 00       	call   397a <fork>
  if(pid3 == 0){
     c03:	83 c4 10             	add    $0x10,%esp
     c06:	85 c0                	test   %eax,%eax
  if(pid2 == 0)
    for(;;)
      ;

  pipe(pfds);
  pid3 = fork();
     c08:	89 c3                	mov    %eax,%ebx
  if(pid3 == 0){
     c0a:	75 47                	jne    c53 <preempt+0x93>
    close(pfds[0]);
     c0c:	83 ec 0c             	sub    $0xc,%esp
     c0f:	ff 75 e0             	pushl  -0x20(%ebp)
     c12:	e8 93 2d 00 00       	call   39aa <close>
    if(write(pfds[1], "x", 1) != 1)
     c17:	83 c4 0c             	add    $0xc,%esp
     c1a:	6a 01                	push   $0x1
     c1c:	68 59 47 00 00       	push   $0x4759
     c21:	ff 75 e4             	pushl  -0x1c(%ebp)
     c24:	e8 79 2d 00 00       	call   39a2 <write>
     c29:	83 c4 10             	add    $0x10,%esp
     c2c:	83 f8 01             	cmp    $0x1,%eax
     c2f:	74 12                	je     c43 <preempt+0x83>
      printf(1, "preempt write error");
     c31:	83 ec 08             	sub    $0x8,%esp
     c34:	68 9e 41 00 00       	push   $0x419e
     c39:	6a 01                	push   $0x1
     c3b:	e8 a0 2e 00 00       	call   3ae0 <printf>
     c40:	83 c4 10             	add    $0x10,%esp
    close(pfds[1]);
     c43:	83 ec 0c             	sub    $0xc,%esp
     c46:	ff 75 e4             	pushl  -0x1c(%ebp)
     c49:	e8 5c 2d 00 00       	call   39aa <close>
     c4e:	83 c4 10             	add    $0x10,%esp
     c51:	eb fe                	jmp    c51 <preempt+0x91>
    for(;;)
      ;
  }

  close(pfds[1]);
     c53:	83 ec 0c             	sub    $0xc,%esp
     c56:	ff 75 e4             	pushl  -0x1c(%ebp)
     c59:	e8 4c 2d 00 00       	call   39aa <close>
  if(read(pfds[0], buf, sizeof(buf)) != 1){
     c5e:	83 c4 0c             	add    $0xc,%esp
     c61:	68 00 20 00 00       	push   $0x2000
     c66:	68 80 86 00 00       	push   $0x8680
     c6b:	ff 75 e0             	pushl  -0x20(%ebp)
     c6e:	e8 27 2d 00 00       	call   399a <read>
     c73:	83 c4 10             	add    $0x10,%esp
     c76:	83 f8 01             	cmp    $0x1,%eax
     c79:	74 1a                	je     c95 <preempt+0xd5>
    printf(1, "preempt read error");
     c7b:	83 ec 08             	sub    $0x8,%esp
     c7e:	68 b2 41 00 00       	push   $0x41b2
     c83:	6a 01                	push   $0x1
     c85:	e8 56 2e 00 00       	call   3ae0 <printf>
    return;
     c8a:	83 c4 10             	add    $0x10,%esp
  printf(1, "wait... ");
  wait(0);
  wait(0);
  wait(0);
  printf(1, "preempt ok\n");
}
     c8d:	8d 65 f4             	lea    -0xc(%ebp),%esp
     c90:	5b                   	pop    %ebx
     c91:	5e                   	pop    %esi
     c92:	5f                   	pop    %edi
     c93:	5d                   	pop    %ebp
     c94:	c3                   	ret    
  close(pfds[1]);
  if(read(pfds[0], buf, sizeof(buf)) != 1){
    printf(1, "preempt read error");
    return;
  }
  close(pfds[0]);
     c95:	83 ec 0c             	sub    $0xc,%esp
     c98:	ff 75 e0             	pushl  -0x20(%ebp)
     c9b:	e8 0a 2d 00 00       	call   39aa <close>
  printf(1, "kill... ");
     ca0:	58                   	pop    %eax
     ca1:	5a                   	pop    %edx
     ca2:	68 c5 41 00 00       	push   $0x41c5
     ca7:	6a 01                	push   $0x1
     ca9:	e8 32 2e 00 00       	call   3ae0 <printf>
  kill(pid1);
     cae:	89 3c 24             	mov    %edi,(%esp)
     cb1:	e8 fc 2c 00 00       	call   39b2 <kill>
  kill(pid2);
     cb6:	89 34 24             	mov    %esi,(%esp)
     cb9:	e8 f4 2c 00 00       	call   39b2 <kill>
  kill(pid3);
     cbe:	89 1c 24             	mov    %ebx,(%esp)
     cc1:	e8 ec 2c 00 00       	call   39b2 <kill>
  printf(1, "wait... ");
     cc6:	59                   	pop    %ecx
     cc7:	5b                   	pop    %ebx
     cc8:	68 ce 41 00 00       	push   $0x41ce
     ccd:	6a 01                	push   $0x1
     ccf:	e8 0c 2e 00 00       	call   3ae0 <printf>
  wait(0);
     cd4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     cdb:	e8 aa 2c 00 00       	call   398a <wait>
  wait(0);
     ce0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     ce7:	e8 9e 2c 00 00       	call   398a <wait>
  wait(0);
     cec:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     cf3:	e8 92 2c 00 00       	call   398a <wait>
  printf(1, "preempt ok\n");
     cf8:	5e                   	pop    %esi
     cf9:	5f                   	pop    %edi
     cfa:	68 d7 41 00 00       	push   $0x41d7
     cff:	6a 01                	push   $0x1
     d01:	e8 da 2d 00 00       	call   3ae0 <printf>
     d06:	83 c4 10             	add    $0x10,%esp
     d09:	eb 82                	jmp    c8d <preempt+0xcd>
     d0b:	90                   	nop
     d0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000d10 <exitwait>:
}

// try to find any races between exit and wait
void
exitwait(void)
{
     d10:	55                   	push   %ebp
     d11:	89 e5                	mov    %esp,%ebp
     d13:	56                   	push   %esi
     d14:	be 64 00 00 00       	mov    $0x64,%esi
     d19:	53                   	push   %ebx
     d1a:	eb 1c                	jmp    d38 <exitwait+0x28>
     d1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    pid = fork();
    if(pid < 0){
      printf(1, "fork failed\n");
      return;
    }
    if(pid){
     d20:	74 77                	je     d99 <exitwait+0x89>
      if(wait(0) != pid){
     d22:	83 ec 0c             	sub    $0xc,%esp
     d25:	6a 00                	push   $0x0
     d27:	e8 5e 2c 00 00       	call   398a <wait>
     d2c:	83 c4 10             	add    $0x10,%esp
     d2f:	39 c3                	cmp    %eax,%ebx
     d31:	75 2d                	jne    d60 <exitwait+0x50>
void
exitwait(void)
{
  int i, pid;

  for(i = 0; i < 100; i++){
     d33:	83 ee 01             	sub    $0x1,%esi
     d36:	74 48                	je     d80 <exitwait+0x70>
    pid = fork();
     d38:	e8 3d 2c 00 00       	call   397a <fork>
    if(pid < 0){
     d3d:	85 c0                	test   %eax,%eax
exitwait(void)
{
  int i, pid;

  for(i = 0; i < 100; i++){
    pid = fork();
     d3f:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
     d41:	79 dd                	jns    d20 <exitwait+0x10>
      printf(1, "fork failed\n");
     d43:	83 ec 08             	sub    $0x8,%esp
     d46:	68 41 4d 00 00       	push   $0x4d41
     d4b:	6a 01                	push   $0x1
     d4d:	e8 8e 2d 00 00       	call   3ae0 <printf>
      return;
     d52:	83 c4 10             	add    $0x10,%esp
    } else {
      exit();
    }
  }
  printf(1, "exitwait ok\n");
}
     d55:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d58:	5b                   	pop    %ebx
     d59:	5e                   	pop    %esi
     d5a:	5d                   	pop    %ebp
     d5b:	c3                   	ret    
     d5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(1, "fork failed\n");
      return;
    }
    if(pid){
      if(wait(0) != pid){
        printf(1, "wait wrong pid\n");
     d60:	83 ec 08             	sub    $0x8,%esp
     d63:	68 e3 41 00 00       	push   $0x41e3
     d68:	6a 01                	push   $0x1
     d6a:	e8 71 2d 00 00       	call   3ae0 <printf>
        return;
     d6f:	83 c4 10             	add    $0x10,%esp
    } else {
      exit();
    }
  }
  printf(1, "exitwait ok\n");
}
     d72:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d75:	5b                   	pop    %ebx
     d76:	5e                   	pop    %esi
     d77:	5d                   	pop    %ebp
     d78:	c3                   	ret    
     d79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      }
    } else {
      exit();
    }
  }
  printf(1, "exitwait ok\n");
     d80:	83 ec 08             	sub    $0x8,%esp
     d83:	68 f3 41 00 00       	push   $0x41f3
     d88:	6a 01                	push   $0x1
     d8a:	e8 51 2d 00 00       	call   3ae0 <printf>
     d8f:	83 c4 10             	add    $0x10,%esp
}
     d92:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d95:	5b                   	pop    %ebx
     d96:	5e                   	pop    %esi
     d97:	5d                   	pop    %ebp
     d98:	c3                   	ret    
      if(wait(0) != pid){
        printf(1, "wait wrong pid\n");
        return;
      }
    } else {
      exit();
     d99:	e8 e4 2b 00 00       	call   3982 <exit>
     d9e:	66 90                	xchg   %ax,%ax

00000da0 <mem>:
  printf(1, "exitwait ok\n");
}

void
mem(void)
{
     da0:	55                   	push   %ebp
     da1:	89 e5                	mov    %esp,%ebp
     da3:	57                   	push   %edi
     da4:	56                   	push   %esi
     da5:	53                   	push   %ebx
     da6:	83 ec 14             	sub    $0x14,%esp
  void *m1, *m2;
  int pid, ppid;

  printf(1, "mem test\n");
     da9:	68 00 42 00 00       	push   $0x4200
     dae:	6a 01                	push   $0x1
     db0:	e8 2b 2d 00 00       	call   3ae0 <printf>
  ppid = getpid();
     db5:	e8 48 2c 00 00       	call   3a02 <getpid>
     dba:	89 c6                	mov    %eax,%esi
  if((pid = fork()) == 0){
     dbc:	e8 b9 2b 00 00       	call   397a <fork>
     dc1:	83 c4 10             	add    $0x10,%esp
     dc4:	85 c0                	test   %eax,%eax
     dc6:	75 70                	jne    e38 <mem+0x98>
     dc8:	31 db                	xor    %ebx,%ebx
     dca:	eb 08                	jmp    dd4 <mem+0x34>
     dcc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    m1 = 0;
    while((m2 = malloc(10001)) != 0){
      *(char**)m2 = m1;
     dd0:	89 18                	mov    %ebx,(%eax)
     dd2:	89 c3                	mov    %eax,%ebx

  printf(1, "mem test\n");
  ppid = getpid();
  if((pid = fork()) == 0){
    m1 = 0;
    while((m2 = malloc(10001)) != 0){
     dd4:	83 ec 0c             	sub    $0xc,%esp
     dd7:	68 11 27 00 00       	push   $0x2711
     ddc:	e8 2f 2f 00 00       	call   3d10 <malloc>
     de1:	83 c4 10             	add    $0x10,%esp
     de4:	85 c0                	test   %eax,%eax
     de6:	75 e8                	jne    dd0 <mem+0x30>
      *(char**)m2 = m1;
      m1 = m2;
    }
    while(m1){
     de8:	85 db                	test   %ebx,%ebx
     dea:	74 18                	je     e04 <mem+0x64>
     dec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      m2 = *(char**)m1;
     df0:	8b 3b                	mov    (%ebx),%edi
      free(m1);
     df2:	83 ec 0c             	sub    $0xc,%esp
     df5:	53                   	push   %ebx
     df6:	89 fb                	mov    %edi,%ebx
     df8:	e8 83 2e 00 00       	call   3c80 <free>
    m1 = 0;
    while((m2 = malloc(10001)) != 0){
      *(char**)m2 = m1;
      m1 = m2;
    }
    while(m1){
     dfd:	83 c4 10             	add    $0x10,%esp
     e00:	85 db                	test   %ebx,%ebx
     e02:	75 ec                	jne    df0 <mem+0x50>
      m2 = *(char**)m1;
      free(m1);
      m1 = m2;
    }
    m1 = malloc(1024*20);
     e04:	83 ec 0c             	sub    $0xc,%esp
     e07:	68 00 50 00 00       	push   $0x5000
     e0c:	e8 ff 2e 00 00       	call   3d10 <malloc>
    if(m1 == 0){
     e11:	83 c4 10             	add    $0x10,%esp
     e14:	85 c0                	test   %eax,%eax
     e16:	74 38                	je     e50 <mem+0xb0>
      printf(1, "couldn't allocate mem?!!\n");
      kill(ppid);
      exit();
    }
    free(m1);
     e18:	83 ec 0c             	sub    $0xc,%esp
     e1b:	50                   	push   %eax
     e1c:	e8 5f 2e 00 00       	call   3c80 <free>
    printf(1, "mem ok\n");
     e21:	58                   	pop    %eax
     e22:	5a                   	pop    %edx
     e23:	68 24 42 00 00       	push   $0x4224
     e28:	6a 01                	push   $0x1
     e2a:	e8 b1 2c 00 00       	call   3ae0 <printf>
    exit();
     e2f:	e8 4e 2b 00 00       	call   3982 <exit>
     e34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  } else {
    wait(0);
     e38:	83 ec 0c             	sub    $0xc,%esp
     e3b:	6a 00                	push   $0x0
     e3d:	e8 48 2b 00 00       	call   398a <wait>
     e42:	83 c4 10             	add    $0x10,%esp
  }
}
     e45:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e48:	5b                   	pop    %ebx
     e49:	5e                   	pop    %esi
     e4a:	5f                   	pop    %edi
     e4b:	5d                   	pop    %ebp
     e4c:	c3                   	ret    
     e4d:	8d 76 00             	lea    0x0(%esi),%esi
      free(m1);
      m1 = m2;
    }
    m1 = malloc(1024*20);
    if(m1 == 0){
      printf(1, "couldn't allocate mem?!!\n");
     e50:	83 ec 08             	sub    $0x8,%esp
     e53:	68 0a 42 00 00       	push   $0x420a
     e58:	6a 01                	push   $0x1
     e5a:	e8 81 2c 00 00       	call   3ae0 <printf>
      kill(ppid);
     e5f:	89 34 24             	mov    %esi,(%esp)
     e62:	e8 4b 2b 00 00       	call   39b2 <kill>
      exit();
     e67:	e8 16 2b 00 00       	call   3982 <exit>
     e6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000e70 <sharedfd>:

// two processes write to the same file descriptor
// is the offset shared? does inode locking work?
void
sharedfd(void)
{
     e70:	55                   	push   %ebp
     e71:	89 e5                	mov    %esp,%ebp
     e73:	57                   	push   %edi
     e74:	56                   	push   %esi
     e75:	53                   	push   %ebx
     e76:	83 ec 34             	sub    $0x34,%esp
  int fd, pid, i, n, nc, np;
  char buf[10];

  printf(1, "sharedfd test\n");
     e79:	68 2c 42 00 00       	push   $0x422c
     e7e:	6a 01                	push   $0x1
     e80:	e8 5b 2c 00 00       	call   3ae0 <printf>

  unlink("sharedfd");
     e85:	c7 04 24 3b 42 00 00 	movl   $0x423b,(%esp)
     e8c:	e8 41 2b 00 00       	call   39d2 <unlink>
  fd = open("sharedfd", O_CREATE|O_RDWR);
     e91:	5b                   	pop    %ebx
     e92:	5e                   	pop    %esi
     e93:	68 02 02 00 00       	push   $0x202
     e98:	68 3b 42 00 00       	push   $0x423b
     e9d:	e8 20 2b 00 00       	call   39c2 <open>
  if(fd < 0){
     ea2:	83 c4 10             	add    $0x10,%esp
     ea5:	85 c0                	test   %eax,%eax
     ea7:	0f 88 29 01 00 00    	js     fd6 <sharedfd+0x166>
     ead:	89 c7                	mov    %eax,%edi
    printf(1, "fstests: cannot open sharedfd for writing");
    return;
  }
  pid = fork();
  memset(buf, pid==0?'c':'p', sizeof(buf));
     eaf:	8d 75 de             	lea    -0x22(%ebp),%esi
     eb2:	bb e8 03 00 00       	mov    $0x3e8,%ebx
  fd = open("sharedfd", O_CREATE|O_RDWR);
  if(fd < 0){
    printf(1, "fstests: cannot open sharedfd for writing");
    return;
  }
  pid = fork();
     eb7:	e8 be 2a 00 00       	call   397a <fork>
  memset(buf, pid==0?'c':'p', sizeof(buf));
     ebc:	83 f8 01             	cmp    $0x1,%eax
  fd = open("sharedfd", O_CREATE|O_RDWR);
  if(fd < 0){
    printf(1, "fstests: cannot open sharedfd for writing");
    return;
  }
  pid = fork();
     ebf:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  memset(buf, pid==0?'c':'p', sizeof(buf));
     ec2:	19 c0                	sbb    %eax,%eax
     ec4:	83 ec 04             	sub    $0x4,%esp
     ec7:	83 e0 f3             	and    $0xfffffff3,%eax
     eca:	6a 0a                	push   $0xa
     ecc:	83 c0 70             	add    $0x70,%eax
     ecf:	50                   	push   %eax
     ed0:	56                   	push   %esi
     ed1:	e8 1a 29 00 00       	call   37f0 <memset>
     ed6:	83 c4 10             	add    $0x10,%esp
     ed9:	eb 0a                	jmp    ee5 <sharedfd+0x75>
     edb:	90                   	nop
     edc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(i = 0; i < 1000; i++){
     ee0:	83 eb 01             	sub    $0x1,%ebx
     ee3:	74 26                	je     f0b <sharedfd+0x9b>
    if(write(fd, buf, sizeof(buf)) != sizeof(buf)){
     ee5:	83 ec 04             	sub    $0x4,%esp
     ee8:	6a 0a                	push   $0xa
     eea:	56                   	push   %esi
     eeb:	57                   	push   %edi
     eec:	e8 b1 2a 00 00       	call   39a2 <write>
     ef1:	83 c4 10             	add    $0x10,%esp
     ef4:	83 f8 0a             	cmp    $0xa,%eax
     ef7:	74 e7                	je     ee0 <sharedfd+0x70>
      printf(1, "fstests: write sharedfd failed\n");
     ef9:	83 ec 08             	sub    $0x8,%esp
     efc:	68 2c 4f 00 00       	push   $0x4f2c
     f01:	6a 01                	push   $0x1
     f03:	e8 d8 2b 00 00       	call   3ae0 <printf>
      break;
     f08:	83 c4 10             	add    $0x10,%esp
    }
  }
  if(pid == 0)
     f0b:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
     f0e:	85 c9                	test   %ecx,%ecx
     f10:	0f 84 f4 00 00 00    	je     100a <sharedfd+0x19a>
    exit();
  else
    wait(0);
     f16:	83 ec 0c             	sub    $0xc,%esp
     f19:	31 db                	xor    %ebx,%ebx
     f1b:	6a 00                	push   $0x0
     f1d:	e8 68 2a 00 00       	call   398a <wait>
  close(fd);
     f22:	89 3c 24             	mov    %edi,(%esp)
     f25:	8d 7d e8             	lea    -0x18(%ebp),%edi
     f28:	e8 7d 2a 00 00       	call   39aa <close>
  fd = open("sharedfd", 0);
     f2d:	58                   	pop    %eax
     f2e:	5a                   	pop    %edx
     f2f:	6a 00                	push   $0x0
     f31:	68 3b 42 00 00       	push   $0x423b
     f36:	e8 87 2a 00 00       	call   39c2 <open>
  if(fd < 0){
     f3b:	83 c4 10             	add    $0x10,%esp
     f3e:	31 d2                	xor    %edx,%edx
     f40:	85 c0                	test   %eax,%eax
  if(pid == 0)
    exit();
  else
    wait(0);
  close(fd);
  fd = open("sharedfd", 0);
     f42:	89 45 d0             	mov    %eax,-0x30(%ebp)
  if(fd < 0){
     f45:	0f 88 a5 00 00 00    	js     ff0 <sharedfd+0x180>
     f4b:	90                   	nop
     f4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "fstests: cannot open sharedfd for reading\n");
    return;
  }
  nc = np = 0;
  while((n = read(fd, buf, sizeof(buf))) > 0){
     f50:	83 ec 04             	sub    $0x4,%esp
     f53:	89 55 d4             	mov    %edx,-0x2c(%ebp)
     f56:	6a 0a                	push   $0xa
     f58:	56                   	push   %esi
     f59:	ff 75 d0             	pushl  -0x30(%ebp)
     f5c:	e8 39 2a 00 00       	call   399a <read>
     f61:	83 c4 10             	add    $0x10,%esp
     f64:	85 c0                	test   %eax,%eax
     f66:	7e 27                	jle    f8f <sharedfd+0x11f>
     f68:	89 f0                	mov    %esi,%eax
     f6a:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     f6d:	eb 13                	jmp    f82 <sharedfd+0x112>
     f6f:	90                   	nop
    for(i = 0; i < sizeof(buf); i++){
      if(buf[i] == 'c')
        nc++;
      if(buf[i] == 'p')
        np++;
     f70:	80 f9 70             	cmp    $0x70,%cl
     f73:	0f 94 c1             	sete   %cl
     f76:	0f b6 c9             	movzbl %cl,%ecx
     f79:	01 cb                	add    %ecx,%ebx
     f7b:	83 c0 01             	add    $0x1,%eax
    printf(1, "fstests: cannot open sharedfd for reading\n");
    return;
  }
  nc = np = 0;
  while((n = read(fd, buf, sizeof(buf))) > 0){
    for(i = 0; i < sizeof(buf); i++){
     f7e:	39 c7                	cmp    %eax,%edi
     f80:	74 ce                	je     f50 <sharedfd+0xe0>
      if(buf[i] == 'c')
     f82:	0f b6 08             	movzbl (%eax),%ecx
     f85:	80 f9 63             	cmp    $0x63,%cl
     f88:	75 e6                	jne    f70 <sharedfd+0x100>
        nc++;
     f8a:	83 c2 01             	add    $0x1,%edx
     f8d:	eb ec                	jmp    f7b <sharedfd+0x10b>
      if(buf[i] == 'p')
        np++;
    }
  }
  close(fd);
     f8f:	83 ec 0c             	sub    $0xc,%esp
     f92:	ff 75 d0             	pushl  -0x30(%ebp)
     f95:	e8 10 2a 00 00       	call   39aa <close>
  unlink("sharedfd");
     f9a:	c7 04 24 3b 42 00 00 	movl   $0x423b,(%esp)
     fa1:	e8 2c 2a 00 00       	call   39d2 <unlink>
  if(nc == 10000 && np == 10000){
     fa6:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     fa9:	83 c4 10             	add    $0x10,%esp
     fac:	81 fa 10 27 00 00    	cmp    $0x2710,%edx
     fb2:	75 5b                	jne    100f <sharedfd+0x19f>
     fb4:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
     fba:	75 53                	jne    100f <sharedfd+0x19f>
    printf(1, "sharedfd ok\n");
     fbc:	83 ec 08             	sub    $0x8,%esp
     fbf:	68 44 42 00 00       	push   $0x4244
     fc4:	6a 01                	push   $0x1
     fc6:	e8 15 2b 00 00       	call   3ae0 <printf>
     fcb:	83 c4 10             	add    $0x10,%esp
  } else {
    printf(1, "sharedfd oops %d %d\n", nc, np);
    exit();
  }
}
     fce:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fd1:	5b                   	pop    %ebx
     fd2:	5e                   	pop    %esi
     fd3:	5f                   	pop    %edi
     fd4:	5d                   	pop    %ebp
     fd5:	c3                   	ret    
  printf(1, "sharedfd test\n");

  unlink("sharedfd");
  fd = open("sharedfd", O_CREATE|O_RDWR);
  if(fd < 0){
    printf(1, "fstests: cannot open sharedfd for writing");
     fd6:	83 ec 08             	sub    $0x8,%esp
     fd9:	68 00 4f 00 00       	push   $0x4f00
     fde:	6a 01                	push   $0x1
     fe0:	e8 fb 2a 00 00       	call   3ae0 <printf>
    return;
     fe5:	83 c4 10             	add    $0x10,%esp
    printf(1, "sharedfd ok\n");
  } else {
    printf(1, "sharedfd oops %d %d\n", nc, np);
    exit();
  }
}
     fe8:	8d 65 f4             	lea    -0xc(%ebp),%esp
     feb:	5b                   	pop    %ebx
     fec:	5e                   	pop    %esi
     fed:	5f                   	pop    %edi
     fee:	5d                   	pop    %ebp
     fef:	c3                   	ret    
  else
    wait(0);
  close(fd);
  fd = open("sharedfd", 0);
  if(fd < 0){
    printf(1, "fstests: cannot open sharedfd for reading\n");
     ff0:	83 ec 08             	sub    $0x8,%esp
     ff3:	68 4c 4f 00 00       	push   $0x4f4c
     ff8:	6a 01                	push   $0x1
     ffa:	e8 e1 2a 00 00       	call   3ae0 <printf>
    return;
     fff:	83 c4 10             	add    $0x10,%esp
    printf(1, "sharedfd ok\n");
  } else {
    printf(1, "sharedfd oops %d %d\n", nc, np);
    exit();
  }
}
    1002:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1005:	5b                   	pop    %ebx
    1006:	5e                   	pop    %esi
    1007:	5f                   	pop    %edi
    1008:	5d                   	pop    %ebp
    1009:	c3                   	ret    
      printf(1, "fstests: write sharedfd failed\n");
      break;
    }
  }
  if(pid == 0)
    exit();
    100a:	e8 73 29 00 00       	call   3982 <exit>
  close(fd);
  unlink("sharedfd");
  if(nc == 10000 && np == 10000){
    printf(1, "sharedfd ok\n");
  } else {
    printf(1, "sharedfd oops %d %d\n", nc, np);
    100f:	53                   	push   %ebx
    1010:	52                   	push   %edx
    1011:	68 51 42 00 00       	push   $0x4251
    1016:	6a 01                	push   $0x1
    1018:	e8 c3 2a 00 00       	call   3ae0 <printf>
    exit();
    101d:	e8 60 29 00 00       	call   3982 <exit>
    1022:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1029:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001030 <fourfiles>:

// four processes write different files at the same
// time, to test block allocation.
void
fourfiles(void)
{
    1030:	55                   	push   %ebp
    1031:	89 e5                	mov    %esp,%ebp
    1033:	57                   	push   %edi
    1034:	56                   	push   %esi
    1035:	53                   	push   %ebx
  int fd, pid, i, j, n, total, pi;
  char *names[] = { "f0", "f1", "f2", "f3" };
  char *fname;

  printf(1, "fourfiles test\n");
    1036:	be 66 42 00 00       	mov    $0x4266,%esi

  for(pi = 0; pi < 4; pi++){
    103b:	31 db                	xor    %ebx,%ebx

// four processes write different files at the same
// time, to test block allocation.
void
fourfiles(void)
{
    103d:	83 ec 34             	sub    $0x34,%esp
  int fd, pid, i, j, n, total, pi;
  char *names[] = { "f0", "f1", "f2", "f3" };
    1040:	c7 45 d8 66 42 00 00 	movl   $0x4266,-0x28(%ebp)
    1047:	c7 45 dc af 43 00 00 	movl   $0x43af,-0x24(%ebp)
  char *fname;

  printf(1, "fourfiles test\n");
    104e:	68 6c 42 00 00       	push   $0x426c
    1053:	6a 01                	push   $0x1
// time, to test block allocation.
void
fourfiles(void)
{
  int fd, pid, i, j, n, total, pi;
  char *names[] = { "f0", "f1", "f2", "f3" };
    1055:	c7 45 e0 b3 43 00 00 	movl   $0x43b3,-0x20(%ebp)
    105c:	c7 45 e4 69 42 00 00 	movl   $0x4269,-0x1c(%ebp)
  char *fname;

  printf(1, "fourfiles test\n");
    1063:	e8 78 2a 00 00       	call   3ae0 <printf>
    1068:	83 c4 10             	add    $0x10,%esp

  for(pi = 0; pi < 4; pi++){
    fname = names[pi];
    unlink(fname);
    106b:	83 ec 0c             	sub    $0xc,%esp
    106e:	56                   	push   %esi
    106f:	e8 5e 29 00 00       	call   39d2 <unlink>

    pid = fork();
    1074:	e8 01 29 00 00       	call   397a <fork>
    if(pid < 0){
    1079:	83 c4 10             	add    $0x10,%esp
    107c:	85 c0                	test   %eax,%eax
    107e:	0f 88 a3 01 00 00    	js     1227 <fourfiles+0x1f7>
      printf(1, "fork failed\n");
      exit();
    }

    if(pid == 0){
    1084:	0f 84 03 01 00 00    	je     118d <fourfiles+0x15d>
  char *names[] = { "f0", "f1", "f2", "f3" };
  char *fname;

  printf(1, "fourfiles test\n");

  for(pi = 0; pi < 4; pi++){
    108a:	83 c3 01             	add    $0x1,%ebx
    108d:	83 fb 04             	cmp    $0x4,%ebx
    1090:	74 06                	je     1098 <fourfiles+0x68>
    1092:	8b 74 9d d8          	mov    -0x28(%ebp,%ebx,4),%esi
    1096:	eb d3                	jmp    106b <fourfiles+0x3b>
      exit();
    }
  }

  for(pi = 0; pi < 4; pi++){
    wait(0);
    1098:	83 ec 0c             	sub    $0xc,%esp
    109b:	bf 30 00 00 00       	mov    $0x30,%edi
    10a0:	6a 00                	push   $0x0
    10a2:	e8 e3 28 00 00       	call   398a <wait>
    10a7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    10ae:	e8 d7 28 00 00       	call   398a <wait>
    10b3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    10ba:	e8 cb 28 00 00       	call   398a <wait>
    10bf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    10c6:	e8 bf 28 00 00       	call   398a <wait>
    10cb:	83 c4 10             	add    $0x10,%esp
    10ce:	c7 45 d4 66 42 00 00 	movl   $0x4266,-0x2c(%ebp)
  }

  for(i = 0; i < 2; i++){
    fname = names[i];
    fd = open(fname, 0);
    10d5:	83 ec 08             	sub    $0x8,%esp
    total = 0;
    10d8:	31 db                	xor    %ebx,%ebx
    wait(0);
  }

  for(i = 0; i < 2; i++){
    fname = names[i];
    fd = open(fname, 0);
    10da:	6a 00                	push   $0x0
    10dc:	ff 75 d4             	pushl  -0x2c(%ebp)
    10df:	e8 de 28 00 00       	call   39c2 <open>
    total = 0;
    while((n = read(fd, buf, sizeof(buf))) > 0){
    10e4:	83 c4 10             	add    $0x10,%esp
    wait(0);
  }

  for(i = 0; i < 2; i++){
    fname = names[i];
    fd = open(fname, 0);
    10e7:	89 c6                	mov    %eax,%esi
    10e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    total = 0;
    while((n = read(fd, buf, sizeof(buf))) > 0){
    10f0:	83 ec 04             	sub    $0x4,%esp
    10f3:	68 00 20 00 00       	push   $0x2000
    10f8:	68 80 86 00 00       	push   $0x8680
    10fd:	56                   	push   %esi
    10fe:	e8 97 28 00 00       	call   399a <read>
    1103:	83 c4 10             	add    $0x10,%esp
    1106:	85 c0                	test   %eax,%eax
    1108:	7e 1c                	jle    1126 <fourfiles+0xf6>
    110a:	31 d2                	xor    %edx,%edx
    110c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      for(j = 0; j < n; j++){
        if(buf[j] != '0'+i){
    1110:	0f be 8a 80 86 00 00 	movsbl 0x8680(%edx),%ecx
    1117:	39 f9                	cmp    %edi,%ecx
    1119:	75 5e                	jne    1179 <fourfiles+0x149>
  for(i = 0; i < 2; i++){
    fname = names[i];
    fd = open(fname, 0);
    total = 0;
    while((n = read(fd, buf, sizeof(buf))) > 0){
      for(j = 0; j < n; j++){
    111b:	83 c2 01             	add    $0x1,%edx
    111e:	39 d0                	cmp    %edx,%eax
    1120:	75 ee                	jne    1110 <fourfiles+0xe0>
        if(buf[j] != '0'+i){
          printf(1, "wrong char\n");
          exit();
        }
      }
      total += n;
    1122:	01 c3                	add    %eax,%ebx
    1124:	eb ca                	jmp    10f0 <fourfiles+0xc0>
    }
    close(fd);
    1126:	83 ec 0c             	sub    $0xc,%esp
    1129:	56                   	push   %esi
    112a:	e8 7b 28 00 00       	call   39aa <close>
    if(total != 12*500){
    112f:	83 c4 10             	add    $0x10,%esp
    1132:	81 fb 70 17 00 00    	cmp    $0x1770,%ebx
    1138:	0f 85 d4 00 00 00    	jne    1212 <fourfiles+0x1e2>
      printf(1, "wrong length %d\n", total);
      exit();
    }
    unlink(fname);
    113e:	83 ec 0c             	sub    $0xc,%esp
    1141:	ff 75 d4             	pushl  -0x2c(%ebp)
    1144:	83 c7 01             	add    $0x1,%edi
    1147:	e8 86 28 00 00       	call   39d2 <unlink>

  for(pi = 0; pi < 4; pi++){
    wait(0);
  }

  for(i = 0; i < 2; i++){
    114c:	83 c4 10             	add    $0x10,%esp
    114f:	83 ff 32             	cmp    $0x32,%edi
    1152:	75 1a                	jne    116e <fourfiles+0x13e>
      exit();
    }
    unlink(fname);
  }

  printf(1, "fourfiles ok\n");
    1154:	83 ec 08             	sub    $0x8,%esp
    1157:	68 aa 42 00 00       	push   $0x42aa
    115c:	6a 01                	push   $0x1
    115e:	e8 7d 29 00 00       	call   3ae0 <printf>
}
    1163:	83 c4 10             	add    $0x10,%esp
    1166:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1169:	5b                   	pop    %ebx
    116a:	5e                   	pop    %esi
    116b:	5f                   	pop    %edi
    116c:	5d                   	pop    %ebp
    116d:	c3                   	ret    
    116e:	8b 45 dc             	mov    -0x24(%ebp),%eax
    1171:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    1174:	e9 5c ff ff ff       	jmp    10d5 <fourfiles+0xa5>
    fd = open(fname, 0);
    total = 0;
    while((n = read(fd, buf, sizeof(buf))) > 0){
      for(j = 0; j < n; j++){
        if(buf[j] != '0'+i){
          printf(1, "wrong char\n");
    1179:	83 ec 08             	sub    $0x8,%esp
    117c:	68 8d 42 00 00       	push   $0x428d
    1181:	6a 01                	push   $0x1
    1183:	e8 58 29 00 00       	call   3ae0 <printf>
          exit();
    1188:	e8 f5 27 00 00       	call   3982 <exit>
      printf(1, "fork failed\n");
      exit();
    }

    if(pid == 0){
      fd = open(fname, O_CREATE | O_RDWR);
    118d:	83 ec 08             	sub    $0x8,%esp
    1190:	68 02 02 00 00       	push   $0x202
    1195:	56                   	push   %esi
    1196:	e8 27 28 00 00       	call   39c2 <open>
      if(fd < 0){
    119b:	83 c4 10             	add    $0x10,%esp
    119e:	85 c0                	test   %eax,%eax
      printf(1, "fork failed\n");
      exit();
    }

    if(pid == 0){
      fd = open(fname, O_CREATE | O_RDWR);
    11a0:	89 c6                	mov    %eax,%esi
      if(fd < 0){
    11a2:	78 5a                	js     11fe <fourfiles+0x1ce>
        printf(1, "create failed\n");
        exit();
      }

      memset(buf, '0'+pi, 512);
    11a4:	83 ec 04             	sub    $0x4,%esp
    11a7:	83 c3 30             	add    $0x30,%ebx
    11aa:	68 00 02 00 00       	push   $0x200
    11af:	53                   	push   %ebx
    11b0:	bb 0c 00 00 00       	mov    $0xc,%ebx
    11b5:	68 80 86 00 00       	push   $0x8680
    11ba:	e8 31 26 00 00       	call   37f0 <memset>
    11bf:	83 c4 10             	add    $0x10,%esp
      for(i = 0; i < 12; i++){
        if((n = write(fd, buf, 500)) != 500){
    11c2:	83 ec 04             	sub    $0x4,%esp
    11c5:	68 f4 01 00 00       	push   $0x1f4
    11ca:	68 80 86 00 00       	push   $0x8680
    11cf:	56                   	push   %esi
    11d0:	e8 cd 27 00 00       	call   39a2 <write>
    11d5:	83 c4 10             	add    $0x10,%esp
    11d8:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    11dd:	75 0a                	jne    11e9 <fourfiles+0x1b9>
        printf(1, "create failed\n");
        exit();
      }

      memset(buf, '0'+pi, 512);
      for(i = 0; i < 12; i++){
    11df:	83 eb 01             	sub    $0x1,%ebx
    11e2:	75 de                	jne    11c2 <fourfiles+0x192>
        if((n = write(fd, buf, 500)) != 500){
          printf(1, "write failed %d\n", n);
          exit();
        }
      }
      exit();
    11e4:	e8 99 27 00 00       	call   3982 <exit>
      }

      memset(buf, '0'+pi, 512);
      for(i = 0; i < 12; i++){
        if((n = write(fd, buf, 500)) != 500){
          printf(1, "write failed %d\n", n);
    11e9:	83 ec 04             	sub    $0x4,%esp
    11ec:	50                   	push   %eax
    11ed:	68 7c 42 00 00       	push   $0x427c
    11f2:	6a 01                	push   $0x1
    11f4:	e8 e7 28 00 00       	call   3ae0 <printf>
          exit();
    11f9:	e8 84 27 00 00       	call   3982 <exit>
    }

    if(pid == 0){
      fd = open(fname, O_CREATE | O_RDWR);
      if(fd < 0){
        printf(1, "create failed\n");
    11fe:	83 ec 08             	sub    $0x8,%esp
    1201:	68 07 45 00 00       	push   $0x4507
    1206:	6a 01                	push   $0x1
    1208:	e8 d3 28 00 00       	call   3ae0 <printf>
        exit();
    120d:	e8 70 27 00 00       	call   3982 <exit>
      }
      total += n;
    }
    close(fd);
    if(total != 12*500){
      printf(1, "wrong length %d\n", total);
    1212:	83 ec 04             	sub    $0x4,%esp
    1215:	53                   	push   %ebx
    1216:	68 99 42 00 00       	push   $0x4299
    121b:	6a 01                	push   $0x1
    121d:	e8 be 28 00 00       	call   3ae0 <printf>
      exit();
    1222:	e8 5b 27 00 00       	call   3982 <exit>
    fname = names[pi];
    unlink(fname);

    pid = fork();
    if(pid < 0){
      printf(1, "fork failed\n");
    1227:	83 ec 08             	sub    $0x8,%esp
    122a:	68 41 4d 00 00       	push   $0x4d41
    122f:	6a 01                	push   $0x1
    1231:	e8 aa 28 00 00       	call   3ae0 <printf>
      exit();
    1236:	e8 47 27 00 00       	call   3982 <exit>
    123b:	90                   	nop
    123c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001240 <createdelete>:
}

// four processes create and delete different files in same directory
void
createdelete(void)
{
    1240:	55                   	push   %ebp
    1241:	89 e5                	mov    %esp,%ebp
    1243:	57                   	push   %edi
    1244:	56                   	push   %esi
    1245:	53                   	push   %ebx
  int pid, i, fd, pi;
  char name[32];

  printf(1, "createdelete test\n");

  for(pi = 0; pi < 4; pi++){
    1246:	31 db                	xor    %ebx,%ebx
}

// four processes create and delete different files in same directory
void
createdelete(void)
{
    1248:	83 ec 44             	sub    $0x44,%esp
  enum { N = 20 };
  int pid, i, fd, pi;
  char name[32];

  printf(1, "createdelete test\n");
    124b:	68 b8 42 00 00       	push   $0x42b8
    1250:	6a 01                	push   $0x1
    1252:	e8 89 28 00 00       	call   3ae0 <printf>
    1257:	83 c4 10             	add    $0x10,%esp

  for(pi = 0; pi < 4; pi++){
    pid = fork();
    125a:	e8 1b 27 00 00       	call   397a <fork>
    if(pid < 0){
    125f:	85 c0                	test   %eax,%eax
    1261:	0f 88 cf 01 00 00    	js     1436 <createdelete+0x1f6>
      printf(1, "fork failed\n");
      exit();
    }

    if(pid == 0){
    1267:	0f 84 0e 01 00 00    	je     137b <createdelete+0x13b>
  int pid, i, fd, pi;
  char name[32];

  printf(1, "createdelete test\n");

  for(pi = 0; pi < 4; pi++){
    126d:	83 c3 01             	add    $0x1,%ebx
    1270:	83 fb 04             	cmp    $0x4,%ebx
    1273:	75 e5                	jne    125a <createdelete+0x1a>
      exit();
    }
  }

  for(pi = 0; pi < 4; pi++){
    wait(0);
    1275:	83 ec 0c             	sub    $0xc,%esp
    1278:	8d 7d c8             	lea    -0x38(%ebp),%edi
  }

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    127b:	31 f6                	xor    %esi,%esi
      exit();
    }
  }

  for(pi = 0; pi < 4; pi++){
    wait(0);
    127d:	6a 00                	push   $0x0
    127f:	e8 06 27 00 00       	call   398a <wait>
    1284:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    128b:	e8 fa 26 00 00       	call   398a <wait>
    1290:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1297:	e8 ee 26 00 00       	call   398a <wait>
    129c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    12a3:	e8 e2 26 00 00       	call   398a <wait>
  }

  name[0] = name[1] = name[2] = 0;
    12a8:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    12ac:	83 c4 10             	add    $0x10,%esp
    12af:	90                   	nop
    12b0:	8d 46 30             	lea    0x30(%esi),%eax
    12b3:	83 fe 09             	cmp    $0x9,%esi
      exit();
    }

    if(pid == 0){
      name[0] = 'p' + pi;
      name[2] = '\0';
    12b6:	bb 70 00 00 00       	mov    $0x70,%ebx
    12bb:	0f 9f c2             	setg   %dl
    12be:	85 f6                	test   %esi,%esi
    12c0:	88 45 c7             	mov    %al,-0x39(%ebp)
    12c3:	0f 94 c0             	sete   %al
    12c6:	09 c2                	or     %eax,%edx
      name[1] = '0' + i;
      fd = open(name, 0);
      if((i == 0 || i >= N/2) && fd < 0){
        printf(1, "oops createdelete %s didn't exist\n", name);
        exit();
      } else if((i >= 1 && i < N/2) && fd >= 0){
    12c8:	8d 46 ff             	lea    -0x1(%esi),%eax
    12cb:	88 55 c6             	mov    %dl,-0x3a(%ebp)
    12ce:	89 45 c0             	mov    %eax,-0x40(%ebp)

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + pi;
      name[1] = '0' + i;
    12d1:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
      fd = open(name, 0);
    12d5:	83 ec 08             	sub    $0x8,%esp
  }

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + pi;
    12d8:	88 5d c8             	mov    %bl,-0x38(%ebp)
      name[1] = '0' + i;
      fd = open(name, 0);
    12db:	6a 00                	push   $0x0
    12dd:	57                   	push   %edi

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + pi;
      name[1] = '0' + i;
    12de:	88 45 c9             	mov    %al,-0x37(%ebp)
      fd = open(name, 0);
    12e1:	e8 dc 26 00 00       	call   39c2 <open>
      if((i == 0 || i >= N/2) && fd < 0){
    12e6:	89 c1                	mov    %eax,%ecx
    12e8:	83 c4 10             	add    $0x10,%esp
    12eb:	c1 e9 1f             	shr    $0x1f,%ecx
    12ee:	84 c9                	test   %cl,%cl
    12f0:	74 0a                	je     12fc <createdelete+0xbc>
    12f2:	80 7d c6 00          	cmpb   $0x0,-0x3a(%ebp)
    12f6:	0f 85 11 01 00 00    	jne    140d <createdelete+0x1cd>
        printf(1, "oops createdelete %s didn't exist\n", name);
        exit();
      } else if((i >= 1 && i < N/2) && fd >= 0){
    12fc:	83 7d c0 08          	cmpl   $0x8,-0x40(%ebp)
    1300:	0f 86 44 01 00 00    	jbe    144a <createdelete+0x20a>
        printf(1, "oops createdelete %s did exist\n", name);
        exit();
      }
      if(fd >= 0)
    1306:	85 c0                	test   %eax,%eax
    1308:	78 0c                	js     1316 <createdelete+0xd6>
        close(fd);
    130a:	83 ec 0c             	sub    $0xc,%esp
    130d:	50                   	push   %eax
    130e:	e8 97 26 00 00       	call   39aa <close>
    1313:	83 c4 10             	add    $0x10,%esp
    1316:	83 c3 01             	add    $0x1,%ebx
    wait(0);
  }

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
    1319:	80 fb 74             	cmp    $0x74,%bl
    131c:	75 b3                	jne    12d1 <createdelete+0x91>
  for(pi = 0; pi < 4; pi++){
    wait(0);
  }

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    131e:	83 c6 01             	add    $0x1,%esi
    1321:	83 fe 14             	cmp    $0x14,%esi
    1324:	75 8a                	jne    12b0 <createdelete+0x70>
    1326:	be 70 00 00 00       	mov    $0x70,%esi
    132b:	90                   	nop
    132c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1330:	8d 46 c0             	lea    -0x40(%esi),%eax
    1333:	bb 04 00 00 00       	mov    $0x4,%ebx
    1338:	88 45 c7             	mov    %al,-0x39(%ebp)
    }
  }

  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + i;
    133b:	89 f0                	mov    %esi,%eax
      name[1] = '0' + i;
      unlink(name);
    133d:	83 ec 0c             	sub    $0xc,%esp
    }
  }

  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + i;
    1340:	88 45 c8             	mov    %al,-0x38(%ebp)
      name[1] = '0' + i;
    1343:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
      unlink(name);
    1347:	57                   	push   %edi
  }

  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + i;
      name[1] = '0' + i;
    1348:	88 45 c9             	mov    %al,-0x37(%ebp)
      unlink(name);
    134b:	e8 82 26 00 00       	call   39d2 <unlink>
        close(fd);
    }
  }

  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
    1350:	83 c4 10             	add    $0x10,%esp
    1353:	83 eb 01             	sub    $0x1,%ebx
    1356:	75 e3                	jne    133b <createdelete+0xfb>
    1358:	83 c6 01             	add    $0x1,%esi
      if(fd >= 0)
        close(fd);
    }
  }

  for(i = 0; i < N; i++){
    135b:	89 f0                	mov    %esi,%eax
    135d:	3c 84                	cmp    $0x84,%al
    135f:	75 cf                	jne    1330 <createdelete+0xf0>
      name[1] = '0' + i;
      unlink(name);
    }
  }

  printf(1, "createdelete ok\n");
    1361:	83 ec 08             	sub    $0x8,%esp
    1364:	68 cb 42 00 00       	push   $0x42cb
    1369:	6a 01                	push   $0x1
    136b:	e8 70 27 00 00       	call   3ae0 <printf>
}
    1370:	83 c4 10             	add    $0x10,%esp
    1373:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1376:	5b                   	pop    %ebx
    1377:	5e                   	pop    %esi
    1378:	5f                   	pop    %edi
    1379:	5d                   	pop    %ebp
    137a:	c3                   	ret    
      printf(1, "fork failed\n");
      exit();
    }

    if(pid == 0){
      name[0] = 'p' + pi;
    137b:	83 c3 70             	add    $0x70,%ebx
      name[2] = '\0';
    137e:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    1382:	be 01 00 00 00       	mov    $0x1,%esi
      printf(1, "fork failed\n");
      exit();
    }

    if(pid == 0){
      name[0] = 'p' + pi;
    1387:	88 5d c8             	mov    %bl,-0x38(%ebp)
    138a:	8d 7d c8             	lea    -0x38(%ebp),%edi
      name[2] = '\0';
    138d:	31 db                	xor    %ebx,%ebx
    138f:	eb 12                	jmp    13a3 <createdelete+0x163>
    1391:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      for(i = 0; i < N; i++){
    1398:	83 fe 14             	cmp    $0x14,%esi
    139b:	74 6b                	je     1408 <createdelete+0x1c8>
    139d:	83 c3 01             	add    $0x1,%ebx
    13a0:	83 c6 01             	add    $0x1,%esi
        name[1] = '0' + i;
        fd = open(name, O_CREATE | O_RDWR);
    13a3:	83 ec 08             	sub    $0x8,%esp

    if(pid == 0){
      name[0] = 'p' + pi;
      name[2] = '\0';
      for(i = 0; i < N; i++){
        name[1] = '0' + i;
    13a6:	8d 43 30             	lea    0x30(%ebx),%eax
        fd = open(name, O_CREATE | O_RDWR);
    13a9:	68 02 02 00 00       	push   $0x202
    13ae:	57                   	push   %edi

    if(pid == 0){
      name[0] = 'p' + pi;
      name[2] = '\0';
      for(i = 0; i < N; i++){
        name[1] = '0' + i;
    13af:	88 45 c9             	mov    %al,-0x37(%ebp)
        fd = open(name, O_CREATE | O_RDWR);
    13b2:	e8 0b 26 00 00       	call   39c2 <open>
        if(fd < 0){
    13b7:	83 c4 10             	add    $0x10,%esp
    13ba:	85 c0                	test   %eax,%eax
    13bc:	78 64                	js     1422 <createdelete+0x1e2>
          printf(1, "create failed\n");
          exit();
        }
        close(fd);
    13be:	83 ec 0c             	sub    $0xc,%esp
    13c1:	50                   	push   %eax
    13c2:	e8 e3 25 00 00       	call   39aa <close>
        if(i > 0 && (i % 2 ) == 0){
    13c7:	83 c4 10             	add    $0x10,%esp
    13ca:	85 db                	test   %ebx,%ebx
    13cc:	74 cf                	je     139d <createdelete+0x15d>
    13ce:	f6 c3 01             	test   $0x1,%bl
    13d1:	75 c5                	jne    1398 <createdelete+0x158>
          name[1] = '0' + (i / 2);
          if(unlink(name) < 0){
    13d3:	83 ec 0c             	sub    $0xc,%esp
          printf(1, "create failed\n");
          exit();
        }
        close(fd);
        if(i > 0 && (i % 2 ) == 0){
          name[1] = '0' + (i / 2);
    13d6:	89 d8                	mov    %ebx,%eax
    13d8:	d1 f8                	sar    %eax
          if(unlink(name) < 0){
    13da:	57                   	push   %edi
          printf(1, "create failed\n");
          exit();
        }
        close(fd);
        if(i > 0 && (i % 2 ) == 0){
          name[1] = '0' + (i / 2);
    13db:	83 c0 30             	add    $0x30,%eax
    13de:	88 45 c9             	mov    %al,-0x37(%ebp)
          if(unlink(name) < 0){
    13e1:	e8 ec 25 00 00       	call   39d2 <unlink>
    13e6:	83 c4 10             	add    $0x10,%esp
    13e9:	85 c0                	test   %eax,%eax
    13eb:	79 ab                	jns    1398 <createdelete+0x158>
            printf(1, "unlink failed\n");
    13ed:	83 ec 08             	sub    $0x8,%esp
    13f0:	68 b9 3e 00 00       	push   $0x3eb9
    13f5:	6a 01                	push   $0x1
    13f7:	e8 e4 26 00 00       	call   3ae0 <printf>
            exit();
    13fc:	e8 81 25 00 00       	call   3982 <exit>
    1401:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
          }
        }
      }
      exit();
    1408:	e8 75 25 00 00       	call   3982 <exit>
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + pi;
      name[1] = '0' + i;
      fd = open(name, 0);
      if((i == 0 || i >= N/2) && fd < 0){
        printf(1, "oops createdelete %s didn't exist\n", name);
    140d:	83 ec 04             	sub    $0x4,%esp
    1410:	57                   	push   %edi
    1411:	68 78 4f 00 00       	push   $0x4f78
    1416:	6a 01                	push   $0x1
    1418:	e8 c3 26 00 00       	call   3ae0 <printf>
        exit();
    141d:	e8 60 25 00 00       	call   3982 <exit>
      name[2] = '\0';
      for(i = 0; i < N; i++){
        name[1] = '0' + i;
        fd = open(name, O_CREATE | O_RDWR);
        if(fd < 0){
          printf(1, "create failed\n");
    1422:	83 ec 08             	sub    $0x8,%esp
    1425:	68 07 45 00 00       	push   $0x4507
    142a:	6a 01                	push   $0x1
    142c:	e8 af 26 00 00       	call   3ae0 <printf>
          exit();
    1431:	e8 4c 25 00 00       	call   3982 <exit>
  printf(1, "createdelete test\n");

  for(pi = 0; pi < 4; pi++){
    pid = fork();
    if(pid < 0){
      printf(1, "fork failed\n");
    1436:	83 ec 08             	sub    $0x8,%esp
    1439:	68 41 4d 00 00       	push   $0x4d41
    143e:	6a 01                	push   $0x1
    1440:	e8 9b 26 00 00       	call   3ae0 <printf>
      exit();
    1445:	e8 38 25 00 00       	call   3982 <exit>
      name[1] = '0' + i;
      fd = open(name, 0);
      if((i == 0 || i >= N/2) && fd < 0){
        printf(1, "oops createdelete %s didn't exist\n", name);
        exit();
      } else if((i >= 1 && i < N/2) && fd >= 0){
    144a:	85 c0                	test   %eax,%eax
    144c:	0f 88 c4 fe ff ff    	js     1316 <createdelete+0xd6>
        printf(1, "oops createdelete %s did exist\n", name);
    1452:	83 ec 04             	sub    $0x4,%esp
    1455:	57                   	push   %edi
    1456:	68 9c 4f 00 00       	push   $0x4f9c
    145b:	6a 01                	push   $0x1
    145d:	e8 7e 26 00 00       	call   3ae0 <printf>
        exit();
    1462:	e8 1b 25 00 00       	call   3982 <exit>
    1467:	89 f6                	mov    %esi,%esi
    1469:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001470 <unlinkread>:
}

// can I unlink a file and still read it?
void
unlinkread(void)
{
    1470:	55                   	push   %ebp
    1471:	89 e5                	mov    %esp,%ebp
    1473:	56                   	push   %esi
    1474:	53                   	push   %ebx
  int fd, fd1;

  printf(1, "unlinkread test\n");
    1475:	83 ec 08             	sub    $0x8,%esp
    1478:	68 dc 42 00 00       	push   $0x42dc
    147d:	6a 01                	push   $0x1
    147f:	e8 5c 26 00 00       	call   3ae0 <printf>
  fd = open("unlinkread", O_CREATE | O_RDWR);
    1484:	5b                   	pop    %ebx
    1485:	5e                   	pop    %esi
    1486:	68 02 02 00 00       	push   $0x202
    148b:	68 ed 42 00 00       	push   $0x42ed
    1490:	e8 2d 25 00 00       	call   39c2 <open>
  if(fd < 0){
    1495:	83 c4 10             	add    $0x10,%esp
    1498:	85 c0                	test   %eax,%eax
    149a:	0f 88 e6 00 00 00    	js     1586 <unlinkread+0x116>
    printf(1, "create unlinkread failed\n");
    exit();
  }
  write(fd, "hello", 5);
    14a0:	83 ec 04             	sub    $0x4,%esp
    14a3:	89 c3                	mov    %eax,%ebx
    14a5:	6a 05                	push   $0x5
    14a7:	68 12 43 00 00       	push   $0x4312
    14ac:	50                   	push   %eax
    14ad:	e8 f0 24 00 00       	call   39a2 <write>
  close(fd);
    14b2:	89 1c 24             	mov    %ebx,(%esp)
    14b5:	e8 f0 24 00 00       	call   39aa <close>

  fd = open("unlinkread", O_RDWR);
    14ba:	58                   	pop    %eax
    14bb:	5a                   	pop    %edx
    14bc:	6a 02                	push   $0x2
    14be:	68 ed 42 00 00       	push   $0x42ed
    14c3:	e8 fa 24 00 00       	call   39c2 <open>
  if(fd < 0){
    14c8:	83 c4 10             	add    $0x10,%esp
    14cb:	85 c0                	test   %eax,%eax
    exit();
  }
  write(fd, "hello", 5);
  close(fd);

  fd = open("unlinkread", O_RDWR);
    14cd:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    14cf:	0f 88 10 01 00 00    	js     15e5 <unlinkread+0x175>
    printf(1, "open unlinkread failed\n");
    exit();
  }
  if(unlink("unlinkread") != 0){
    14d5:	83 ec 0c             	sub    $0xc,%esp
    14d8:	68 ed 42 00 00       	push   $0x42ed
    14dd:	e8 f0 24 00 00       	call   39d2 <unlink>
    14e2:	83 c4 10             	add    $0x10,%esp
    14e5:	85 c0                	test   %eax,%eax
    14e7:	0f 85 e5 00 00 00    	jne    15d2 <unlinkread+0x162>
    printf(1, "unlink unlinkread failed\n");
    exit();
  }

  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    14ed:	83 ec 08             	sub    $0x8,%esp
    14f0:	68 02 02 00 00       	push   $0x202
    14f5:	68 ed 42 00 00       	push   $0x42ed
    14fa:	e8 c3 24 00 00       	call   39c2 <open>
  write(fd1, "yyy", 3);
    14ff:	83 c4 0c             	add    $0xc,%esp
  if(unlink("unlinkread") != 0){
    printf(1, "unlink unlinkread failed\n");
    exit();
  }

  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    1502:	89 c6                	mov    %eax,%esi
  write(fd1, "yyy", 3);
    1504:	6a 03                	push   $0x3
    1506:	68 4a 43 00 00       	push   $0x434a
    150b:	50                   	push   %eax
    150c:	e8 91 24 00 00       	call   39a2 <write>
  close(fd1);
    1511:	89 34 24             	mov    %esi,(%esp)
    1514:	e8 91 24 00 00       	call   39aa <close>

  if(read(fd, buf, sizeof(buf)) != 5){
    1519:	83 c4 0c             	add    $0xc,%esp
    151c:	68 00 20 00 00       	push   $0x2000
    1521:	68 80 86 00 00       	push   $0x8680
    1526:	53                   	push   %ebx
    1527:	e8 6e 24 00 00       	call   399a <read>
    152c:	83 c4 10             	add    $0x10,%esp
    152f:	83 f8 05             	cmp    $0x5,%eax
    1532:	0f 85 87 00 00 00    	jne    15bf <unlinkread+0x14f>
    printf(1, "unlinkread read failed");
    exit();
  }
  if(buf[0] != 'h'){
    1538:	80 3d 80 86 00 00 68 	cmpb   $0x68,0x8680
    153f:	75 6b                	jne    15ac <unlinkread+0x13c>
    printf(1, "unlinkread wrong data\n");
    exit();
  }
  if(write(fd, buf, 10) != 10){
    1541:	83 ec 04             	sub    $0x4,%esp
    1544:	6a 0a                	push   $0xa
    1546:	68 80 86 00 00       	push   $0x8680
    154b:	53                   	push   %ebx
    154c:	e8 51 24 00 00       	call   39a2 <write>
    1551:	83 c4 10             	add    $0x10,%esp
    1554:	83 f8 0a             	cmp    $0xa,%eax
    1557:	75 40                	jne    1599 <unlinkread+0x129>
    printf(1, "unlinkread write failed\n");
    exit();
  }
  close(fd);
    1559:	83 ec 0c             	sub    $0xc,%esp
    155c:	53                   	push   %ebx
    155d:	e8 48 24 00 00       	call   39aa <close>
  unlink("unlinkread");
    1562:	c7 04 24 ed 42 00 00 	movl   $0x42ed,(%esp)
    1569:	e8 64 24 00 00       	call   39d2 <unlink>
  printf(1, "unlinkread ok\n");
    156e:	58                   	pop    %eax
    156f:	5a                   	pop    %edx
    1570:	68 95 43 00 00       	push   $0x4395
    1575:	6a 01                	push   $0x1
    1577:	e8 64 25 00 00       	call   3ae0 <printf>
}
    157c:	83 c4 10             	add    $0x10,%esp
    157f:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1582:	5b                   	pop    %ebx
    1583:	5e                   	pop    %esi
    1584:	5d                   	pop    %ebp
    1585:	c3                   	ret    
  int fd, fd1;

  printf(1, "unlinkread test\n");
  fd = open("unlinkread", O_CREATE | O_RDWR);
  if(fd < 0){
    printf(1, "create unlinkread failed\n");
    1586:	51                   	push   %ecx
    1587:	51                   	push   %ecx
    1588:	68 f8 42 00 00       	push   $0x42f8
    158d:	6a 01                	push   $0x1
    158f:	e8 4c 25 00 00       	call   3ae0 <printf>
    exit();
    1594:	e8 e9 23 00 00       	call   3982 <exit>
  if(buf[0] != 'h'){
    printf(1, "unlinkread wrong data\n");
    exit();
  }
  if(write(fd, buf, 10) != 10){
    printf(1, "unlinkread write failed\n");
    1599:	51                   	push   %ecx
    159a:	51                   	push   %ecx
    159b:	68 7c 43 00 00       	push   $0x437c
    15a0:	6a 01                	push   $0x1
    15a2:	e8 39 25 00 00       	call   3ae0 <printf>
    exit();
    15a7:	e8 d6 23 00 00       	call   3982 <exit>
  if(read(fd, buf, sizeof(buf)) != 5){
    printf(1, "unlinkread read failed");
    exit();
  }
  if(buf[0] != 'h'){
    printf(1, "unlinkread wrong data\n");
    15ac:	53                   	push   %ebx
    15ad:	53                   	push   %ebx
    15ae:	68 65 43 00 00       	push   $0x4365
    15b3:	6a 01                	push   $0x1
    15b5:	e8 26 25 00 00       	call   3ae0 <printf>
    exit();
    15ba:	e8 c3 23 00 00       	call   3982 <exit>
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
  write(fd1, "yyy", 3);
  close(fd1);

  if(read(fd, buf, sizeof(buf)) != 5){
    printf(1, "unlinkread read failed");
    15bf:	56                   	push   %esi
    15c0:	56                   	push   %esi
    15c1:	68 4e 43 00 00       	push   $0x434e
    15c6:	6a 01                	push   $0x1
    15c8:	e8 13 25 00 00       	call   3ae0 <printf>
    exit();
    15cd:	e8 b0 23 00 00       	call   3982 <exit>
  if(fd < 0){
    printf(1, "open unlinkread failed\n");
    exit();
  }
  if(unlink("unlinkread") != 0){
    printf(1, "unlink unlinkread failed\n");
    15d2:	50                   	push   %eax
    15d3:	50                   	push   %eax
    15d4:	68 30 43 00 00       	push   $0x4330
    15d9:	6a 01                	push   $0x1
    15db:	e8 00 25 00 00       	call   3ae0 <printf>
    exit();
    15e0:	e8 9d 23 00 00       	call   3982 <exit>
  write(fd, "hello", 5);
  close(fd);

  fd = open("unlinkread", O_RDWR);
  if(fd < 0){
    printf(1, "open unlinkread failed\n");
    15e5:	50                   	push   %eax
    15e6:	50                   	push   %eax
    15e7:	68 18 43 00 00       	push   $0x4318
    15ec:	6a 01                	push   $0x1
    15ee:	e8 ed 24 00 00       	call   3ae0 <printf>
    exit();
    15f3:	e8 8a 23 00 00       	call   3982 <exit>
    15f8:	90                   	nop
    15f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001600 <linktest>:
  printf(1, "unlinkread ok\n");
}

void
linktest(void)
{
    1600:	55                   	push   %ebp
    1601:	89 e5                	mov    %esp,%ebp
    1603:	53                   	push   %ebx
    1604:	83 ec 0c             	sub    $0xc,%esp
  int fd;

  printf(1, "linktest\n");
    1607:	68 a4 43 00 00       	push   $0x43a4
    160c:	6a 01                	push   $0x1
    160e:	e8 cd 24 00 00       	call   3ae0 <printf>

  unlink("lf1");
    1613:	c7 04 24 ae 43 00 00 	movl   $0x43ae,(%esp)
    161a:	e8 b3 23 00 00       	call   39d2 <unlink>
  unlink("lf2");
    161f:	c7 04 24 b2 43 00 00 	movl   $0x43b2,(%esp)
    1626:	e8 a7 23 00 00       	call   39d2 <unlink>

  fd = open("lf1", O_CREATE|O_RDWR);
    162b:	58                   	pop    %eax
    162c:	5a                   	pop    %edx
    162d:	68 02 02 00 00       	push   $0x202
    1632:	68 ae 43 00 00       	push   $0x43ae
    1637:	e8 86 23 00 00       	call   39c2 <open>
  if(fd < 0){
    163c:	83 c4 10             	add    $0x10,%esp
    163f:	85 c0                	test   %eax,%eax
    1641:	0f 88 1e 01 00 00    	js     1765 <linktest+0x165>
    printf(1, "create lf1 failed\n");
    exit();
  }
  if(write(fd, "hello", 5) != 5){
    1647:	83 ec 04             	sub    $0x4,%esp
    164a:	89 c3                	mov    %eax,%ebx
    164c:	6a 05                	push   $0x5
    164e:	68 12 43 00 00       	push   $0x4312
    1653:	50                   	push   %eax
    1654:	e8 49 23 00 00       	call   39a2 <write>
    1659:	83 c4 10             	add    $0x10,%esp
    165c:	83 f8 05             	cmp    $0x5,%eax
    165f:	0f 85 98 01 00 00    	jne    17fd <linktest+0x1fd>
    printf(1, "write lf1 failed\n");
    exit();
  }
  close(fd);
    1665:	83 ec 0c             	sub    $0xc,%esp
    1668:	53                   	push   %ebx
    1669:	e8 3c 23 00 00       	call   39aa <close>

  if(link("lf1", "lf2") < 0){
    166e:	5b                   	pop    %ebx
    166f:	58                   	pop    %eax
    1670:	68 b2 43 00 00       	push   $0x43b2
    1675:	68 ae 43 00 00       	push   $0x43ae
    167a:	e8 63 23 00 00       	call   39e2 <link>
    167f:	83 c4 10             	add    $0x10,%esp
    1682:	85 c0                	test   %eax,%eax
    1684:	0f 88 60 01 00 00    	js     17ea <linktest+0x1ea>
    printf(1, "link lf1 lf2 failed\n");
    exit();
  }
  unlink("lf1");
    168a:	83 ec 0c             	sub    $0xc,%esp
    168d:	68 ae 43 00 00       	push   $0x43ae
    1692:	e8 3b 23 00 00       	call   39d2 <unlink>

  if(open("lf1", 0) >= 0){
    1697:	58                   	pop    %eax
    1698:	5a                   	pop    %edx
    1699:	6a 00                	push   $0x0
    169b:	68 ae 43 00 00       	push   $0x43ae
    16a0:	e8 1d 23 00 00       	call   39c2 <open>
    16a5:	83 c4 10             	add    $0x10,%esp
    16a8:	85 c0                	test   %eax,%eax
    16aa:	0f 89 27 01 00 00    	jns    17d7 <linktest+0x1d7>
    printf(1, "unlinked lf1 but it is still there!\n");
    exit();
  }

  fd = open("lf2", 0);
    16b0:	83 ec 08             	sub    $0x8,%esp
    16b3:	6a 00                	push   $0x0
    16b5:	68 b2 43 00 00       	push   $0x43b2
    16ba:	e8 03 23 00 00       	call   39c2 <open>
  if(fd < 0){
    16bf:	83 c4 10             	add    $0x10,%esp
    16c2:	85 c0                	test   %eax,%eax
  if(open("lf1", 0) >= 0){
    printf(1, "unlinked lf1 but it is still there!\n");
    exit();
  }

  fd = open("lf2", 0);
    16c4:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    16c6:	0f 88 f8 00 00 00    	js     17c4 <linktest+0x1c4>
    printf(1, "open lf2 failed\n");
    exit();
  }
  if(read(fd, buf, sizeof(buf)) != 5){
    16cc:	83 ec 04             	sub    $0x4,%esp
    16cf:	68 00 20 00 00       	push   $0x2000
    16d4:	68 80 86 00 00       	push   $0x8680
    16d9:	50                   	push   %eax
    16da:	e8 bb 22 00 00       	call   399a <read>
    16df:	83 c4 10             	add    $0x10,%esp
    16e2:	83 f8 05             	cmp    $0x5,%eax
    16e5:	0f 85 c6 00 00 00    	jne    17b1 <linktest+0x1b1>
    printf(1, "read lf2 failed\n");
    exit();
  }
  close(fd);
    16eb:	83 ec 0c             	sub    $0xc,%esp
    16ee:	53                   	push   %ebx
    16ef:	e8 b6 22 00 00       	call   39aa <close>

  if(link("lf2", "lf2") >= 0){
    16f4:	58                   	pop    %eax
    16f5:	5a                   	pop    %edx
    16f6:	68 b2 43 00 00       	push   $0x43b2
    16fb:	68 b2 43 00 00       	push   $0x43b2
    1700:	e8 dd 22 00 00       	call   39e2 <link>
    1705:	83 c4 10             	add    $0x10,%esp
    1708:	85 c0                	test   %eax,%eax
    170a:	0f 89 8e 00 00 00    	jns    179e <linktest+0x19e>
    printf(1, "link lf2 lf2 succeeded! oops\n");
    exit();
  }

  unlink("lf2");
    1710:	83 ec 0c             	sub    $0xc,%esp
    1713:	68 b2 43 00 00       	push   $0x43b2
    1718:	e8 b5 22 00 00       	call   39d2 <unlink>
  if(link("lf2", "lf1") >= 0){
    171d:	59                   	pop    %ecx
    171e:	5b                   	pop    %ebx
    171f:	68 ae 43 00 00       	push   $0x43ae
    1724:	68 b2 43 00 00       	push   $0x43b2
    1729:	e8 b4 22 00 00       	call   39e2 <link>
    172e:	83 c4 10             	add    $0x10,%esp
    1731:	85 c0                	test   %eax,%eax
    1733:	79 56                	jns    178b <linktest+0x18b>
    printf(1, "link non-existant succeeded! oops\n");
    exit();
  }

  if(link(".", "lf1") >= 0){
    1735:	83 ec 08             	sub    $0x8,%esp
    1738:	68 ae 43 00 00       	push   $0x43ae
    173d:	68 76 46 00 00       	push   $0x4676
    1742:	e8 9b 22 00 00       	call   39e2 <link>
    1747:	83 c4 10             	add    $0x10,%esp
    174a:	85 c0                	test   %eax,%eax
    174c:	79 2a                	jns    1778 <linktest+0x178>
    printf(1, "link . lf1 succeeded! oops\n");
    exit();
  }

  printf(1, "linktest ok\n");
    174e:	83 ec 08             	sub    $0x8,%esp
    1751:	68 4c 44 00 00       	push   $0x444c
    1756:	6a 01                	push   $0x1
    1758:	e8 83 23 00 00       	call   3ae0 <printf>
}
    175d:	83 c4 10             	add    $0x10,%esp
    1760:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1763:	c9                   	leave  
    1764:	c3                   	ret    
  unlink("lf1");
  unlink("lf2");

  fd = open("lf1", O_CREATE|O_RDWR);
  if(fd < 0){
    printf(1, "create lf1 failed\n");
    1765:	50                   	push   %eax
    1766:	50                   	push   %eax
    1767:	68 b6 43 00 00       	push   $0x43b6
    176c:	6a 01                	push   $0x1
    176e:	e8 6d 23 00 00       	call   3ae0 <printf>
    exit();
    1773:	e8 0a 22 00 00       	call   3982 <exit>
    printf(1, "link non-existant succeeded! oops\n");
    exit();
  }

  if(link(".", "lf1") >= 0){
    printf(1, "link . lf1 succeeded! oops\n");
    1778:	50                   	push   %eax
    1779:	50                   	push   %eax
    177a:	68 30 44 00 00       	push   $0x4430
    177f:	6a 01                	push   $0x1
    1781:	e8 5a 23 00 00       	call   3ae0 <printf>
    exit();
    1786:	e8 f7 21 00 00       	call   3982 <exit>
    exit();
  }

  unlink("lf2");
  if(link("lf2", "lf1") >= 0){
    printf(1, "link non-existant succeeded! oops\n");
    178b:	52                   	push   %edx
    178c:	52                   	push   %edx
    178d:	68 e4 4f 00 00       	push   $0x4fe4
    1792:	6a 01                	push   $0x1
    1794:	e8 47 23 00 00       	call   3ae0 <printf>
    exit();
    1799:	e8 e4 21 00 00       	call   3982 <exit>
    exit();
  }
  close(fd);

  if(link("lf2", "lf2") >= 0){
    printf(1, "link lf2 lf2 succeeded! oops\n");
    179e:	50                   	push   %eax
    179f:	50                   	push   %eax
    17a0:	68 12 44 00 00       	push   $0x4412
    17a5:	6a 01                	push   $0x1
    17a7:	e8 34 23 00 00       	call   3ae0 <printf>
    exit();
    17ac:	e8 d1 21 00 00       	call   3982 <exit>
  if(fd < 0){
    printf(1, "open lf2 failed\n");
    exit();
  }
  if(read(fd, buf, sizeof(buf)) != 5){
    printf(1, "read lf2 failed\n");
    17b1:	51                   	push   %ecx
    17b2:	51                   	push   %ecx
    17b3:	68 01 44 00 00       	push   $0x4401
    17b8:	6a 01                	push   $0x1
    17ba:	e8 21 23 00 00       	call   3ae0 <printf>
    exit();
    17bf:	e8 be 21 00 00       	call   3982 <exit>
    exit();
  }

  fd = open("lf2", 0);
  if(fd < 0){
    printf(1, "open lf2 failed\n");
    17c4:	53                   	push   %ebx
    17c5:	53                   	push   %ebx
    17c6:	68 f0 43 00 00       	push   $0x43f0
    17cb:	6a 01                	push   $0x1
    17cd:	e8 0e 23 00 00       	call   3ae0 <printf>
    exit();
    17d2:	e8 ab 21 00 00       	call   3982 <exit>
    exit();
  }
  unlink("lf1");

  if(open("lf1", 0) >= 0){
    printf(1, "unlinked lf1 but it is still there!\n");
    17d7:	50                   	push   %eax
    17d8:	50                   	push   %eax
    17d9:	68 bc 4f 00 00       	push   $0x4fbc
    17de:	6a 01                	push   $0x1
    17e0:	e8 fb 22 00 00       	call   3ae0 <printf>
    exit();
    17e5:	e8 98 21 00 00       	call   3982 <exit>
    exit();
  }
  close(fd);

  if(link("lf1", "lf2") < 0){
    printf(1, "link lf1 lf2 failed\n");
    17ea:	51                   	push   %ecx
    17eb:	51                   	push   %ecx
    17ec:	68 db 43 00 00       	push   $0x43db
    17f1:	6a 01                	push   $0x1
    17f3:	e8 e8 22 00 00       	call   3ae0 <printf>
    exit();
    17f8:	e8 85 21 00 00       	call   3982 <exit>
  if(fd < 0){
    printf(1, "create lf1 failed\n");
    exit();
  }
  if(write(fd, "hello", 5) != 5){
    printf(1, "write lf1 failed\n");
    17fd:	50                   	push   %eax
    17fe:	50                   	push   %eax
    17ff:	68 c9 43 00 00       	push   $0x43c9
    1804:	6a 01                	push   $0x1
    1806:	e8 d5 22 00 00       	call   3ae0 <printf>
    exit();
    180b:	e8 72 21 00 00       	call   3982 <exit>

00001810 <concreate>:
}

// test concurrent create/link/unlink of the same file
void
concreate(void)
{
    1810:	55                   	push   %ebp
    1811:	89 e5                	mov    %esp,%ebp
    1813:	57                   	push   %edi
    1814:	56                   	push   %esi
    1815:	53                   	push   %ebx
  } de;

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    1816:	31 f6                	xor    %esi,%esi
    1818:	8d 5d ad             	lea    -0x53(%ebp),%ebx
    file[1] = '0' + i;
    unlink(file);
    pid = fork();
    if(pid && (i % 3) == 1){
    181b:	bf 56 55 55 55       	mov    $0x55555556,%edi
}

// test concurrent create/link/unlink of the same file
void
concreate(void)
{
    1820:	83 ec 64             	sub    $0x64,%esp
  struct {
    ushort inum;
    char name[14];
  } de;

  printf(1, "concreate test\n");
    1823:	68 59 44 00 00       	push   $0x4459
    1828:	6a 01                	push   $0x1
    182a:	e8 b1 22 00 00       	call   3ae0 <printf>
  file[0] = 'C';
    182f:	c6 45 ad 43          	movb   $0x43,-0x53(%ebp)
  file[2] = '\0';
    1833:	c6 45 af 00          	movb   $0x0,-0x51(%ebp)
    1837:	83 c4 10             	add    $0x10,%esp
    183a:	eb 59                	jmp    1895 <concreate+0x85>
    183c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    unlink(file);
    pid = fork();
    if(pid && (i % 3) == 1){
    1840:	89 f0                	mov    %esi,%eax
    1842:	89 f1                	mov    %esi,%ecx
    1844:	f7 ef                	imul   %edi
    1846:	89 f0                	mov    %esi,%eax
    1848:	c1 f8 1f             	sar    $0x1f,%eax
    184b:	29 c2                	sub    %eax,%edx
    184d:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1850:	29 c1                	sub    %eax,%ecx
    1852:	83 f9 01             	cmp    $0x1,%ecx
    1855:	0f 84 c5 00 00 00    	je     1920 <concreate+0x110>
      link("C0", file);
    } else if(pid == 0 && (i % 5) == 1){
      link("C0", file);
    } else {
      fd = open(file, O_CREATE | O_RDWR);
    185b:	83 ec 08             	sub    $0x8,%esp
    185e:	68 02 02 00 00       	push   $0x202
    1863:	53                   	push   %ebx
    1864:	e8 59 21 00 00       	call   39c2 <open>
      if(fd < 0){
    1869:	83 c4 10             	add    $0x10,%esp
    186c:	85 c0                	test   %eax,%eax
    186e:	78 75                	js     18e5 <concreate+0xd5>
        printf(1, "concreate create %s failed\n", file);
        exit();
      }
      close(fd);
    1870:	83 ec 0c             	sub    $0xc,%esp
    1873:	50                   	push   %eax
    1874:	e8 31 21 00 00       	call   39aa <close>
    1879:	83 c4 10             	add    $0x10,%esp
    }
    if(pid == 0)
      exit();
    else
      wait(0);
    187c:	83 ec 0c             	sub    $0xc,%esp
  } de;

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    187f:	83 c6 01             	add    $0x1,%esi
      close(fd);
    }
    if(pid == 0)
      exit();
    else
      wait(0);
    1882:	6a 00                	push   $0x0
    1884:	e8 01 21 00 00       	call   398a <wait>
  } de;

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    1889:	83 c4 10             	add    $0x10,%esp
    188c:	83 fe 28             	cmp    $0x28,%esi
    188f:	0f 84 ab 00 00 00    	je     1940 <concreate+0x130>
    file[1] = '0' + i;
    unlink(file);
    1895:	83 ec 0c             	sub    $0xc,%esp

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    1898:	8d 46 30             	lea    0x30(%esi),%eax
    unlink(file);
    189b:	53                   	push   %ebx

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    189c:	88 45 ae             	mov    %al,-0x52(%ebp)
    unlink(file);
    189f:	e8 2e 21 00 00       	call   39d2 <unlink>
    pid = fork();
    18a4:	e8 d1 20 00 00       	call   397a <fork>
    if(pid && (i % 3) == 1){
    18a9:	83 c4 10             	add    $0x10,%esp
    18ac:	85 c0                	test   %eax,%eax
    18ae:	75 90                	jne    1840 <concreate+0x30>
      link("C0", file);
    } else if(pid == 0 && (i % 5) == 1){
    18b0:	89 f0                	mov    %esi,%eax
    18b2:	ba 67 66 66 66       	mov    $0x66666667,%edx
    18b7:	f7 ea                	imul   %edx
    18b9:	89 f0                	mov    %esi,%eax
    18bb:	c1 f8 1f             	sar    $0x1f,%eax
    18be:	d1 fa                	sar    %edx
    18c0:	29 c2                	sub    %eax,%edx
    18c2:	8d 04 92             	lea    (%edx,%edx,4),%eax
    18c5:	29 c6                	sub    %eax,%esi
    18c7:	83 fe 01             	cmp    $0x1,%esi
    18ca:	74 34                	je     1900 <concreate+0xf0>
      link("C0", file);
    } else {
      fd = open(file, O_CREATE | O_RDWR);
    18cc:	83 ec 08             	sub    $0x8,%esp
    18cf:	68 02 02 00 00       	push   $0x202
    18d4:	53                   	push   %ebx
    18d5:	e8 e8 20 00 00       	call   39c2 <open>
      if(fd < 0){
    18da:	83 c4 10             	add    $0x10,%esp
    18dd:	85 c0                	test   %eax,%eax
    18df:	0f 89 3a 02 00 00    	jns    1b1f <concreate+0x30f>
        printf(1, "concreate create %s failed\n", file);
    18e5:	83 ec 04             	sub    $0x4,%esp
    18e8:	53                   	push   %ebx
    18e9:	68 6c 44 00 00       	push   $0x446c
    18ee:	6a 01                	push   $0x1
    18f0:	e8 eb 21 00 00       	call   3ae0 <printf>
        exit();
    18f5:	e8 88 20 00 00       	call   3982 <exit>
    18fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    unlink(file);
    pid = fork();
    if(pid && (i % 3) == 1){
      link("C0", file);
    } else if(pid == 0 && (i % 5) == 1){
      link("C0", file);
    1900:	83 ec 08             	sub    $0x8,%esp
    1903:	53                   	push   %ebx
    1904:	68 69 44 00 00       	push   $0x4469
    1909:	e8 d4 20 00 00       	call   39e2 <link>
    190e:	83 c4 10             	add    $0x10,%esp
        exit();
      }
      close(fd);
    }
    if(pid == 0)
      exit();
    1911:	e8 6c 20 00 00       	call   3982 <exit>
    1916:	8d 76 00             	lea    0x0(%esi),%esi
    1919:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    unlink(file);
    pid = fork();
    if(pid && (i % 3) == 1){
      link("C0", file);
    1920:	83 ec 08             	sub    $0x8,%esp
    1923:	53                   	push   %ebx
    1924:	68 69 44 00 00       	push   $0x4469
    1929:	e8 b4 20 00 00       	call   39e2 <link>
    192e:	83 c4 10             	add    $0x10,%esp
    1931:	e9 46 ff ff ff       	jmp    187c <concreate+0x6c>
    1936:	8d 76 00             	lea    0x0(%esi),%esi
    1939:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      exit();
    else
      wait(0);
  }

  memset(fa, 0, sizeof(fa));
    1940:	8d 45 c0             	lea    -0x40(%ebp),%eax
    1943:	83 ec 04             	sub    $0x4,%esp
    1946:	8d 7d b0             	lea    -0x50(%ebp),%edi
    1949:	6a 28                	push   $0x28
    194b:	6a 00                	push   $0x0
    194d:	50                   	push   %eax
    194e:	e8 9d 1e 00 00       	call   37f0 <memset>
  fd = open(".", 0);
    1953:	59                   	pop    %ecx
    1954:	5e                   	pop    %esi
    1955:	6a 00                	push   $0x0
    1957:	68 76 46 00 00       	push   $0x4676
    195c:	e8 61 20 00 00       	call   39c2 <open>
  n = 0;
  while(read(fd, &de, sizeof(de)) > 0){
    1961:	83 c4 10             	add    $0x10,%esp
    else
      wait(0);
  }

  memset(fa, 0, sizeof(fa));
  fd = open(".", 0);
    1964:	89 c6                	mov    %eax,%esi
  n = 0;
    1966:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
    196d:	8d 76 00             	lea    0x0(%esi),%esi
  while(read(fd, &de, sizeof(de)) > 0){
    1970:	83 ec 04             	sub    $0x4,%esp
    1973:	6a 10                	push   $0x10
    1975:	57                   	push   %edi
    1976:	56                   	push   %esi
    1977:	e8 1e 20 00 00       	call   399a <read>
    197c:	83 c4 10             	add    $0x10,%esp
    197f:	85 c0                	test   %eax,%eax
    1981:	7e 3d                	jle    19c0 <concreate+0x1b0>
    if(de.inum == 0)
    1983:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
    1988:	74 e6                	je     1970 <concreate+0x160>
      continue;
    if(de.name[0] == 'C' && de.name[2] == '\0'){
    198a:	80 7d b2 43          	cmpb   $0x43,-0x4e(%ebp)
    198e:	75 e0                	jne    1970 <concreate+0x160>
    1990:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
    1994:	75 da                	jne    1970 <concreate+0x160>
      i = de.name[1] - '0';
    1996:	0f be 45 b3          	movsbl -0x4d(%ebp),%eax
    199a:	83 e8 30             	sub    $0x30,%eax
      if(i < 0 || i >= sizeof(fa)){
    199d:	83 f8 27             	cmp    $0x27,%eax
    19a0:	0f 87 61 01 00 00    	ja     1b07 <concreate+0x2f7>
        printf(1, "concreate weird file %s\n", de.name);
        exit();
      }
      if(fa[i]){
    19a6:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    19ab:	0f 85 3e 01 00 00    	jne    1aef <concreate+0x2df>
        printf(1, "concreate duplicate file %s\n", de.name);
        exit();
      }
      fa[i] = 1;
    19b1:	c6 44 05 c0 01       	movb   $0x1,-0x40(%ebp,%eax,1)
      n++;
    19b6:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
    19ba:	eb b4                	jmp    1970 <concreate+0x160>
    19bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    }
  }
  close(fd);
    19c0:	83 ec 0c             	sub    $0xc,%esp
    19c3:	56                   	push   %esi
    19c4:	e8 e1 1f 00 00       	call   39aa <close>

  if(n != 40){
    19c9:	83 c4 10             	add    $0x10,%esp
    19cc:	83 7d a4 28          	cmpl   $0x28,-0x5c(%ebp)
    19d0:	0f 85 05 01 00 00    	jne    1adb <concreate+0x2cb>
    19d6:	31 f6                	xor    %esi,%esi
    19d8:	eb 78                	jmp    1a52 <concreate+0x242>
    19da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(pid < 0){
      printf(1, "fork failed\n");
      exit();
    }
    if(((i % 3) == 0 && pid == 0) ||
       ((i % 3) == 1 && pid != 0)){
    19e0:	83 fa 01             	cmp    $0x1,%edx
    19e3:	0f 85 a1 00 00 00    	jne    1a8a <concreate+0x27a>
      close(open(file, 0));
    19e9:	83 ec 08             	sub    $0x8,%esp
    19ec:	6a 00                	push   $0x0
    19ee:	53                   	push   %ebx
    19ef:	e8 ce 1f 00 00       	call   39c2 <open>
    19f4:	89 04 24             	mov    %eax,(%esp)
    19f7:	e8 ae 1f 00 00       	call   39aa <close>
      close(open(file, 0));
    19fc:	58                   	pop    %eax
    19fd:	5a                   	pop    %edx
    19fe:	6a 00                	push   $0x0
    1a00:	53                   	push   %ebx
    1a01:	e8 bc 1f 00 00       	call   39c2 <open>
    1a06:	89 04 24             	mov    %eax,(%esp)
    1a09:	e8 9c 1f 00 00       	call   39aa <close>
      close(open(file, 0));
    1a0e:	59                   	pop    %ecx
    1a0f:	58                   	pop    %eax
    1a10:	6a 00                	push   $0x0
    1a12:	53                   	push   %ebx
    1a13:	e8 aa 1f 00 00       	call   39c2 <open>
    1a18:	89 04 24             	mov    %eax,(%esp)
    1a1b:	e8 8a 1f 00 00       	call   39aa <close>
      close(open(file, 0));
    1a20:	58                   	pop    %eax
    1a21:	5a                   	pop    %edx
    1a22:	6a 00                	push   $0x0
    1a24:	53                   	push   %ebx
    1a25:	e8 98 1f 00 00       	call   39c2 <open>
    1a2a:	89 04 24             	mov    %eax,(%esp)
    1a2d:	e8 78 1f 00 00       	call   39aa <close>
    1a32:	83 c4 10             	add    $0x10,%esp
      unlink(file);
      unlink(file);
      unlink(file);
      unlink(file);
    }
    if(pid == 0)
    1a35:	85 ff                	test   %edi,%edi
    1a37:	0f 84 d4 fe ff ff    	je     1911 <concreate+0x101>
      exit();
    else
      wait(0);
    1a3d:	83 ec 0c             	sub    $0xc,%esp
  if(n != 40){
    printf(1, "concreate not enough files in directory listing\n");
    exit();
  }

  for(i = 0; i < 40; i++){
    1a40:	83 c6 01             	add    $0x1,%esi
      unlink(file);
    }
    if(pid == 0)
      exit();
    else
      wait(0);
    1a43:	6a 00                	push   $0x0
    1a45:	e8 40 1f 00 00       	call   398a <wait>
  if(n != 40){
    printf(1, "concreate not enough files in directory listing\n");
    exit();
  }

  for(i = 0; i < 40; i++){
    1a4a:	83 c4 10             	add    $0x10,%esp
    1a4d:	83 fe 28             	cmp    $0x28,%esi
    1a50:	74 5e                	je     1ab0 <concreate+0x2a0>
    file[1] = '0' + i;
    1a52:	8d 46 30             	lea    0x30(%esi),%eax
    1a55:	88 45 ae             	mov    %al,-0x52(%ebp)
    pid = fork();
    1a58:	e8 1d 1f 00 00       	call   397a <fork>
    if(pid < 0){
    1a5d:	85 c0                	test   %eax,%eax
    exit();
  }

  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    pid = fork();
    1a5f:	89 c7                	mov    %eax,%edi
    if(pid < 0){
    1a61:	78 64                	js     1ac7 <concreate+0x2b7>
      printf(1, "fork failed\n");
      exit();
    }
    if(((i % 3) == 0 && pid == 0) ||
    1a63:	b8 56 55 55 55       	mov    $0x55555556,%eax
    1a68:	f7 ee                	imul   %esi
    1a6a:	89 f0                	mov    %esi,%eax
    1a6c:	c1 f8 1f             	sar    $0x1f,%eax
    1a6f:	29 c2                	sub    %eax,%edx
    1a71:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1a74:	89 f2                	mov    %esi,%edx
    1a76:	29 c2                	sub    %eax,%edx
    1a78:	89 f8                	mov    %edi,%eax
    1a7a:	09 d0                	or     %edx,%eax
    1a7c:	0f 84 67 ff ff ff    	je     19e9 <concreate+0x1d9>
       ((i % 3) == 1 && pid != 0)){
    1a82:	85 ff                	test   %edi,%edi
    1a84:	0f 85 56 ff ff ff    	jne    19e0 <concreate+0x1d0>
      close(open(file, 0));
      close(open(file, 0));
      close(open(file, 0));
      close(open(file, 0));
    } else {
      unlink(file);
    1a8a:	83 ec 0c             	sub    $0xc,%esp
    1a8d:	53                   	push   %ebx
    1a8e:	e8 3f 1f 00 00       	call   39d2 <unlink>
      unlink(file);
    1a93:	89 1c 24             	mov    %ebx,(%esp)
    1a96:	e8 37 1f 00 00       	call   39d2 <unlink>
      unlink(file);
    1a9b:	89 1c 24             	mov    %ebx,(%esp)
    1a9e:	e8 2f 1f 00 00       	call   39d2 <unlink>
      unlink(file);
    1aa3:	89 1c 24             	mov    %ebx,(%esp)
    1aa6:	e8 27 1f 00 00       	call   39d2 <unlink>
    1aab:	83 c4 10             	add    $0x10,%esp
    1aae:	eb 85                	jmp    1a35 <concreate+0x225>
      exit();
    else
      wait(0);
  }

  printf(1, "concreate ok\n");
    1ab0:	83 ec 08             	sub    $0x8,%esp
    1ab3:	68 be 44 00 00       	push   $0x44be
    1ab8:	6a 01                	push   $0x1
    1aba:	e8 21 20 00 00       	call   3ae0 <printf>
}
    1abf:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1ac2:	5b                   	pop    %ebx
    1ac3:	5e                   	pop    %esi
    1ac4:	5f                   	pop    %edi
    1ac5:	5d                   	pop    %ebp
    1ac6:	c3                   	ret    

  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    pid = fork();
    if(pid < 0){
      printf(1, "fork failed\n");
    1ac7:	83 ec 08             	sub    $0x8,%esp
    1aca:	68 41 4d 00 00       	push   $0x4d41
    1acf:	6a 01                	push   $0x1
    1ad1:	e8 0a 20 00 00       	call   3ae0 <printf>
      exit();
    1ad6:	e8 a7 1e 00 00       	call   3982 <exit>
    }
  }
  close(fd);

  if(n != 40){
    printf(1, "concreate not enough files in directory listing\n");
    1adb:	83 ec 08             	sub    $0x8,%esp
    1ade:	68 08 50 00 00       	push   $0x5008
    1ae3:	6a 01                	push   $0x1
    1ae5:	e8 f6 1f 00 00       	call   3ae0 <printf>
    exit();
    1aea:	e8 93 1e 00 00       	call   3982 <exit>
      if(i < 0 || i >= sizeof(fa)){
        printf(1, "concreate weird file %s\n", de.name);
        exit();
      }
      if(fa[i]){
        printf(1, "concreate duplicate file %s\n", de.name);
    1aef:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1af2:	83 ec 04             	sub    $0x4,%esp
    1af5:	50                   	push   %eax
    1af6:	68 a1 44 00 00       	push   $0x44a1
    1afb:	6a 01                	push   $0x1
    1afd:	e8 de 1f 00 00       	call   3ae0 <printf>
        exit();
    1b02:	e8 7b 1e 00 00       	call   3982 <exit>
    if(de.inum == 0)
      continue;
    if(de.name[0] == 'C' && de.name[2] == '\0'){
      i = de.name[1] - '0';
      if(i < 0 || i >= sizeof(fa)){
        printf(1, "concreate weird file %s\n", de.name);
    1b07:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1b0a:	83 ec 04             	sub    $0x4,%esp
    1b0d:	50                   	push   %eax
    1b0e:	68 88 44 00 00       	push   $0x4488
    1b13:	6a 01                	push   $0x1
    1b15:	e8 c6 1f 00 00       	call   3ae0 <printf>
        exit();
    1b1a:	e8 63 1e 00 00       	call   3982 <exit>
      fd = open(file, O_CREATE | O_RDWR);
      if(fd < 0){
        printf(1, "concreate create %s failed\n", file);
        exit();
      }
      close(fd);
    1b1f:	83 ec 0c             	sub    $0xc,%esp
    1b22:	50                   	push   %eax
    1b23:	e8 82 1e 00 00       	call   39aa <close>
    1b28:	83 c4 10             	add    $0x10,%esp
    1b2b:	e9 e1 fd ff ff       	jmp    1911 <concreate+0x101>

00001b30 <linkunlink>:

// another concurrent link/unlink/create test,
// to look for deadlocks.
void
linkunlink()
{
    1b30:	55                   	push   %ebp
    1b31:	89 e5                	mov    %esp,%ebp
    1b33:	57                   	push   %edi
    1b34:	56                   	push   %esi
    1b35:	53                   	push   %ebx
    1b36:	83 ec 24             	sub    $0x24,%esp
  int pid, i;

  printf(1, "linkunlink test\n");
    1b39:	68 cc 44 00 00       	push   $0x44cc
    1b3e:	6a 01                	push   $0x1
    1b40:	e8 9b 1f 00 00       	call   3ae0 <printf>

  unlink("x");
    1b45:	c7 04 24 59 47 00 00 	movl   $0x4759,(%esp)
    1b4c:	e8 81 1e 00 00       	call   39d2 <unlink>
  pid = fork();
    1b51:	e8 24 1e 00 00       	call   397a <fork>
  if(pid < 0){
    1b56:	83 c4 10             	add    $0x10,%esp
    1b59:	85 c0                	test   %eax,%eax
  int pid, i;

  printf(1, "linkunlink test\n");

  unlink("x");
  pid = fork();
    1b5b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(pid < 0){
    1b5e:	0f 88 b6 00 00 00    	js     1c1a <linkunlink+0xea>
    printf(1, "fork failed\n");
    exit();
  }

  unsigned int x = (pid ? 1 : 97);
    1b64:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    1b68:	bb 64 00 00 00       	mov    $0x64,%ebx
  for(i = 0; i < 100; i++){
    x = x * 1103515245 + 12345;
    if((x % 3) == 0){
    1b6d:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
  if(pid < 0){
    printf(1, "fork failed\n");
    exit();
  }

  unsigned int x = (pid ? 1 : 97);
    1b72:	19 ff                	sbb    %edi,%edi
    1b74:	83 e7 60             	and    $0x60,%edi
    1b77:	83 c7 01             	add    $0x1,%edi
    1b7a:	eb 1e                	jmp    1b9a <linkunlink+0x6a>
    1b7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(i = 0; i < 100; i++){
    x = x * 1103515245 + 12345;
    if((x % 3) == 0){
      close(open("x", O_RDWR | O_CREATE));
    } else if((x % 3) == 1){
    1b80:	83 fa 01             	cmp    $0x1,%edx
    1b83:	74 7b                	je     1c00 <linkunlink+0xd0>
      link("cat", "x");
    } else {
      unlink("x");
    1b85:	83 ec 0c             	sub    $0xc,%esp
    1b88:	68 59 47 00 00       	push   $0x4759
    1b8d:	e8 40 1e 00 00       	call   39d2 <unlink>
    1b92:	83 c4 10             	add    $0x10,%esp
    printf(1, "fork failed\n");
    exit();
  }

  unsigned int x = (pid ? 1 : 97);
  for(i = 0; i < 100; i++){
    1b95:	83 eb 01             	sub    $0x1,%ebx
    1b98:	74 3d                	je     1bd7 <linkunlink+0xa7>
    x = x * 1103515245 + 12345;
    1b9a:	69 cf 6d 4e c6 41    	imul   $0x41c64e6d,%edi,%ecx
    1ba0:	8d b9 39 30 00 00    	lea    0x3039(%ecx),%edi
    if((x % 3) == 0){
    1ba6:	89 f8                	mov    %edi,%eax
    1ba8:	f7 e6                	mul    %esi
    1baa:	d1 ea                	shr    %edx
    1bac:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1baf:	89 fa                	mov    %edi,%edx
    1bb1:	29 c2                	sub    %eax,%edx
    1bb3:	75 cb                	jne    1b80 <linkunlink+0x50>
      close(open("x", O_RDWR | O_CREATE));
    1bb5:	83 ec 08             	sub    $0x8,%esp
    1bb8:	68 02 02 00 00       	push   $0x202
    1bbd:	68 59 47 00 00       	push   $0x4759
    1bc2:	e8 fb 1d 00 00       	call   39c2 <open>
    1bc7:	89 04 24             	mov    %eax,(%esp)
    1bca:	e8 db 1d 00 00       	call   39aa <close>
    1bcf:	83 c4 10             	add    $0x10,%esp
    printf(1, "fork failed\n");
    exit();
  }

  unsigned int x = (pid ? 1 : 97);
  for(i = 0; i < 100; i++){
    1bd2:	83 eb 01             	sub    $0x1,%ebx
    1bd5:	75 c3                	jne    1b9a <linkunlink+0x6a>
    } else {
      unlink("x");
    }
  }

  if(pid)
    1bd7:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
    1bda:	85 c9                	test   %ecx,%ecx
    1bdc:	74 50                	je     1c2e <linkunlink+0xfe>
    wait(0);
    1bde:	83 ec 0c             	sub    $0xc,%esp
    1be1:	6a 00                	push   $0x0
    1be3:	e8 a2 1d 00 00       	call   398a <wait>
  else
    exit();

  printf(1, "linkunlink ok\n");
    1be8:	58                   	pop    %eax
    1be9:	5a                   	pop    %edx
    1bea:	68 e1 44 00 00       	push   $0x44e1
    1bef:	6a 01                	push   $0x1
    1bf1:	e8 ea 1e 00 00       	call   3ae0 <printf>
}
    1bf6:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1bf9:	5b                   	pop    %ebx
    1bfa:	5e                   	pop    %esi
    1bfb:	5f                   	pop    %edi
    1bfc:	5d                   	pop    %ebp
    1bfd:	c3                   	ret    
    1bfe:	66 90                	xchg   %ax,%ax
  for(i = 0; i < 100; i++){
    x = x * 1103515245 + 12345;
    if((x % 3) == 0){
      close(open("x", O_RDWR | O_CREATE));
    } else if((x % 3) == 1){
      link("cat", "x");
    1c00:	83 ec 08             	sub    $0x8,%esp
    1c03:	68 59 47 00 00       	push   $0x4759
    1c08:	68 dd 44 00 00       	push   $0x44dd
    1c0d:	e8 d0 1d 00 00       	call   39e2 <link>
    1c12:	83 c4 10             	add    $0x10,%esp
    1c15:	e9 7b ff ff ff       	jmp    1b95 <linkunlink+0x65>
  printf(1, "linkunlink test\n");

  unlink("x");
  pid = fork();
  if(pid < 0){
    printf(1, "fork failed\n");
    1c1a:	83 ec 08             	sub    $0x8,%esp
    1c1d:	68 41 4d 00 00       	push   $0x4d41
    1c22:	6a 01                	push   $0x1
    1c24:	e8 b7 1e 00 00       	call   3ae0 <printf>
    exit();
    1c29:	e8 54 1d 00 00       	call   3982 <exit>
  }

  if(pid)
    wait(0);
  else
    exit();
    1c2e:	e8 4f 1d 00 00       	call   3982 <exit>
    1c33:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1c39:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001c40 <bigdir>:
}

// directory that uses indirect blocks
void
bigdir(void)
{
    1c40:	55                   	push   %ebp
    1c41:	89 e5                	mov    %esp,%ebp
    1c43:	56                   	push   %esi
    1c44:	53                   	push   %ebx
    1c45:	83 ec 18             	sub    $0x18,%esp
  int i, fd;
  char name[10];

  printf(1, "bigdir test\n");
    1c48:	68 f0 44 00 00       	push   $0x44f0
    1c4d:	6a 01                	push   $0x1
    1c4f:	e8 8c 1e 00 00       	call   3ae0 <printf>
  unlink("bd");
    1c54:	c7 04 24 fd 44 00 00 	movl   $0x44fd,(%esp)
    1c5b:	e8 72 1d 00 00       	call   39d2 <unlink>

  fd = open("bd", O_CREATE);
    1c60:	58                   	pop    %eax
    1c61:	5a                   	pop    %edx
    1c62:	68 00 02 00 00       	push   $0x200
    1c67:	68 fd 44 00 00       	push   $0x44fd
    1c6c:	e8 51 1d 00 00       	call   39c2 <open>
  if(fd < 0){
    1c71:	83 c4 10             	add    $0x10,%esp
    1c74:	85 c0                	test   %eax,%eax
    1c76:	0f 88 de 00 00 00    	js     1d5a <bigdir+0x11a>
    printf(1, "bigdir create failed\n");
    exit();
  }
  close(fd);
    1c7c:	83 ec 0c             	sub    $0xc,%esp
    1c7f:	8d 75 ee             	lea    -0x12(%ebp),%esi

  for(i = 0; i < 500; i++){
    1c82:	31 db                	xor    %ebx,%ebx
  fd = open("bd", O_CREATE);
  if(fd < 0){
    printf(1, "bigdir create failed\n");
    exit();
  }
  close(fd);
    1c84:	50                   	push   %eax
    1c85:	e8 20 1d 00 00       	call   39aa <close>
    1c8a:	83 c4 10             	add    $0x10,%esp
    1c8d:	8d 76 00             	lea    0x0(%esi),%esi

  for(i = 0; i < 500; i++){
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    1c90:	89 d8                	mov    %ebx,%eax
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    if(link("bd", name) != 0){
    1c92:	83 ec 08             	sub    $0x8,%esp
    exit();
  }
  close(fd);

  for(i = 0; i < 500; i++){
    name[0] = 'x';
    1c95:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    name[1] = '0' + (i / 64);
    1c99:	c1 f8 06             	sar    $0x6,%eax
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    if(link("bd", name) != 0){
    1c9c:	56                   	push   %esi
    1c9d:	68 fd 44 00 00       	push   $0x44fd
  }
  close(fd);

  for(i = 0; i < 500; i++){
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    1ca2:	83 c0 30             	add    $0x30,%eax
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    1ca5:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
  }
  close(fd);

  for(i = 0; i < 500; i++){
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    1ca9:	88 45 ef             	mov    %al,-0x11(%ebp)
    name[2] = '0' + (i % 64);
    1cac:	89 d8                	mov    %ebx,%eax
    1cae:	83 e0 3f             	and    $0x3f,%eax
    1cb1:	83 c0 30             	add    $0x30,%eax
    1cb4:	88 45 f0             	mov    %al,-0x10(%ebp)
    name[3] = '\0';
    if(link("bd", name) != 0){
    1cb7:	e8 26 1d 00 00       	call   39e2 <link>
    1cbc:	83 c4 10             	add    $0x10,%esp
    1cbf:	85 c0                	test   %eax,%eax
    1cc1:	75 6f                	jne    1d32 <bigdir+0xf2>
    printf(1, "bigdir create failed\n");
    exit();
  }
  close(fd);

  for(i = 0; i < 500; i++){
    1cc3:	83 c3 01             	add    $0x1,%ebx
    1cc6:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1ccc:	75 c2                	jne    1c90 <bigdir+0x50>
      printf(1, "bigdir link failed\n");
      exit();
    }
  }

  unlink("bd");
    1cce:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 500; i++){
    1cd1:	31 db                	xor    %ebx,%ebx
      printf(1, "bigdir link failed\n");
      exit();
    }
  }

  unlink("bd");
    1cd3:	68 fd 44 00 00       	push   $0x44fd
    1cd8:	e8 f5 1c 00 00       	call   39d2 <unlink>
    1cdd:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 500; i++){
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    1ce0:	89 d8                	mov    %ebx,%eax
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    if(unlink(name) != 0){
    1ce2:	83 ec 0c             	sub    $0xc,%esp
    }
  }

  unlink("bd");
  for(i = 0; i < 500; i++){
    name[0] = 'x';
    1ce5:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    name[1] = '0' + (i / 64);
    1ce9:	c1 f8 06             	sar    $0x6,%eax
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    if(unlink(name) != 0){
    1cec:	56                   	push   %esi
  unlink("bd");
  for(i = 0; i < 500; i++){
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    1ced:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
  }

  unlink("bd");
  for(i = 0; i < 500; i++){
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    1cf1:	83 c0 30             	add    $0x30,%eax
    1cf4:	88 45 ef             	mov    %al,-0x11(%ebp)
    name[2] = '0' + (i % 64);
    1cf7:	89 d8                	mov    %ebx,%eax
    1cf9:	83 e0 3f             	and    $0x3f,%eax
    1cfc:	83 c0 30             	add    $0x30,%eax
    1cff:	88 45 f0             	mov    %al,-0x10(%ebp)
    name[3] = '\0';
    if(unlink(name) != 0){
    1d02:	e8 cb 1c 00 00       	call   39d2 <unlink>
    1d07:	83 c4 10             	add    $0x10,%esp
    1d0a:	85 c0                	test   %eax,%eax
    1d0c:	75 38                	jne    1d46 <bigdir+0x106>
      exit();
    }
  }

  unlink("bd");
  for(i = 0; i < 500; i++){
    1d0e:	83 c3 01             	add    $0x1,%ebx
    1d11:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1d17:	75 c7                	jne    1ce0 <bigdir+0xa0>
      printf(1, "bigdir unlink failed");
      exit();
    }
  }

  printf(1, "bigdir ok\n");
    1d19:	83 ec 08             	sub    $0x8,%esp
    1d1c:	68 3f 45 00 00       	push   $0x453f
    1d21:	6a 01                	push   $0x1
    1d23:	e8 b8 1d 00 00       	call   3ae0 <printf>
}
    1d28:	83 c4 10             	add    $0x10,%esp
    1d2b:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1d2e:	5b                   	pop    %ebx
    1d2f:	5e                   	pop    %esi
    1d30:	5d                   	pop    %ebp
    1d31:	c3                   	ret    
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    if(link("bd", name) != 0){
      printf(1, "bigdir link failed\n");
    1d32:	83 ec 08             	sub    $0x8,%esp
    1d35:	68 16 45 00 00       	push   $0x4516
    1d3a:	6a 01                	push   $0x1
    1d3c:	e8 9f 1d 00 00       	call   3ae0 <printf>
      exit();
    1d41:	e8 3c 1c 00 00       	call   3982 <exit>
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    if(unlink(name) != 0){
      printf(1, "bigdir unlink failed");
    1d46:	83 ec 08             	sub    $0x8,%esp
    1d49:	68 2a 45 00 00       	push   $0x452a
    1d4e:	6a 01                	push   $0x1
    1d50:	e8 8b 1d 00 00       	call   3ae0 <printf>
      exit();
    1d55:	e8 28 1c 00 00       	call   3982 <exit>
  printf(1, "bigdir test\n");
  unlink("bd");

  fd = open("bd", O_CREATE);
  if(fd < 0){
    printf(1, "bigdir create failed\n");
    1d5a:	83 ec 08             	sub    $0x8,%esp
    1d5d:	68 00 45 00 00       	push   $0x4500
    1d62:	6a 01                	push   $0x1
    1d64:	e8 77 1d 00 00       	call   3ae0 <printf>
    exit();
    1d69:	e8 14 1c 00 00       	call   3982 <exit>
    1d6e:	66 90                	xchg   %ax,%ax

00001d70 <subdir>:
  printf(1, "bigdir ok\n");
}

void
subdir(void)
{
    1d70:	55                   	push   %ebp
    1d71:	89 e5                	mov    %esp,%ebp
    1d73:	53                   	push   %ebx
    1d74:	83 ec 0c             	sub    $0xc,%esp
  int fd, cc;

  printf(1, "subdir test\n");
    1d77:	68 4a 45 00 00       	push   $0x454a
    1d7c:	6a 01                	push   $0x1
    1d7e:	e8 5d 1d 00 00       	call   3ae0 <printf>

  unlink("ff");
    1d83:	c7 04 24 d3 45 00 00 	movl   $0x45d3,(%esp)
    1d8a:	e8 43 1c 00 00       	call   39d2 <unlink>
  if(mkdir("dd") != 0){
    1d8f:	c7 04 24 70 46 00 00 	movl   $0x4670,(%esp)
    1d96:	e8 4f 1c 00 00       	call   39ea <mkdir>
    1d9b:	83 c4 10             	add    $0x10,%esp
    1d9e:	85 c0                	test   %eax,%eax
    1da0:	0f 85 b3 05 00 00    	jne    2359 <subdir+0x5e9>
    printf(1, "subdir mkdir dd failed\n");
    exit();
  }

  fd = open("dd/ff", O_CREATE | O_RDWR);
    1da6:	83 ec 08             	sub    $0x8,%esp
    1da9:	68 02 02 00 00       	push   $0x202
    1dae:	68 a9 45 00 00       	push   $0x45a9
    1db3:	e8 0a 1c 00 00       	call   39c2 <open>
  if(fd < 0){
    1db8:	83 c4 10             	add    $0x10,%esp
    1dbb:	85 c0                	test   %eax,%eax
  if(mkdir("dd") != 0){
    printf(1, "subdir mkdir dd failed\n");
    exit();
  }

  fd = open("dd/ff", O_CREATE | O_RDWR);
    1dbd:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1dbf:	0f 88 81 05 00 00    	js     2346 <subdir+0x5d6>
    printf(1, "create dd/ff failed\n");
    exit();
  }
  write(fd, "ff", 2);
    1dc5:	83 ec 04             	sub    $0x4,%esp
    1dc8:	6a 02                	push   $0x2
    1dca:	68 d3 45 00 00       	push   $0x45d3
    1dcf:	50                   	push   %eax
    1dd0:	e8 cd 1b 00 00       	call   39a2 <write>
  close(fd);
    1dd5:	89 1c 24             	mov    %ebx,(%esp)
    1dd8:	e8 cd 1b 00 00       	call   39aa <close>

  if(unlink("dd") >= 0){
    1ddd:	c7 04 24 70 46 00 00 	movl   $0x4670,(%esp)
    1de4:	e8 e9 1b 00 00       	call   39d2 <unlink>
    1de9:	83 c4 10             	add    $0x10,%esp
    1dec:	85 c0                	test   %eax,%eax
    1dee:	0f 89 3f 05 00 00    	jns    2333 <subdir+0x5c3>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    exit();
  }

  if(mkdir("/dd/dd") != 0){
    1df4:	83 ec 0c             	sub    $0xc,%esp
    1df7:	68 84 45 00 00       	push   $0x4584
    1dfc:	e8 e9 1b 00 00       	call   39ea <mkdir>
    1e01:	83 c4 10             	add    $0x10,%esp
    1e04:	85 c0                	test   %eax,%eax
    1e06:	0f 85 14 05 00 00    	jne    2320 <subdir+0x5b0>
    printf(1, "subdir mkdir dd/dd failed\n");
    exit();
  }

  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    1e0c:	83 ec 08             	sub    $0x8,%esp
    1e0f:	68 02 02 00 00       	push   $0x202
    1e14:	68 a6 45 00 00       	push   $0x45a6
    1e19:	e8 a4 1b 00 00       	call   39c2 <open>
  if(fd < 0){
    1e1e:	83 c4 10             	add    $0x10,%esp
    1e21:	85 c0                	test   %eax,%eax
  if(mkdir("/dd/dd") != 0){
    printf(1, "subdir mkdir dd/dd failed\n");
    exit();
  }

  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    1e23:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1e25:	0f 88 24 04 00 00    	js     224f <subdir+0x4df>
    printf(1, "create dd/dd/ff failed\n");
    exit();
  }
  write(fd, "FF", 2);
    1e2b:	83 ec 04             	sub    $0x4,%esp
    1e2e:	6a 02                	push   $0x2
    1e30:	68 c7 45 00 00       	push   $0x45c7
    1e35:	50                   	push   %eax
    1e36:	e8 67 1b 00 00       	call   39a2 <write>
  close(fd);
    1e3b:	89 1c 24             	mov    %ebx,(%esp)
    1e3e:	e8 67 1b 00 00       	call   39aa <close>

  fd = open("dd/dd/../ff", 0);
    1e43:	58                   	pop    %eax
    1e44:	5a                   	pop    %edx
    1e45:	6a 00                	push   $0x0
    1e47:	68 ca 45 00 00       	push   $0x45ca
    1e4c:	e8 71 1b 00 00       	call   39c2 <open>
  if(fd < 0){
    1e51:	83 c4 10             	add    $0x10,%esp
    1e54:	85 c0                	test   %eax,%eax
    exit();
  }
  write(fd, "FF", 2);
  close(fd);

  fd = open("dd/dd/../ff", 0);
    1e56:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1e58:	0f 88 de 03 00 00    	js     223c <subdir+0x4cc>
    printf(1, "open dd/dd/../ff failed\n");
    exit();
  }
  cc = read(fd, buf, sizeof(buf));
    1e5e:	83 ec 04             	sub    $0x4,%esp
    1e61:	68 00 20 00 00       	push   $0x2000
    1e66:	68 80 86 00 00       	push   $0x8680
    1e6b:	50                   	push   %eax
    1e6c:	e8 29 1b 00 00       	call   399a <read>
  if(cc != 2 || buf[0] != 'f'){
    1e71:	83 c4 10             	add    $0x10,%esp
    1e74:	83 f8 02             	cmp    $0x2,%eax
    1e77:	0f 85 3a 03 00 00    	jne    21b7 <subdir+0x447>
    1e7d:	80 3d 80 86 00 00 66 	cmpb   $0x66,0x8680
    1e84:	0f 85 2d 03 00 00    	jne    21b7 <subdir+0x447>
    printf(1, "dd/dd/../ff wrong content\n");
    exit();
  }
  close(fd);
    1e8a:	83 ec 0c             	sub    $0xc,%esp
    1e8d:	53                   	push   %ebx
    1e8e:	e8 17 1b 00 00       	call   39aa <close>

  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    1e93:	5b                   	pop    %ebx
    1e94:	58                   	pop    %eax
    1e95:	68 0a 46 00 00       	push   $0x460a
    1e9a:	68 a6 45 00 00       	push   $0x45a6
    1e9f:	e8 3e 1b 00 00       	call   39e2 <link>
    1ea4:	83 c4 10             	add    $0x10,%esp
    1ea7:	85 c0                	test   %eax,%eax
    1ea9:	0f 85 c6 03 00 00    	jne    2275 <subdir+0x505>
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    exit();
  }

  if(unlink("dd/dd/ff") != 0){
    1eaf:	83 ec 0c             	sub    $0xc,%esp
    1eb2:	68 a6 45 00 00       	push   $0x45a6
    1eb7:	e8 16 1b 00 00       	call   39d2 <unlink>
    1ebc:	83 c4 10             	add    $0x10,%esp
    1ebf:	85 c0                	test   %eax,%eax
    1ec1:	0f 85 16 03 00 00    	jne    21dd <subdir+0x46d>
    printf(1, "unlink dd/dd/ff failed\n");
    exit();
  }
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    1ec7:	83 ec 08             	sub    $0x8,%esp
    1eca:	6a 00                	push   $0x0
    1ecc:	68 a6 45 00 00       	push   $0x45a6
    1ed1:	e8 ec 1a 00 00       	call   39c2 <open>
    1ed6:	83 c4 10             	add    $0x10,%esp
    1ed9:	85 c0                	test   %eax,%eax
    1edb:	0f 89 2c 04 00 00    	jns    230d <subdir+0x59d>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    exit();
  }

  if(chdir("dd") != 0){
    1ee1:	83 ec 0c             	sub    $0xc,%esp
    1ee4:	68 70 46 00 00       	push   $0x4670
    1ee9:	e8 04 1b 00 00       	call   39f2 <chdir>
    1eee:	83 c4 10             	add    $0x10,%esp
    1ef1:	85 c0                	test   %eax,%eax
    1ef3:	0f 85 01 04 00 00    	jne    22fa <subdir+0x58a>
    printf(1, "chdir dd failed\n");
    exit();
  }
  if(chdir("dd/../../dd") != 0){
    1ef9:	83 ec 0c             	sub    $0xc,%esp
    1efc:	68 3e 46 00 00       	push   $0x463e
    1f01:	e8 ec 1a 00 00       	call   39f2 <chdir>
    1f06:	83 c4 10             	add    $0x10,%esp
    1f09:	85 c0                	test   %eax,%eax
    1f0b:	0f 85 b9 02 00 00    	jne    21ca <subdir+0x45a>
    printf(1, "chdir dd/../../dd failed\n");
    exit();
  }
  if(chdir("dd/../../../dd") != 0){
    1f11:	83 ec 0c             	sub    $0xc,%esp
    1f14:	68 64 46 00 00       	push   $0x4664
    1f19:	e8 d4 1a 00 00       	call   39f2 <chdir>
    1f1e:	83 c4 10             	add    $0x10,%esp
    1f21:	85 c0                	test   %eax,%eax
    1f23:	0f 85 a1 02 00 00    	jne    21ca <subdir+0x45a>
    printf(1, "chdir dd/../../dd failed\n");
    exit();
  }
  if(chdir("./..") != 0){
    1f29:	83 ec 0c             	sub    $0xc,%esp
    1f2c:	68 73 46 00 00       	push   $0x4673
    1f31:	e8 bc 1a 00 00       	call   39f2 <chdir>
    1f36:	83 c4 10             	add    $0x10,%esp
    1f39:	85 c0                	test   %eax,%eax
    1f3b:	0f 85 21 03 00 00    	jne    2262 <subdir+0x4f2>
    printf(1, "chdir ./.. failed\n");
    exit();
  }

  fd = open("dd/dd/ffff", 0);
    1f41:	83 ec 08             	sub    $0x8,%esp
    1f44:	6a 00                	push   $0x0
    1f46:	68 0a 46 00 00       	push   $0x460a
    1f4b:	e8 72 1a 00 00       	call   39c2 <open>
  if(fd < 0){
    1f50:	83 c4 10             	add    $0x10,%esp
    1f53:	85 c0                	test   %eax,%eax
  if(chdir("./..") != 0){
    printf(1, "chdir ./.. failed\n");
    exit();
  }

  fd = open("dd/dd/ffff", 0);
    1f55:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1f57:	0f 88 e0 04 00 00    	js     243d <subdir+0x6cd>
    printf(1, "open dd/dd/ffff failed\n");
    exit();
  }
  if(read(fd, buf, sizeof(buf)) != 2){
    1f5d:	83 ec 04             	sub    $0x4,%esp
    1f60:	68 00 20 00 00       	push   $0x2000
    1f65:	68 80 86 00 00       	push   $0x8680
    1f6a:	50                   	push   %eax
    1f6b:	e8 2a 1a 00 00       	call   399a <read>
    1f70:	83 c4 10             	add    $0x10,%esp
    1f73:	83 f8 02             	cmp    $0x2,%eax
    1f76:	0f 85 ae 04 00 00    	jne    242a <subdir+0x6ba>
    printf(1, "read dd/dd/ffff wrong len\n");
    exit();
  }
  close(fd);
    1f7c:	83 ec 0c             	sub    $0xc,%esp
    1f7f:	53                   	push   %ebx
    1f80:	e8 25 1a 00 00       	call   39aa <close>

  if(open("dd/dd/ff", O_RDONLY) >= 0){
    1f85:	59                   	pop    %ecx
    1f86:	5b                   	pop    %ebx
    1f87:	6a 00                	push   $0x0
    1f89:	68 a6 45 00 00       	push   $0x45a6
    1f8e:	e8 2f 1a 00 00       	call   39c2 <open>
    1f93:	83 c4 10             	add    $0x10,%esp
    1f96:	85 c0                	test   %eax,%eax
    1f98:	0f 89 65 02 00 00    	jns    2203 <subdir+0x493>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    exit();
  }

  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    1f9e:	83 ec 08             	sub    $0x8,%esp
    1fa1:	68 02 02 00 00       	push   $0x202
    1fa6:	68 be 46 00 00       	push   $0x46be
    1fab:	e8 12 1a 00 00       	call   39c2 <open>
    1fb0:	83 c4 10             	add    $0x10,%esp
    1fb3:	85 c0                	test   %eax,%eax
    1fb5:	0f 89 35 02 00 00    	jns    21f0 <subdir+0x480>
    printf(1, "create dd/ff/ff succeeded!\n");
    exit();
  }
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    1fbb:	83 ec 08             	sub    $0x8,%esp
    1fbe:	68 02 02 00 00       	push   $0x202
    1fc3:	68 e3 46 00 00       	push   $0x46e3
    1fc8:	e8 f5 19 00 00       	call   39c2 <open>
    1fcd:	83 c4 10             	add    $0x10,%esp
    1fd0:	85 c0                	test   %eax,%eax
    1fd2:	0f 89 0f 03 00 00    	jns    22e7 <subdir+0x577>
    printf(1, "create dd/xx/ff succeeded!\n");
    exit();
  }
  if(open("dd", O_CREATE) >= 0){
    1fd8:	83 ec 08             	sub    $0x8,%esp
    1fdb:	68 00 02 00 00       	push   $0x200
    1fe0:	68 70 46 00 00       	push   $0x4670
    1fe5:	e8 d8 19 00 00       	call   39c2 <open>
    1fea:	83 c4 10             	add    $0x10,%esp
    1fed:	85 c0                	test   %eax,%eax
    1fef:	0f 89 df 02 00 00    	jns    22d4 <subdir+0x564>
    printf(1, "create dd succeeded!\n");
    exit();
  }
  if(open("dd", O_RDWR) >= 0){
    1ff5:	83 ec 08             	sub    $0x8,%esp
    1ff8:	6a 02                	push   $0x2
    1ffa:	68 70 46 00 00       	push   $0x4670
    1fff:	e8 be 19 00 00       	call   39c2 <open>
    2004:	83 c4 10             	add    $0x10,%esp
    2007:	85 c0                	test   %eax,%eax
    2009:	0f 89 b2 02 00 00    	jns    22c1 <subdir+0x551>
    printf(1, "open dd rdwr succeeded!\n");
    exit();
  }
  if(open("dd", O_WRONLY) >= 0){
    200f:	83 ec 08             	sub    $0x8,%esp
    2012:	6a 01                	push   $0x1
    2014:	68 70 46 00 00       	push   $0x4670
    2019:	e8 a4 19 00 00       	call   39c2 <open>
    201e:	83 c4 10             	add    $0x10,%esp
    2021:	85 c0                	test   %eax,%eax
    2023:	0f 89 85 02 00 00    	jns    22ae <subdir+0x53e>
    printf(1, "open dd wronly succeeded!\n");
    exit();
  }
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    2029:	83 ec 08             	sub    $0x8,%esp
    202c:	68 52 47 00 00       	push   $0x4752
    2031:	68 be 46 00 00       	push   $0x46be
    2036:	e8 a7 19 00 00       	call   39e2 <link>
    203b:	83 c4 10             	add    $0x10,%esp
    203e:	85 c0                	test   %eax,%eax
    2040:	0f 84 55 02 00 00    	je     229b <subdir+0x52b>
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    exit();
  }
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    2046:	83 ec 08             	sub    $0x8,%esp
    2049:	68 52 47 00 00       	push   $0x4752
    204e:	68 e3 46 00 00       	push   $0x46e3
    2053:	e8 8a 19 00 00       	call   39e2 <link>
    2058:	83 c4 10             	add    $0x10,%esp
    205b:	85 c0                	test   %eax,%eax
    205d:	0f 84 25 02 00 00    	je     2288 <subdir+0x518>
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    exit();
  }
  if(link("dd/ff", "dd/dd/ffff") == 0){
    2063:	83 ec 08             	sub    $0x8,%esp
    2066:	68 0a 46 00 00       	push   $0x460a
    206b:	68 a9 45 00 00       	push   $0x45a9
    2070:	e8 6d 19 00 00       	call   39e2 <link>
    2075:	83 c4 10             	add    $0x10,%esp
    2078:	85 c0                	test   %eax,%eax
    207a:	0f 84 a9 01 00 00    	je     2229 <subdir+0x4b9>
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    exit();
  }
  if(mkdir("dd/ff/ff") == 0){
    2080:	83 ec 0c             	sub    $0xc,%esp
    2083:	68 be 46 00 00       	push   $0x46be
    2088:	e8 5d 19 00 00       	call   39ea <mkdir>
    208d:	83 c4 10             	add    $0x10,%esp
    2090:	85 c0                	test   %eax,%eax
    2092:	0f 84 7e 01 00 00    	je     2216 <subdir+0x4a6>
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    exit();
  }
  if(mkdir("dd/xx/ff") == 0){
    2098:	83 ec 0c             	sub    $0xc,%esp
    209b:	68 e3 46 00 00       	push   $0x46e3
    20a0:	e8 45 19 00 00       	call   39ea <mkdir>
    20a5:	83 c4 10             	add    $0x10,%esp
    20a8:	85 c0                	test   %eax,%eax
    20aa:	0f 84 67 03 00 00    	je     2417 <subdir+0x6a7>
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    exit();
  }
  if(mkdir("dd/dd/ffff") == 0){
    20b0:	83 ec 0c             	sub    $0xc,%esp
    20b3:	68 0a 46 00 00       	push   $0x460a
    20b8:	e8 2d 19 00 00       	call   39ea <mkdir>
    20bd:	83 c4 10             	add    $0x10,%esp
    20c0:	85 c0                	test   %eax,%eax
    20c2:	0f 84 3c 03 00 00    	je     2404 <subdir+0x694>
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    exit();
  }
  if(unlink("dd/xx/ff") == 0){
    20c8:	83 ec 0c             	sub    $0xc,%esp
    20cb:	68 e3 46 00 00       	push   $0x46e3
    20d0:	e8 fd 18 00 00       	call   39d2 <unlink>
    20d5:	83 c4 10             	add    $0x10,%esp
    20d8:	85 c0                	test   %eax,%eax
    20da:	0f 84 11 03 00 00    	je     23f1 <subdir+0x681>
    printf(1, "unlink dd/xx/ff succeeded!\n");
    exit();
  }
  if(unlink("dd/ff/ff") == 0){
    20e0:	83 ec 0c             	sub    $0xc,%esp
    20e3:	68 be 46 00 00       	push   $0x46be
    20e8:	e8 e5 18 00 00       	call   39d2 <unlink>
    20ed:	83 c4 10             	add    $0x10,%esp
    20f0:	85 c0                	test   %eax,%eax
    20f2:	0f 84 e6 02 00 00    	je     23de <subdir+0x66e>
    printf(1, "unlink dd/ff/ff succeeded!\n");
    exit();
  }
  if(chdir("dd/ff") == 0){
    20f8:	83 ec 0c             	sub    $0xc,%esp
    20fb:	68 a9 45 00 00       	push   $0x45a9
    2100:	e8 ed 18 00 00       	call   39f2 <chdir>
    2105:	83 c4 10             	add    $0x10,%esp
    2108:	85 c0                	test   %eax,%eax
    210a:	0f 84 bb 02 00 00    	je     23cb <subdir+0x65b>
    printf(1, "chdir dd/ff succeeded!\n");
    exit();
  }
  if(chdir("dd/xx") == 0){
    2110:	83 ec 0c             	sub    $0xc,%esp
    2113:	68 55 47 00 00       	push   $0x4755
    2118:	e8 d5 18 00 00       	call   39f2 <chdir>
    211d:	83 c4 10             	add    $0x10,%esp
    2120:	85 c0                	test   %eax,%eax
    2122:	0f 84 90 02 00 00    	je     23b8 <subdir+0x648>
    printf(1, "chdir dd/xx succeeded!\n");
    exit();
  }

  if(unlink("dd/dd/ffff") != 0){
    2128:	83 ec 0c             	sub    $0xc,%esp
    212b:	68 0a 46 00 00       	push   $0x460a
    2130:	e8 9d 18 00 00       	call   39d2 <unlink>
    2135:	83 c4 10             	add    $0x10,%esp
    2138:	85 c0                	test   %eax,%eax
    213a:	0f 85 9d 00 00 00    	jne    21dd <subdir+0x46d>
    printf(1, "unlink dd/dd/ff failed\n");
    exit();
  }
  if(unlink("dd/ff") != 0){
    2140:	83 ec 0c             	sub    $0xc,%esp
    2143:	68 a9 45 00 00       	push   $0x45a9
    2148:	e8 85 18 00 00       	call   39d2 <unlink>
    214d:	83 c4 10             	add    $0x10,%esp
    2150:	85 c0                	test   %eax,%eax
    2152:	0f 85 4d 02 00 00    	jne    23a5 <subdir+0x635>
    printf(1, "unlink dd/ff failed\n");
    exit();
  }
  if(unlink("dd") == 0){
    2158:	83 ec 0c             	sub    $0xc,%esp
    215b:	68 70 46 00 00       	push   $0x4670
    2160:	e8 6d 18 00 00       	call   39d2 <unlink>
    2165:	83 c4 10             	add    $0x10,%esp
    2168:	85 c0                	test   %eax,%eax
    216a:	0f 84 22 02 00 00    	je     2392 <subdir+0x622>
    printf(1, "unlink non-empty dd succeeded!\n");
    exit();
  }
  if(unlink("dd/dd") < 0){
    2170:	83 ec 0c             	sub    $0xc,%esp
    2173:	68 85 45 00 00       	push   $0x4585
    2178:	e8 55 18 00 00       	call   39d2 <unlink>
    217d:	83 c4 10             	add    $0x10,%esp
    2180:	85 c0                	test   %eax,%eax
    2182:	0f 88 f7 01 00 00    	js     237f <subdir+0x60f>
    printf(1, "unlink dd/dd failed\n");
    exit();
  }
  if(unlink("dd") < 0){
    2188:	83 ec 0c             	sub    $0xc,%esp
    218b:	68 70 46 00 00       	push   $0x4670
    2190:	e8 3d 18 00 00       	call   39d2 <unlink>
    2195:	83 c4 10             	add    $0x10,%esp
    2198:	85 c0                	test   %eax,%eax
    219a:	0f 88 cc 01 00 00    	js     236c <subdir+0x5fc>
    printf(1, "unlink dd failed\n");
    exit();
  }

  printf(1, "subdir ok\n");
    21a0:	83 ec 08             	sub    $0x8,%esp
    21a3:	68 52 48 00 00       	push   $0x4852
    21a8:	6a 01                	push   $0x1
    21aa:	e8 31 19 00 00       	call   3ae0 <printf>
}
    21af:	83 c4 10             	add    $0x10,%esp
    21b2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    21b5:	c9                   	leave  
    21b6:	c3                   	ret    
    printf(1, "open dd/dd/../ff failed\n");
    exit();
  }
  cc = read(fd, buf, sizeof(buf));
  if(cc != 2 || buf[0] != 'f'){
    printf(1, "dd/dd/../ff wrong content\n");
    21b7:	50                   	push   %eax
    21b8:	50                   	push   %eax
    21b9:	68 ef 45 00 00       	push   $0x45ef
    21be:	6a 01                	push   $0x1
    21c0:	e8 1b 19 00 00       	call   3ae0 <printf>
    exit();
    21c5:	e8 b8 17 00 00       	call   3982 <exit>
  if(chdir("dd") != 0){
    printf(1, "chdir dd failed\n");
    exit();
  }
  if(chdir("dd/../../dd") != 0){
    printf(1, "chdir dd/../../dd failed\n");
    21ca:	50                   	push   %eax
    21cb:	50                   	push   %eax
    21cc:	68 4a 46 00 00       	push   $0x464a
    21d1:	6a 01                	push   $0x1
    21d3:	e8 08 19 00 00       	call   3ae0 <printf>
    exit();
    21d8:	e8 a5 17 00 00       	call   3982 <exit>
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    exit();
  }

  if(unlink("dd/dd/ff") != 0){
    printf(1, "unlink dd/dd/ff failed\n");
    21dd:	52                   	push   %edx
    21de:	52                   	push   %edx
    21df:	68 15 46 00 00       	push   $0x4615
    21e4:	6a 01                	push   $0x1
    21e6:	e8 f5 18 00 00       	call   3ae0 <printf>
    exit();
    21eb:	e8 92 17 00 00       	call   3982 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    exit();
  }

  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    printf(1, "create dd/ff/ff succeeded!\n");
    21f0:	50                   	push   %eax
    21f1:	50                   	push   %eax
    21f2:	68 c7 46 00 00       	push   $0x46c7
    21f7:	6a 01                	push   $0x1
    21f9:	e8 e2 18 00 00       	call   3ae0 <printf>
    exit();
    21fe:	e8 7f 17 00 00       	call   3982 <exit>
    exit();
  }
  close(fd);

  if(open("dd/dd/ff", O_RDONLY) >= 0){
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    2203:	52                   	push   %edx
    2204:	52                   	push   %edx
    2205:	68 ac 50 00 00       	push   $0x50ac
    220a:	6a 01                	push   $0x1
    220c:	e8 cf 18 00 00       	call   3ae0 <printf>
    exit();
    2211:	e8 6c 17 00 00       	call   3982 <exit>
  if(link("dd/ff", "dd/dd/ffff") == 0){
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    exit();
  }
  if(mkdir("dd/ff/ff") == 0){
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    2216:	52                   	push   %edx
    2217:	52                   	push   %edx
    2218:	68 5b 47 00 00       	push   $0x475b
    221d:	6a 01                	push   $0x1
    221f:	e8 bc 18 00 00       	call   3ae0 <printf>
    exit();
    2224:	e8 59 17 00 00       	call   3982 <exit>
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    exit();
  }
  if(link("dd/ff", "dd/dd/ffff") == 0){
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    2229:	51                   	push   %ecx
    222a:	51                   	push   %ecx
    222b:	68 1c 51 00 00       	push   $0x511c
    2230:	6a 01                	push   $0x1
    2232:	e8 a9 18 00 00       	call   3ae0 <printf>
    exit();
    2237:	e8 46 17 00 00       	call   3982 <exit>
  write(fd, "FF", 2);
  close(fd);

  fd = open("dd/dd/../ff", 0);
  if(fd < 0){
    printf(1, "open dd/dd/../ff failed\n");
    223c:	50                   	push   %eax
    223d:	50                   	push   %eax
    223e:	68 d6 45 00 00       	push   $0x45d6
    2243:	6a 01                	push   $0x1
    2245:	e8 96 18 00 00       	call   3ae0 <printf>
    exit();
    224a:	e8 33 17 00 00       	call   3982 <exit>
    exit();
  }

  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
  if(fd < 0){
    printf(1, "create dd/dd/ff failed\n");
    224f:	51                   	push   %ecx
    2250:	51                   	push   %ecx
    2251:	68 af 45 00 00       	push   $0x45af
    2256:	6a 01                	push   $0x1
    2258:	e8 83 18 00 00       	call   3ae0 <printf>
    exit();
    225d:	e8 20 17 00 00       	call   3982 <exit>
  if(chdir("dd/../../../dd") != 0){
    printf(1, "chdir dd/../../dd failed\n");
    exit();
  }
  if(chdir("./..") != 0){
    printf(1, "chdir ./.. failed\n");
    2262:	50                   	push   %eax
    2263:	50                   	push   %eax
    2264:	68 78 46 00 00       	push   $0x4678
    2269:	6a 01                	push   $0x1
    226b:	e8 70 18 00 00       	call   3ae0 <printf>
    exit();
    2270:	e8 0d 17 00 00       	call   3982 <exit>
    exit();
  }
  close(fd);

  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    2275:	51                   	push   %ecx
    2276:	51                   	push   %ecx
    2277:	68 64 50 00 00       	push   $0x5064
    227c:	6a 01                	push   $0x1
    227e:	e8 5d 18 00 00       	call   3ae0 <printf>
    exit();
    2283:	e8 fa 16 00 00       	call   3982 <exit>
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    exit();
  }
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    2288:	53                   	push   %ebx
    2289:	53                   	push   %ebx
    228a:	68 f8 50 00 00       	push   $0x50f8
    228f:	6a 01                	push   $0x1
    2291:	e8 4a 18 00 00       	call   3ae0 <printf>
    exit();
    2296:	e8 e7 16 00 00       	call   3982 <exit>
  if(open("dd", O_WRONLY) >= 0){
    printf(1, "open dd wronly succeeded!\n");
    exit();
  }
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    229b:	50                   	push   %eax
    229c:	50                   	push   %eax
    229d:	68 d4 50 00 00       	push   $0x50d4
    22a2:	6a 01                	push   $0x1
    22a4:	e8 37 18 00 00       	call   3ae0 <printf>
    exit();
    22a9:	e8 d4 16 00 00       	call   3982 <exit>
  if(open("dd", O_RDWR) >= 0){
    printf(1, "open dd rdwr succeeded!\n");
    exit();
  }
  if(open("dd", O_WRONLY) >= 0){
    printf(1, "open dd wronly succeeded!\n");
    22ae:	50                   	push   %eax
    22af:	50                   	push   %eax
    22b0:	68 37 47 00 00       	push   $0x4737
    22b5:	6a 01                	push   $0x1
    22b7:	e8 24 18 00 00       	call   3ae0 <printf>
    exit();
    22bc:	e8 c1 16 00 00       	call   3982 <exit>
  if(open("dd", O_CREATE) >= 0){
    printf(1, "create dd succeeded!\n");
    exit();
  }
  if(open("dd", O_RDWR) >= 0){
    printf(1, "open dd rdwr succeeded!\n");
    22c1:	50                   	push   %eax
    22c2:	50                   	push   %eax
    22c3:	68 1e 47 00 00       	push   $0x471e
    22c8:	6a 01                	push   $0x1
    22ca:	e8 11 18 00 00       	call   3ae0 <printf>
    exit();
    22cf:	e8 ae 16 00 00       	call   3982 <exit>
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    printf(1, "create dd/xx/ff succeeded!\n");
    exit();
  }
  if(open("dd", O_CREATE) >= 0){
    printf(1, "create dd succeeded!\n");
    22d4:	50                   	push   %eax
    22d5:	50                   	push   %eax
    22d6:	68 08 47 00 00       	push   $0x4708
    22db:	6a 01                	push   $0x1
    22dd:	e8 fe 17 00 00       	call   3ae0 <printf>
    exit();
    22e2:	e8 9b 16 00 00       	call   3982 <exit>
  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    printf(1, "create dd/ff/ff succeeded!\n");
    exit();
  }
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    printf(1, "create dd/xx/ff succeeded!\n");
    22e7:	50                   	push   %eax
    22e8:	50                   	push   %eax
    22e9:	68 ec 46 00 00       	push   $0x46ec
    22ee:	6a 01                	push   $0x1
    22f0:	e8 eb 17 00 00       	call   3ae0 <printf>
    exit();
    22f5:	e8 88 16 00 00       	call   3982 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    exit();
  }

  if(chdir("dd") != 0){
    printf(1, "chdir dd failed\n");
    22fa:	50                   	push   %eax
    22fb:	50                   	push   %eax
    22fc:	68 2d 46 00 00       	push   $0x462d
    2301:	6a 01                	push   $0x1
    2303:	e8 d8 17 00 00       	call   3ae0 <printf>
    exit();
    2308:	e8 75 16 00 00       	call   3982 <exit>
  if(unlink("dd/dd/ff") != 0){
    printf(1, "unlink dd/dd/ff failed\n");
    exit();
  }
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    230d:	50                   	push   %eax
    230e:	50                   	push   %eax
    230f:	68 88 50 00 00       	push   $0x5088
    2314:	6a 01                	push   $0x1
    2316:	e8 c5 17 00 00       	call   3ae0 <printf>
    exit();
    231b:	e8 62 16 00 00       	call   3982 <exit>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    exit();
  }

  if(mkdir("/dd/dd") != 0){
    printf(1, "subdir mkdir dd/dd failed\n");
    2320:	53                   	push   %ebx
    2321:	53                   	push   %ebx
    2322:	68 8b 45 00 00       	push   $0x458b
    2327:	6a 01                	push   $0x1
    2329:	e8 b2 17 00 00       	call   3ae0 <printf>
    exit();
    232e:	e8 4f 16 00 00       	call   3982 <exit>
  }
  write(fd, "ff", 2);
  close(fd);

  if(unlink("dd") >= 0){
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    2333:	50                   	push   %eax
    2334:	50                   	push   %eax
    2335:	68 3c 50 00 00       	push   $0x503c
    233a:	6a 01                	push   $0x1
    233c:	e8 9f 17 00 00       	call   3ae0 <printf>
    exit();
    2341:	e8 3c 16 00 00       	call   3982 <exit>
    exit();
  }

  fd = open("dd/ff", O_CREATE | O_RDWR);
  if(fd < 0){
    printf(1, "create dd/ff failed\n");
    2346:	50                   	push   %eax
    2347:	50                   	push   %eax
    2348:	68 6f 45 00 00       	push   $0x456f
    234d:	6a 01                	push   $0x1
    234f:	e8 8c 17 00 00       	call   3ae0 <printf>
    exit();
    2354:	e8 29 16 00 00       	call   3982 <exit>

  printf(1, "subdir test\n");

  unlink("ff");
  if(mkdir("dd") != 0){
    printf(1, "subdir mkdir dd failed\n");
    2359:	50                   	push   %eax
    235a:	50                   	push   %eax
    235b:	68 57 45 00 00       	push   $0x4557
    2360:	6a 01                	push   $0x1
    2362:	e8 79 17 00 00       	call   3ae0 <printf>
    exit();
    2367:	e8 16 16 00 00       	call   3982 <exit>
  if(unlink("dd/dd") < 0){
    printf(1, "unlink dd/dd failed\n");
    exit();
  }
  if(unlink("dd") < 0){
    printf(1, "unlink dd failed\n");
    236c:	50                   	push   %eax
    236d:	50                   	push   %eax
    236e:	68 40 48 00 00       	push   $0x4840
    2373:	6a 01                	push   $0x1
    2375:	e8 66 17 00 00       	call   3ae0 <printf>
    exit();
    237a:	e8 03 16 00 00       	call   3982 <exit>
  if(unlink("dd") == 0){
    printf(1, "unlink non-empty dd succeeded!\n");
    exit();
  }
  if(unlink("dd/dd") < 0){
    printf(1, "unlink dd/dd failed\n");
    237f:	52                   	push   %edx
    2380:	52                   	push   %edx
    2381:	68 2b 48 00 00       	push   $0x482b
    2386:	6a 01                	push   $0x1
    2388:	e8 53 17 00 00       	call   3ae0 <printf>
    exit();
    238d:	e8 f0 15 00 00       	call   3982 <exit>
  if(unlink("dd/ff") != 0){
    printf(1, "unlink dd/ff failed\n");
    exit();
  }
  if(unlink("dd") == 0){
    printf(1, "unlink non-empty dd succeeded!\n");
    2392:	51                   	push   %ecx
    2393:	51                   	push   %ecx
    2394:	68 40 51 00 00       	push   $0x5140
    2399:	6a 01                	push   $0x1
    239b:	e8 40 17 00 00       	call   3ae0 <printf>
    exit();
    23a0:	e8 dd 15 00 00       	call   3982 <exit>
  if(unlink("dd/dd/ffff") != 0){
    printf(1, "unlink dd/dd/ff failed\n");
    exit();
  }
  if(unlink("dd/ff") != 0){
    printf(1, "unlink dd/ff failed\n");
    23a5:	53                   	push   %ebx
    23a6:	53                   	push   %ebx
    23a7:	68 16 48 00 00       	push   $0x4816
    23ac:	6a 01                	push   $0x1
    23ae:	e8 2d 17 00 00       	call   3ae0 <printf>
    exit();
    23b3:	e8 ca 15 00 00       	call   3982 <exit>
  if(chdir("dd/ff") == 0){
    printf(1, "chdir dd/ff succeeded!\n");
    exit();
  }
  if(chdir("dd/xx") == 0){
    printf(1, "chdir dd/xx succeeded!\n");
    23b8:	50                   	push   %eax
    23b9:	50                   	push   %eax
    23ba:	68 fe 47 00 00       	push   $0x47fe
    23bf:	6a 01                	push   $0x1
    23c1:	e8 1a 17 00 00       	call   3ae0 <printf>
    exit();
    23c6:	e8 b7 15 00 00       	call   3982 <exit>
  if(unlink("dd/ff/ff") == 0){
    printf(1, "unlink dd/ff/ff succeeded!\n");
    exit();
  }
  if(chdir("dd/ff") == 0){
    printf(1, "chdir dd/ff succeeded!\n");
    23cb:	50                   	push   %eax
    23cc:	50                   	push   %eax
    23cd:	68 e6 47 00 00       	push   $0x47e6
    23d2:	6a 01                	push   $0x1
    23d4:	e8 07 17 00 00       	call   3ae0 <printf>
    exit();
    23d9:	e8 a4 15 00 00       	call   3982 <exit>
  if(unlink("dd/xx/ff") == 0){
    printf(1, "unlink dd/xx/ff succeeded!\n");
    exit();
  }
  if(unlink("dd/ff/ff") == 0){
    printf(1, "unlink dd/ff/ff succeeded!\n");
    23de:	50                   	push   %eax
    23df:	50                   	push   %eax
    23e0:	68 ca 47 00 00       	push   $0x47ca
    23e5:	6a 01                	push   $0x1
    23e7:	e8 f4 16 00 00       	call   3ae0 <printf>
    exit();
    23ec:	e8 91 15 00 00       	call   3982 <exit>
  if(mkdir("dd/dd/ffff") == 0){
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    exit();
  }
  if(unlink("dd/xx/ff") == 0){
    printf(1, "unlink dd/xx/ff succeeded!\n");
    23f1:	50                   	push   %eax
    23f2:	50                   	push   %eax
    23f3:	68 ae 47 00 00       	push   $0x47ae
    23f8:	6a 01                	push   $0x1
    23fa:	e8 e1 16 00 00       	call   3ae0 <printf>
    exit();
    23ff:	e8 7e 15 00 00       	call   3982 <exit>
  if(mkdir("dd/xx/ff") == 0){
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    exit();
  }
  if(mkdir("dd/dd/ffff") == 0){
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    2404:	50                   	push   %eax
    2405:	50                   	push   %eax
    2406:	68 91 47 00 00       	push   $0x4791
    240b:	6a 01                	push   $0x1
    240d:	e8 ce 16 00 00       	call   3ae0 <printf>
    exit();
    2412:	e8 6b 15 00 00       	call   3982 <exit>
  if(mkdir("dd/ff/ff") == 0){
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    exit();
  }
  if(mkdir("dd/xx/ff") == 0){
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    2417:	50                   	push   %eax
    2418:	50                   	push   %eax
    2419:	68 76 47 00 00       	push   $0x4776
    241e:	6a 01                	push   $0x1
    2420:	e8 bb 16 00 00       	call   3ae0 <printf>
    exit();
    2425:	e8 58 15 00 00       	call   3982 <exit>
  if(fd < 0){
    printf(1, "open dd/dd/ffff failed\n");
    exit();
  }
  if(read(fd, buf, sizeof(buf)) != 2){
    printf(1, "read dd/dd/ffff wrong len\n");
    242a:	50                   	push   %eax
    242b:	50                   	push   %eax
    242c:	68 a3 46 00 00       	push   $0x46a3
    2431:	6a 01                	push   $0x1
    2433:	e8 a8 16 00 00       	call   3ae0 <printf>
    exit();
    2438:	e8 45 15 00 00       	call   3982 <exit>
    exit();
  }

  fd = open("dd/dd/ffff", 0);
  if(fd < 0){
    printf(1, "open dd/dd/ffff failed\n");
    243d:	50                   	push   %eax
    243e:	50                   	push   %eax
    243f:	68 8b 46 00 00       	push   $0x468b
    2444:	6a 01                	push   $0x1
    2446:	e8 95 16 00 00       	call   3ae0 <printf>
    exit();
    244b:	e8 32 15 00 00       	call   3982 <exit>

00002450 <bigwrite>:
}

// test writes that are larger than the log.
void
bigwrite(void)
{
    2450:	55                   	push   %ebp
    2451:	89 e5                	mov    %esp,%ebp
    2453:	56                   	push   %esi
    2454:	53                   	push   %ebx
  int fd, sz;

  printf(1, "bigwrite test\n");

  unlink("bigwrite");
  for(sz = 499; sz < 12*512; sz += 471){
    2455:	bb f3 01 00 00       	mov    $0x1f3,%ebx
void
bigwrite(void)
{
  int fd, sz;

  printf(1, "bigwrite test\n");
    245a:	83 ec 08             	sub    $0x8,%esp
    245d:	68 5d 48 00 00       	push   $0x485d
    2462:	6a 01                	push   $0x1
    2464:	e8 77 16 00 00       	call   3ae0 <printf>

  unlink("bigwrite");
    2469:	c7 04 24 6c 48 00 00 	movl   $0x486c,(%esp)
    2470:	e8 5d 15 00 00       	call   39d2 <unlink>
    2475:	83 c4 10             	add    $0x10,%esp
    2478:	90                   	nop
    2479:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(sz = 499; sz < 12*512; sz += 471){
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2480:	83 ec 08             	sub    $0x8,%esp
    2483:	68 02 02 00 00       	push   $0x202
    2488:	68 6c 48 00 00       	push   $0x486c
    248d:	e8 30 15 00 00       	call   39c2 <open>
    if(fd < 0){
    2492:	83 c4 10             	add    $0x10,%esp
    2495:	85 c0                	test   %eax,%eax

  printf(1, "bigwrite test\n");

  unlink("bigwrite");
  for(sz = 499; sz < 12*512; sz += 471){
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2497:	89 c6                	mov    %eax,%esi
    if(fd < 0){
    2499:	78 7e                	js     2519 <bigwrite+0xc9>
      printf(1, "cannot create bigwrite\n");
      exit();
    }
    int i;
    for(i = 0; i < 2; i++){
      int cc = write(fd, buf, sz);
    249b:	83 ec 04             	sub    $0x4,%esp
    249e:	53                   	push   %ebx
    249f:	68 80 86 00 00       	push   $0x8680
    24a4:	50                   	push   %eax
    24a5:	e8 f8 14 00 00       	call   39a2 <write>
      if(cc != sz){
    24aa:	83 c4 10             	add    $0x10,%esp
    24ad:	39 c3                	cmp    %eax,%ebx
    24af:	75 55                	jne    2506 <bigwrite+0xb6>
      printf(1, "cannot create bigwrite\n");
      exit();
    }
    int i;
    for(i = 0; i < 2; i++){
      int cc = write(fd, buf, sz);
    24b1:	83 ec 04             	sub    $0x4,%esp
    24b4:	53                   	push   %ebx
    24b5:	68 80 86 00 00       	push   $0x8680
    24ba:	56                   	push   %esi
    24bb:	e8 e2 14 00 00       	call   39a2 <write>
      if(cc != sz){
    24c0:	83 c4 10             	add    $0x10,%esp
    24c3:	39 c3                	cmp    %eax,%ebx
    24c5:	75 3f                	jne    2506 <bigwrite+0xb6>
        printf(1, "write(%d) ret %d\n", sz, cc);
        exit();
      }
    }
    close(fd);
    24c7:	83 ec 0c             	sub    $0xc,%esp
  int fd, sz;

  printf(1, "bigwrite test\n");

  unlink("bigwrite");
  for(sz = 499; sz < 12*512; sz += 471){
    24ca:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
      if(cc != sz){
        printf(1, "write(%d) ret %d\n", sz, cc);
        exit();
      }
    }
    close(fd);
    24d0:	56                   	push   %esi
    24d1:	e8 d4 14 00 00       	call   39aa <close>
    unlink("bigwrite");
    24d6:	c7 04 24 6c 48 00 00 	movl   $0x486c,(%esp)
    24dd:	e8 f0 14 00 00       	call   39d2 <unlink>
  int fd, sz;

  printf(1, "bigwrite test\n");

  unlink("bigwrite");
  for(sz = 499; sz < 12*512; sz += 471){
    24e2:	83 c4 10             	add    $0x10,%esp
    24e5:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    24eb:	75 93                	jne    2480 <bigwrite+0x30>
    }
    close(fd);
    unlink("bigwrite");
  }

  printf(1, "bigwrite ok\n");
    24ed:	83 ec 08             	sub    $0x8,%esp
    24f0:	68 9f 48 00 00       	push   $0x489f
    24f5:	6a 01                	push   $0x1
    24f7:	e8 e4 15 00 00       	call   3ae0 <printf>
}
    24fc:	83 c4 10             	add    $0x10,%esp
    24ff:	8d 65 f8             	lea    -0x8(%ebp),%esp
    2502:	5b                   	pop    %ebx
    2503:	5e                   	pop    %esi
    2504:	5d                   	pop    %ebp
    2505:	c3                   	ret    
    }
    int i;
    for(i = 0; i < 2; i++){
      int cc = write(fd, buf, sz);
      if(cc != sz){
        printf(1, "write(%d) ret %d\n", sz, cc);
    2506:	50                   	push   %eax
    2507:	53                   	push   %ebx
    2508:	68 8d 48 00 00       	push   $0x488d
    250d:	6a 01                	push   $0x1
    250f:	e8 cc 15 00 00       	call   3ae0 <printf>
        exit();
    2514:	e8 69 14 00 00       	call   3982 <exit>

  unlink("bigwrite");
  for(sz = 499; sz < 12*512; sz += 471){
    fd = open("bigwrite", O_CREATE | O_RDWR);
    if(fd < 0){
      printf(1, "cannot create bigwrite\n");
    2519:	83 ec 08             	sub    $0x8,%esp
    251c:	68 75 48 00 00       	push   $0x4875
    2521:	6a 01                	push   $0x1
    2523:	e8 b8 15 00 00       	call   3ae0 <printf>
      exit();
    2528:	e8 55 14 00 00       	call   3982 <exit>
    252d:	8d 76 00             	lea    0x0(%esi),%esi

00002530 <bigfile>:
  printf(1, "bigwrite ok\n");
}

void
bigfile(void)
{
    2530:	55                   	push   %ebp
    2531:	89 e5                	mov    %esp,%ebp
    2533:	57                   	push   %edi
    2534:	56                   	push   %esi
    2535:	53                   	push   %ebx
    2536:	83 ec 14             	sub    $0x14,%esp
  int fd, i, total, cc;

  printf(1, "bigfile test\n");
    2539:	68 ac 48 00 00       	push   $0x48ac
    253e:	6a 01                	push   $0x1
    2540:	e8 9b 15 00 00       	call   3ae0 <printf>

  unlink("bigfile");
    2545:	c7 04 24 c8 48 00 00 	movl   $0x48c8,(%esp)
    254c:	e8 81 14 00 00       	call   39d2 <unlink>
  fd = open("bigfile", O_CREATE | O_RDWR);
    2551:	5e                   	pop    %esi
    2552:	5f                   	pop    %edi
    2553:	68 02 02 00 00       	push   $0x202
    2558:	68 c8 48 00 00       	push   $0x48c8
    255d:	e8 60 14 00 00       	call   39c2 <open>
  if(fd < 0){
    2562:	83 c4 10             	add    $0x10,%esp
    2565:	85 c0                	test   %eax,%eax
    2567:	0f 88 5f 01 00 00    	js     26cc <bigfile+0x19c>
    256d:	89 c6                	mov    %eax,%esi
    256f:	31 db                	xor    %ebx,%ebx
    2571:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "cannot create bigfile");
    exit();
  }
  for(i = 0; i < 20; i++){
    memset(buf, i, 600);
    2578:	83 ec 04             	sub    $0x4,%esp
    257b:	68 58 02 00 00       	push   $0x258
    2580:	53                   	push   %ebx
    2581:	68 80 86 00 00       	push   $0x8680
    2586:	e8 65 12 00 00       	call   37f0 <memset>
    if(write(fd, buf, 600) != 600){
    258b:	83 c4 0c             	add    $0xc,%esp
    258e:	68 58 02 00 00       	push   $0x258
    2593:	68 80 86 00 00       	push   $0x8680
    2598:	56                   	push   %esi
    2599:	e8 04 14 00 00       	call   39a2 <write>
    259e:	83 c4 10             	add    $0x10,%esp
    25a1:	3d 58 02 00 00       	cmp    $0x258,%eax
    25a6:	0f 85 f8 00 00 00    	jne    26a4 <bigfile+0x174>
  fd = open("bigfile", O_CREATE | O_RDWR);
  if(fd < 0){
    printf(1, "cannot create bigfile");
    exit();
  }
  for(i = 0; i < 20; i++){
    25ac:	83 c3 01             	add    $0x1,%ebx
    25af:	83 fb 14             	cmp    $0x14,%ebx
    25b2:	75 c4                	jne    2578 <bigfile+0x48>
    if(write(fd, buf, 600) != 600){
      printf(1, "write bigfile failed\n");
      exit();
    }
  }
  close(fd);
    25b4:	83 ec 0c             	sub    $0xc,%esp
    25b7:	56                   	push   %esi
    25b8:	e8 ed 13 00 00       	call   39aa <close>

  fd = open("bigfile", 0);
    25bd:	59                   	pop    %ecx
    25be:	5b                   	pop    %ebx
    25bf:	6a 00                	push   $0x0
    25c1:	68 c8 48 00 00       	push   $0x48c8
    25c6:	e8 f7 13 00 00       	call   39c2 <open>
  if(fd < 0){
    25cb:	83 c4 10             	add    $0x10,%esp
    25ce:	85 c0                	test   %eax,%eax
      exit();
    }
  }
  close(fd);

  fd = open("bigfile", 0);
    25d0:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    25d2:	0f 88 e0 00 00 00    	js     26b8 <bigfile+0x188>
    25d8:	31 db                	xor    %ebx,%ebx
    25da:	31 ff                	xor    %edi,%edi
    25dc:	eb 30                	jmp    260e <bigfile+0xde>
    25de:	66 90                	xchg   %ax,%ax
      printf(1, "read bigfile failed\n");
      exit();
    }
    if(cc == 0)
      break;
    if(cc != 300){
    25e0:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    25e5:	0f 85 91 00 00 00    	jne    267c <bigfile+0x14c>
      printf(1, "short read bigfile\n");
      exit();
    }
    if(buf[0] != i/2 || buf[299] != i/2){
    25eb:	0f be 05 80 86 00 00 	movsbl 0x8680,%eax
    25f2:	89 fa                	mov    %edi,%edx
    25f4:	d1 fa                	sar    %edx
    25f6:	39 d0                	cmp    %edx,%eax
    25f8:	75 6e                	jne    2668 <bigfile+0x138>
    25fa:	0f be 15 ab 87 00 00 	movsbl 0x87ab,%edx
    2601:	39 d0                	cmp    %edx,%eax
    2603:	75 63                	jne    2668 <bigfile+0x138>
      printf(1, "read bigfile wrong data\n");
      exit();
    }
    total += cc;
    2605:	81 c3 2c 01 00 00    	add    $0x12c,%ebx
  if(fd < 0){
    printf(1, "cannot open bigfile\n");
    exit();
  }
  total = 0;
  for(i = 0; ; i++){
    260b:	83 c7 01             	add    $0x1,%edi
    cc = read(fd, buf, 300);
    260e:	83 ec 04             	sub    $0x4,%esp
    2611:	68 2c 01 00 00       	push   $0x12c
    2616:	68 80 86 00 00       	push   $0x8680
    261b:	56                   	push   %esi
    261c:	e8 79 13 00 00       	call   399a <read>
    if(cc < 0){
    2621:	83 c4 10             	add    $0x10,%esp
    2624:	85 c0                	test   %eax,%eax
    2626:	78 68                	js     2690 <bigfile+0x160>
      printf(1, "read bigfile failed\n");
      exit();
    }
    if(cc == 0)
    2628:	75 b6                	jne    25e0 <bigfile+0xb0>
      printf(1, "read bigfile wrong data\n");
      exit();
    }
    total += cc;
  }
  close(fd);
    262a:	83 ec 0c             	sub    $0xc,%esp
    262d:	56                   	push   %esi
    262e:	e8 77 13 00 00       	call   39aa <close>
  if(total != 20*600){
    2633:	83 c4 10             	add    $0x10,%esp
    2636:	81 fb e0 2e 00 00    	cmp    $0x2ee0,%ebx
    263c:	0f 85 9e 00 00 00    	jne    26e0 <bigfile+0x1b0>
    printf(1, "read bigfile wrong total\n");
    exit();
  }
  unlink("bigfile");
    2642:	83 ec 0c             	sub    $0xc,%esp
    2645:	68 c8 48 00 00       	push   $0x48c8
    264a:	e8 83 13 00 00       	call   39d2 <unlink>

  printf(1, "bigfile test ok\n");
    264f:	58                   	pop    %eax
    2650:	5a                   	pop    %edx
    2651:	68 57 49 00 00       	push   $0x4957
    2656:	6a 01                	push   $0x1
    2658:	e8 83 14 00 00       	call   3ae0 <printf>
}
    265d:	83 c4 10             	add    $0x10,%esp
    2660:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2663:	5b                   	pop    %ebx
    2664:	5e                   	pop    %esi
    2665:	5f                   	pop    %edi
    2666:	5d                   	pop    %ebp
    2667:	c3                   	ret    
    if(cc != 300){
      printf(1, "short read bigfile\n");
      exit();
    }
    if(buf[0] != i/2 || buf[299] != i/2){
      printf(1, "read bigfile wrong data\n");
    2668:	83 ec 08             	sub    $0x8,%esp
    266b:	68 24 49 00 00       	push   $0x4924
    2670:	6a 01                	push   $0x1
    2672:	e8 69 14 00 00       	call   3ae0 <printf>
      exit();
    2677:	e8 06 13 00 00       	call   3982 <exit>
      exit();
    }
    if(cc == 0)
      break;
    if(cc != 300){
      printf(1, "short read bigfile\n");
    267c:	83 ec 08             	sub    $0x8,%esp
    267f:	68 10 49 00 00       	push   $0x4910
    2684:	6a 01                	push   $0x1
    2686:	e8 55 14 00 00       	call   3ae0 <printf>
      exit();
    268b:	e8 f2 12 00 00       	call   3982 <exit>
  }
  total = 0;
  for(i = 0; ; i++){
    cc = read(fd, buf, 300);
    if(cc < 0){
      printf(1, "read bigfile failed\n");
    2690:	83 ec 08             	sub    $0x8,%esp
    2693:	68 fb 48 00 00       	push   $0x48fb
    2698:	6a 01                	push   $0x1
    269a:	e8 41 14 00 00       	call   3ae0 <printf>
      exit();
    269f:	e8 de 12 00 00       	call   3982 <exit>
    exit();
  }
  for(i = 0; i < 20; i++){
    memset(buf, i, 600);
    if(write(fd, buf, 600) != 600){
      printf(1, "write bigfile failed\n");
    26a4:	83 ec 08             	sub    $0x8,%esp
    26a7:	68 d0 48 00 00       	push   $0x48d0
    26ac:	6a 01                	push   $0x1
    26ae:	e8 2d 14 00 00       	call   3ae0 <printf>
      exit();
    26b3:	e8 ca 12 00 00       	call   3982 <exit>
  }
  close(fd);

  fd = open("bigfile", 0);
  if(fd < 0){
    printf(1, "cannot open bigfile\n");
    26b8:	83 ec 08             	sub    $0x8,%esp
    26bb:	68 e6 48 00 00       	push   $0x48e6
    26c0:	6a 01                	push   $0x1
    26c2:	e8 19 14 00 00       	call   3ae0 <printf>
    exit();
    26c7:	e8 b6 12 00 00       	call   3982 <exit>
  printf(1, "bigfile test\n");

  unlink("bigfile");
  fd = open("bigfile", O_CREATE | O_RDWR);
  if(fd < 0){
    printf(1, "cannot create bigfile");
    26cc:	83 ec 08             	sub    $0x8,%esp
    26cf:	68 ba 48 00 00       	push   $0x48ba
    26d4:	6a 01                	push   $0x1
    26d6:	e8 05 14 00 00       	call   3ae0 <printf>
    exit();
    26db:	e8 a2 12 00 00       	call   3982 <exit>
    }
    total += cc;
  }
  close(fd);
  if(total != 20*600){
    printf(1, "read bigfile wrong total\n");
    26e0:	83 ec 08             	sub    $0x8,%esp
    26e3:	68 3d 49 00 00       	push   $0x493d
    26e8:	6a 01                	push   $0x1
    26ea:	e8 f1 13 00 00       	call   3ae0 <printf>
    exit();
    26ef:	e8 8e 12 00 00       	call   3982 <exit>
    26f4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    26fa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00002700 <fourteen>:
  printf(1, "bigfile test ok\n");
}

void
fourteen(void)
{
    2700:	55                   	push   %ebp
    2701:	89 e5                	mov    %esp,%ebp
    2703:	83 ec 10             	sub    $0x10,%esp
  int fd;

  // DIRSIZ is 14.
  printf(1, "fourteen test\n");
    2706:	68 68 49 00 00       	push   $0x4968
    270b:	6a 01                	push   $0x1
    270d:	e8 ce 13 00 00       	call   3ae0 <printf>

  if(mkdir("12345678901234") != 0){
    2712:	c7 04 24 a3 49 00 00 	movl   $0x49a3,(%esp)
    2719:	e8 cc 12 00 00       	call   39ea <mkdir>
    271e:	83 c4 10             	add    $0x10,%esp
    2721:	85 c0                	test   %eax,%eax
    2723:	0f 85 97 00 00 00    	jne    27c0 <fourteen+0xc0>
    printf(1, "mkdir 12345678901234 failed\n");
    exit();
  }
  if(mkdir("12345678901234/123456789012345") != 0){
    2729:	83 ec 0c             	sub    $0xc,%esp
    272c:	68 60 51 00 00       	push   $0x5160
    2731:	e8 b4 12 00 00       	call   39ea <mkdir>
    2736:	83 c4 10             	add    $0x10,%esp
    2739:	85 c0                	test   %eax,%eax
    273b:	0f 85 de 00 00 00    	jne    281f <fourteen+0x11f>
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    exit();
  }
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
    2741:	83 ec 08             	sub    $0x8,%esp
    2744:	68 00 02 00 00       	push   $0x200
    2749:	68 b0 51 00 00       	push   $0x51b0
    274e:	e8 6f 12 00 00       	call   39c2 <open>
  if(fd < 0){
    2753:	83 c4 10             	add    $0x10,%esp
    2756:	85 c0                	test   %eax,%eax
    2758:	0f 88 ae 00 00 00    	js     280c <fourteen+0x10c>
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    exit();
  }
  close(fd);
    275e:	83 ec 0c             	sub    $0xc,%esp
    2761:	50                   	push   %eax
    2762:	e8 43 12 00 00       	call   39aa <close>
  fd = open("12345678901234/12345678901234/12345678901234", 0);
    2767:	58                   	pop    %eax
    2768:	5a                   	pop    %edx
    2769:	6a 00                	push   $0x0
    276b:	68 20 52 00 00       	push   $0x5220
    2770:	e8 4d 12 00 00       	call   39c2 <open>
  if(fd < 0){
    2775:	83 c4 10             	add    $0x10,%esp
    2778:	85 c0                	test   %eax,%eax
    277a:	78 7d                	js     27f9 <fourteen+0xf9>
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    exit();
  }
  close(fd);
    277c:	83 ec 0c             	sub    $0xc,%esp
    277f:	50                   	push   %eax
    2780:	e8 25 12 00 00       	call   39aa <close>

  if(mkdir("12345678901234/12345678901234") == 0){
    2785:	c7 04 24 94 49 00 00 	movl   $0x4994,(%esp)
    278c:	e8 59 12 00 00       	call   39ea <mkdir>
    2791:	83 c4 10             	add    $0x10,%esp
    2794:	85 c0                	test   %eax,%eax
    2796:	74 4e                	je     27e6 <fourteen+0xe6>
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    exit();
  }
  if(mkdir("123456789012345/12345678901234") == 0){
    2798:	83 ec 0c             	sub    $0xc,%esp
    279b:	68 bc 52 00 00       	push   $0x52bc
    27a0:	e8 45 12 00 00       	call   39ea <mkdir>
    27a5:	83 c4 10             	add    $0x10,%esp
    27a8:	85 c0                	test   %eax,%eax
    27aa:	74 27                	je     27d3 <fourteen+0xd3>
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    exit();
  }

  printf(1, "fourteen ok\n");
    27ac:	83 ec 08             	sub    $0x8,%esp
    27af:	68 b2 49 00 00       	push   $0x49b2
    27b4:	6a 01                	push   $0x1
    27b6:	e8 25 13 00 00       	call   3ae0 <printf>
}
    27bb:	83 c4 10             	add    $0x10,%esp
    27be:	c9                   	leave  
    27bf:	c3                   	ret    

  // DIRSIZ is 14.
  printf(1, "fourteen test\n");

  if(mkdir("12345678901234") != 0){
    printf(1, "mkdir 12345678901234 failed\n");
    27c0:	50                   	push   %eax
    27c1:	50                   	push   %eax
    27c2:	68 77 49 00 00       	push   $0x4977
    27c7:	6a 01                	push   $0x1
    27c9:	e8 12 13 00 00       	call   3ae0 <printf>
    exit();
    27ce:	e8 af 11 00 00       	call   3982 <exit>
  if(mkdir("12345678901234/12345678901234") == 0){
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    exit();
  }
  if(mkdir("123456789012345/12345678901234") == 0){
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    27d3:	50                   	push   %eax
    27d4:	50                   	push   %eax
    27d5:	68 dc 52 00 00       	push   $0x52dc
    27da:	6a 01                	push   $0x1
    27dc:	e8 ff 12 00 00       	call   3ae0 <printf>
    exit();
    27e1:	e8 9c 11 00 00       	call   3982 <exit>
    exit();
  }
  close(fd);

  if(mkdir("12345678901234/12345678901234") == 0){
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    27e6:	52                   	push   %edx
    27e7:	52                   	push   %edx
    27e8:	68 8c 52 00 00       	push   $0x528c
    27ed:	6a 01                	push   $0x1
    27ef:	e8 ec 12 00 00       	call   3ae0 <printf>
    exit();
    27f4:	e8 89 11 00 00       	call   3982 <exit>
    exit();
  }
  close(fd);
  fd = open("12345678901234/12345678901234/12345678901234", 0);
  if(fd < 0){
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    27f9:	51                   	push   %ecx
    27fa:	51                   	push   %ecx
    27fb:	68 50 52 00 00       	push   $0x5250
    2800:	6a 01                	push   $0x1
    2802:	e8 d9 12 00 00       	call   3ae0 <printf>
    exit();
    2807:	e8 76 11 00 00       	call   3982 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    exit();
  }
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
  if(fd < 0){
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    280c:	51                   	push   %ecx
    280d:	51                   	push   %ecx
    280e:	68 e0 51 00 00       	push   $0x51e0
    2813:	6a 01                	push   $0x1
    2815:	e8 c6 12 00 00       	call   3ae0 <printf>
    exit();
    281a:	e8 63 11 00 00       	call   3982 <exit>
  if(mkdir("12345678901234") != 0){
    printf(1, "mkdir 12345678901234 failed\n");
    exit();
  }
  if(mkdir("12345678901234/123456789012345") != 0){
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    281f:	50                   	push   %eax
    2820:	50                   	push   %eax
    2821:	68 80 51 00 00       	push   $0x5180
    2826:	6a 01                	push   $0x1
    2828:	e8 b3 12 00 00       	call   3ae0 <printf>
    exit();
    282d:	e8 50 11 00 00       	call   3982 <exit>
    2832:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2839:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002840 <rmdot>:
  printf(1, "fourteen ok\n");
}

void
rmdot(void)
{
    2840:	55                   	push   %ebp
    2841:	89 e5                	mov    %esp,%ebp
    2843:	83 ec 10             	sub    $0x10,%esp
  printf(1, "rmdot test\n");
    2846:	68 bf 49 00 00       	push   $0x49bf
    284b:	6a 01                	push   $0x1
    284d:	e8 8e 12 00 00       	call   3ae0 <printf>
  if(mkdir("dots") != 0){
    2852:	c7 04 24 cb 49 00 00 	movl   $0x49cb,(%esp)
    2859:	e8 8c 11 00 00       	call   39ea <mkdir>
    285e:	83 c4 10             	add    $0x10,%esp
    2861:	85 c0                	test   %eax,%eax
    2863:	0f 85 b0 00 00 00    	jne    2919 <rmdot+0xd9>
    printf(1, "mkdir dots failed\n");
    exit();
  }
  if(chdir("dots") != 0){
    2869:	83 ec 0c             	sub    $0xc,%esp
    286c:	68 cb 49 00 00       	push   $0x49cb
    2871:	e8 7c 11 00 00       	call   39f2 <chdir>
    2876:	83 c4 10             	add    $0x10,%esp
    2879:	85 c0                	test   %eax,%eax
    287b:	0f 85 1d 01 00 00    	jne    299e <rmdot+0x15e>
    printf(1, "chdir dots failed\n");
    exit();
  }
  if(unlink(".") == 0){
    2881:	83 ec 0c             	sub    $0xc,%esp
    2884:	68 76 46 00 00       	push   $0x4676
    2889:	e8 44 11 00 00       	call   39d2 <unlink>
    288e:	83 c4 10             	add    $0x10,%esp
    2891:	85 c0                	test   %eax,%eax
    2893:	0f 84 f2 00 00 00    	je     298b <rmdot+0x14b>
    printf(1, "rm . worked!\n");
    exit();
  }
  if(unlink("..") == 0){
    2899:	83 ec 0c             	sub    $0xc,%esp
    289c:	68 75 46 00 00       	push   $0x4675
    28a1:	e8 2c 11 00 00       	call   39d2 <unlink>
    28a6:	83 c4 10             	add    $0x10,%esp
    28a9:	85 c0                	test   %eax,%eax
    28ab:	0f 84 c7 00 00 00    	je     2978 <rmdot+0x138>
    printf(1, "rm .. worked!\n");
    exit();
  }
  if(chdir("/") != 0){
    28b1:	83 ec 0c             	sub    $0xc,%esp
    28b4:	68 49 3e 00 00       	push   $0x3e49
    28b9:	e8 34 11 00 00       	call   39f2 <chdir>
    28be:	83 c4 10             	add    $0x10,%esp
    28c1:	85 c0                	test   %eax,%eax
    28c3:	0f 85 9c 00 00 00    	jne    2965 <rmdot+0x125>
    printf(1, "chdir / failed\n");
    exit();
  }
  if(unlink("dots/.") == 0){
    28c9:	83 ec 0c             	sub    $0xc,%esp
    28cc:	68 13 4a 00 00       	push   $0x4a13
    28d1:	e8 fc 10 00 00       	call   39d2 <unlink>
    28d6:	83 c4 10             	add    $0x10,%esp
    28d9:	85 c0                	test   %eax,%eax
    28db:	74 75                	je     2952 <rmdot+0x112>
    printf(1, "unlink dots/. worked!\n");
    exit();
  }
  if(unlink("dots/..") == 0){
    28dd:	83 ec 0c             	sub    $0xc,%esp
    28e0:	68 31 4a 00 00       	push   $0x4a31
    28e5:	e8 e8 10 00 00       	call   39d2 <unlink>
    28ea:	83 c4 10             	add    $0x10,%esp
    28ed:	85 c0                	test   %eax,%eax
    28ef:	74 4e                	je     293f <rmdot+0xff>
    printf(1, "unlink dots/.. worked!\n");
    exit();
  }
  if(unlink("dots") != 0){
    28f1:	83 ec 0c             	sub    $0xc,%esp
    28f4:	68 cb 49 00 00       	push   $0x49cb
    28f9:	e8 d4 10 00 00       	call   39d2 <unlink>
    28fe:	83 c4 10             	add    $0x10,%esp
    2901:	85 c0                	test   %eax,%eax
    2903:	75 27                	jne    292c <rmdot+0xec>
    printf(1, "unlink dots failed!\n");
    exit();
  }
  printf(1, "rmdot ok\n");
    2905:	83 ec 08             	sub    $0x8,%esp
    2908:	68 66 4a 00 00       	push   $0x4a66
    290d:	6a 01                	push   $0x1
    290f:	e8 cc 11 00 00       	call   3ae0 <printf>
}
    2914:	83 c4 10             	add    $0x10,%esp
    2917:	c9                   	leave  
    2918:	c3                   	ret    
void
rmdot(void)
{
  printf(1, "rmdot test\n");
  if(mkdir("dots") != 0){
    printf(1, "mkdir dots failed\n");
    2919:	50                   	push   %eax
    291a:	50                   	push   %eax
    291b:	68 d0 49 00 00       	push   $0x49d0
    2920:	6a 01                	push   $0x1
    2922:	e8 b9 11 00 00       	call   3ae0 <printf>
    exit();
    2927:	e8 56 10 00 00       	call   3982 <exit>
  if(unlink("dots/..") == 0){
    printf(1, "unlink dots/.. worked!\n");
    exit();
  }
  if(unlink("dots") != 0){
    printf(1, "unlink dots failed!\n");
    292c:	50                   	push   %eax
    292d:	50                   	push   %eax
    292e:	68 51 4a 00 00       	push   $0x4a51
    2933:	6a 01                	push   $0x1
    2935:	e8 a6 11 00 00       	call   3ae0 <printf>
    exit();
    293a:	e8 43 10 00 00       	call   3982 <exit>
  if(unlink("dots/.") == 0){
    printf(1, "unlink dots/. worked!\n");
    exit();
  }
  if(unlink("dots/..") == 0){
    printf(1, "unlink dots/.. worked!\n");
    293f:	52                   	push   %edx
    2940:	52                   	push   %edx
    2941:	68 39 4a 00 00       	push   $0x4a39
    2946:	6a 01                	push   $0x1
    2948:	e8 93 11 00 00       	call   3ae0 <printf>
    exit();
    294d:	e8 30 10 00 00       	call   3982 <exit>
  if(chdir("/") != 0){
    printf(1, "chdir / failed\n");
    exit();
  }
  if(unlink("dots/.") == 0){
    printf(1, "unlink dots/. worked!\n");
    2952:	51                   	push   %ecx
    2953:	51                   	push   %ecx
    2954:	68 1a 4a 00 00       	push   $0x4a1a
    2959:	6a 01                	push   $0x1
    295b:	e8 80 11 00 00       	call   3ae0 <printf>
    exit();
    2960:	e8 1d 10 00 00       	call   3982 <exit>
  if(unlink("..") == 0){
    printf(1, "rm .. worked!\n");
    exit();
  }
  if(chdir("/") != 0){
    printf(1, "chdir / failed\n");
    2965:	50                   	push   %eax
    2966:	50                   	push   %eax
    2967:	68 4b 3e 00 00       	push   $0x3e4b
    296c:	6a 01                	push   $0x1
    296e:	e8 6d 11 00 00       	call   3ae0 <printf>
    exit();
    2973:	e8 0a 10 00 00       	call   3982 <exit>
  if(unlink(".") == 0){
    printf(1, "rm . worked!\n");
    exit();
  }
  if(unlink("..") == 0){
    printf(1, "rm .. worked!\n");
    2978:	50                   	push   %eax
    2979:	50                   	push   %eax
    297a:	68 04 4a 00 00       	push   $0x4a04
    297f:	6a 01                	push   $0x1
    2981:	e8 5a 11 00 00       	call   3ae0 <printf>
    exit();
    2986:	e8 f7 0f 00 00       	call   3982 <exit>
  if(chdir("dots") != 0){
    printf(1, "chdir dots failed\n");
    exit();
  }
  if(unlink(".") == 0){
    printf(1, "rm . worked!\n");
    298b:	50                   	push   %eax
    298c:	50                   	push   %eax
    298d:	68 f6 49 00 00       	push   $0x49f6
    2992:	6a 01                	push   $0x1
    2994:	e8 47 11 00 00       	call   3ae0 <printf>
    exit();
    2999:	e8 e4 0f 00 00       	call   3982 <exit>
  if(mkdir("dots") != 0){
    printf(1, "mkdir dots failed\n");
    exit();
  }
  if(chdir("dots") != 0){
    printf(1, "chdir dots failed\n");
    299e:	50                   	push   %eax
    299f:	50                   	push   %eax
    29a0:	68 e3 49 00 00       	push   $0x49e3
    29a5:	6a 01                	push   $0x1
    29a7:	e8 34 11 00 00       	call   3ae0 <printf>
    exit();
    29ac:	e8 d1 0f 00 00       	call   3982 <exit>
    29b1:	eb 0d                	jmp    29c0 <dirfile>
    29b3:	90                   	nop
    29b4:	90                   	nop
    29b5:	90                   	nop
    29b6:	90                   	nop
    29b7:	90                   	nop
    29b8:	90                   	nop
    29b9:	90                   	nop
    29ba:	90                   	nop
    29bb:	90                   	nop
    29bc:	90                   	nop
    29bd:	90                   	nop
    29be:	90                   	nop
    29bf:	90                   	nop

000029c0 <dirfile>:
  printf(1, "rmdot ok\n");
}

void
dirfile(void)
{
    29c0:	55                   	push   %ebp
    29c1:	89 e5                	mov    %esp,%ebp
    29c3:	53                   	push   %ebx
    29c4:	83 ec 0c             	sub    $0xc,%esp
  int fd;

  printf(1, "dir vs file\n");
    29c7:	68 70 4a 00 00       	push   $0x4a70
    29cc:	6a 01                	push   $0x1
    29ce:	e8 0d 11 00 00       	call   3ae0 <printf>

  fd = open("dirfile", O_CREATE);
    29d3:	59                   	pop    %ecx
    29d4:	5b                   	pop    %ebx
    29d5:	68 00 02 00 00       	push   $0x200
    29da:	68 7d 4a 00 00       	push   $0x4a7d
    29df:	e8 de 0f 00 00       	call   39c2 <open>
  if(fd < 0){
    29e4:	83 c4 10             	add    $0x10,%esp
    29e7:	85 c0                	test   %eax,%eax
    29e9:	0f 88 43 01 00 00    	js     2b32 <dirfile+0x172>
    printf(1, "create dirfile failed\n");
    exit();
  }
  close(fd);
    29ef:	83 ec 0c             	sub    $0xc,%esp
    29f2:	50                   	push   %eax
    29f3:	e8 b2 0f 00 00       	call   39aa <close>
  if(chdir("dirfile") == 0){
    29f8:	c7 04 24 7d 4a 00 00 	movl   $0x4a7d,(%esp)
    29ff:	e8 ee 0f 00 00       	call   39f2 <chdir>
    2a04:	83 c4 10             	add    $0x10,%esp
    2a07:	85 c0                	test   %eax,%eax
    2a09:	0f 84 10 01 00 00    	je     2b1f <dirfile+0x15f>
    printf(1, "chdir dirfile succeeded!\n");
    exit();
  }
  fd = open("dirfile/xx", 0);
    2a0f:	83 ec 08             	sub    $0x8,%esp
    2a12:	6a 00                	push   $0x0
    2a14:	68 b6 4a 00 00       	push   $0x4ab6
    2a19:	e8 a4 0f 00 00       	call   39c2 <open>
  if(fd >= 0){
    2a1e:	83 c4 10             	add    $0x10,%esp
    2a21:	85 c0                	test   %eax,%eax
    2a23:	0f 89 e3 00 00 00    	jns    2b0c <dirfile+0x14c>
    printf(1, "create dirfile/xx succeeded!\n");
    exit();
  }
  fd = open("dirfile/xx", O_CREATE);
    2a29:	83 ec 08             	sub    $0x8,%esp
    2a2c:	68 00 02 00 00       	push   $0x200
    2a31:	68 b6 4a 00 00       	push   $0x4ab6
    2a36:	e8 87 0f 00 00       	call   39c2 <open>
  if(fd >= 0){
    2a3b:	83 c4 10             	add    $0x10,%esp
    2a3e:	85 c0                	test   %eax,%eax
    2a40:	0f 89 c6 00 00 00    	jns    2b0c <dirfile+0x14c>
    printf(1, "create dirfile/xx succeeded!\n");
    exit();
  }
  if(mkdir("dirfile/xx") == 0){
    2a46:	83 ec 0c             	sub    $0xc,%esp
    2a49:	68 b6 4a 00 00       	push   $0x4ab6
    2a4e:	e8 97 0f 00 00       	call   39ea <mkdir>
    2a53:	83 c4 10             	add    $0x10,%esp
    2a56:	85 c0                	test   %eax,%eax
    2a58:	0f 84 46 01 00 00    	je     2ba4 <dirfile+0x1e4>
    printf(1, "mkdir dirfile/xx succeeded!\n");
    exit();
  }
  if(unlink("dirfile/xx") == 0){
    2a5e:	83 ec 0c             	sub    $0xc,%esp
    2a61:	68 b6 4a 00 00       	push   $0x4ab6
    2a66:	e8 67 0f 00 00       	call   39d2 <unlink>
    2a6b:	83 c4 10             	add    $0x10,%esp
    2a6e:	85 c0                	test   %eax,%eax
    2a70:	0f 84 1b 01 00 00    	je     2b91 <dirfile+0x1d1>
    printf(1, "unlink dirfile/xx succeeded!\n");
    exit();
  }
  if(link("README", "dirfile/xx") == 0){
    2a76:	83 ec 08             	sub    $0x8,%esp
    2a79:	68 b6 4a 00 00       	push   $0x4ab6
    2a7e:	68 1a 4b 00 00       	push   $0x4b1a
    2a83:	e8 5a 0f 00 00       	call   39e2 <link>
    2a88:	83 c4 10             	add    $0x10,%esp
    2a8b:	85 c0                	test   %eax,%eax
    2a8d:	0f 84 eb 00 00 00    	je     2b7e <dirfile+0x1be>
    printf(1, "link to dirfile/xx succeeded!\n");
    exit();
  }
  if(unlink("dirfile") != 0){
    2a93:	83 ec 0c             	sub    $0xc,%esp
    2a96:	68 7d 4a 00 00       	push   $0x4a7d
    2a9b:	e8 32 0f 00 00       	call   39d2 <unlink>
    2aa0:	83 c4 10             	add    $0x10,%esp
    2aa3:	85 c0                	test   %eax,%eax
    2aa5:	0f 85 c0 00 00 00    	jne    2b6b <dirfile+0x1ab>
    printf(1, "unlink dirfile failed!\n");
    exit();
  }

  fd = open(".", O_RDWR);
    2aab:	83 ec 08             	sub    $0x8,%esp
    2aae:	6a 02                	push   $0x2
    2ab0:	68 76 46 00 00       	push   $0x4676
    2ab5:	e8 08 0f 00 00       	call   39c2 <open>
  if(fd >= 0){
    2aba:	83 c4 10             	add    $0x10,%esp
    2abd:	85 c0                	test   %eax,%eax
    2abf:	0f 89 93 00 00 00    	jns    2b58 <dirfile+0x198>
    printf(1, "open . for writing succeeded!\n");
    exit();
  }
  fd = open(".", 0);
    2ac5:	83 ec 08             	sub    $0x8,%esp
    2ac8:	6a 00                	push   $0x0
    2aca:	68 76 46 00 00       	push   $0x4676
    2acf:	e8 ee 0e 00 00       	call   39c2 <open>
  if(write(fd, "x", 1) > 0){
    2ad4:	83 c4 0c             	add    $0xc,%esp
  fd = open(".", O_RDWR);
  if(fd >= 0){
    printf(1, "open . for writing succeeded!\n");
    exit();
  }
  fd = open(".", 0);
    2ad7:	89 c3                	mov    %eax,%ebx
  if(write(fd, "x", 1) > 0){
    2ad9:	6a 01                	push   $0x1
    2adb:	68 59 47 00 00       	push   $0x4759
    2ae0:	50                   	push   %eax
    2ae1:	e8 bc 0e 00 00       	call   39a2 <write>
    2ae6:	83 c4 10             	add    $0x10,%esp
    2ae9:	85 c0                	test   %eax,%eax
    2aeb:	7f 58                	jg     2b45 <dirfile+0x185>
    printf(1, "write . succeeded!\n");
    exit();
  }
  close(fd);
    2aed:	83 ec 0c             	sub    $0xc,%esp
    2af0:	53                   	push   %ebx
    2af1:	e8 b4 0e 00 00       	call   39aa <close>

  printf(1, "dir vs file OK\n");
    2af6:	58                   	pop    %eax
    2af7:	5a                   	pop    %edx
    2af8:	68 4d 4b 00 00       	push   $0x4b4d
    2afd:	6a 01                	push   $0x1
    2aff:	e8 dc 0f 00 00       	call   3ae0 <printf>
}
    2b04:	83 c4 10             	add    $0x10,%esp
    2b07:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2b0a:	c9                   	leave  
    2b0b:	c3                   	ret    
    printf(1, "chdir dirfile succeeded!\n");
    exit();
  }
  fd = open("dirfile/xx", 0);
  if(fd >= 0){
    printf(1, "create dirfile/xx succeeded!\n");
    2b0c:	50                   	push   %eax
    2b0d:	50                   	push   %eax
    2b0e:	68 c1 4a 00 00       	push   $0x4ac1
    2b13:	6a 01                	push   $0x1
    2b15:	e8 c6 0f 00 00       	call   3ae0 <printf>
    exit();
    2b1a:	e8 63 0e 00 00       	call   3982 <exit>
    printf(1, "create dirfile failed\n");
    exit();
  }
  close(fd);
  if(chdir("dirfile") == 0){
    printf(1, "chdir dirfile succeeded!\n");
    2b1f:	50                   	push   %eax
    2b20:	50                   	push   %eax
    2b21:	68 9c 4a 00 00       	push   $0x4a9c
    2b26:	6a 01                	push   $0x1
    2b28:	e8 b3 0f 00 00       	call   3ae0 <printf>
    exit();
    2b2d:	e8 50 0e 00 00       	call   3982 <exit>

  printf(1, "dir vs file\n");

  fd = open("dirfile", O_CREATE);
  if(fd < 0){
    printf(1, "create dirfile failed\n");
    2b32:	52                   	push   %edx
    2b33:	52                   	push   %edx
    2b34:	68 85 4a 00 00       	push   $0x4a85
    2b39:	6a 01                	push   $0x1
    2b3b:	e8 a0 0f 00 00       	call   3ae0 <printf>
    exit();
    2b40:	e8 3d 0e 00 00       	call   3982 <exit>
    printf(1, "open . for writing succeeded!\n");
    exit();
  }
  fd = open(".", 0);
  if(write(fd, "x", 1) > 0){
    printf(1, "write . succeeded!\n");
    2b45:	51                   	push   %ecx
    2b46:	51                   	push   %ecx
    2b47:	68 39 4b 00 00       	push   $0x4b39
    2b4c:	6a 01                	push   $0x1
    2b4e:	e8 8d 0f 00 00       	call   3ae0 <printf>
    exit();
    2b53:	e8 2a 0e 00 00       	call   3982 <exit>
    exit();
  }

  fd = open(".", O_RDWR);
  if(fd >= 0){
    printf(1, "open . for writing succeeded!\n");
    2b58:	53                   	push   %ebx
    2b59:	53                   	push   %ebx
    2b5a:	68 30 53 00 00       	push   $0x5330
    2b5f:	6a 01                	push   $0x1
    2b61:	e8 7a 0f 00 00       	call   3ae0 <printf>
    exit();
    2b66:	e8 17 0e 00 00       	call   3982 <exit>
  if(link("README", "dirfile/xx") == 0){
    printf(1, "link to dirfile/xx succeeded!\n");
    exit();
  }
  if(unlink("dirfile") != 0){
    printf(1, "unlink dirfile failed!\n");
    2b6b:	50                   	push   %eax
    2b6c:	50                   	push   %eax
    2b6d:	68 21 4b 00 00       	push   $0x4b21
    2b72:	6a 01                	push   $0x1
    2b74:	e8 67 0f 00 00       	call   3ae0 <printf>
    exit();
    2b79:	e8 04 0e 00 00       	call   3982 <exit>
  if(unlink("dirfile/xx") == 0){
    printf(1, "unlink dirfile/xx succeeded!\n");
    exit();
  }
  if(link("README", "dirfile/xx") == 0){
    printf(1, "link to dirfile/xx succeeded!\n");
    2b7e:	50                   	push   %eax
    2b7f:	50                   	push   %eax
    2b80:	68 10 53 00 00       	push   $0x5310
    2b85:	6a 01                	push   $0x1
    2b87:	e8 54 0f 00 00       	call   3ae0 <printf>
    exit();
    2b8c:	e8 f1 0d 00 00       	call   3982 <exit>
  if(mkdir("dirfile/xx") == 0){
    printf(1, "mkdir dirfile/xx succeeded!\n");
    exit();
  }
  if(unlink("dirfile/xx") == 0){
    printf(1, "unlink dirfile/xx succeeded!\n");
    2b91:	50                   	push   %eax
    2b92:	50                   	push   %eax
    2b93:	68 fc 4a 00 00       	push   $0x4afc
    2b98:	6a 01                	push   $0x1
    2b9a:	e8 41 0f 00 00       	call   3ae0 <printf>
    exit();
    2b9f:	e8 de 0d 00 00       	call   3982 <exit>
  if(fd >= 0){
    printf(1, "create dirfile/xx succeeded!\n");
    exit();
  }
  if(mkdir("dirfile/xx") == 0){
    printf(1, "mkdir dirfile/xx succeeded!\n");
    2ba4:	50                   	push   %eax
    2ba5:	50                   	push   %eax
    2ba6:	68 df 4a 00 00       	push   $0x4adf
    2bab:	6a 01                	push   $0x1
    2bad:	e8 2e 0f 00 00       	call   3ae0 <printf>
    exit();
    2bb2:	e8 cb 0d 00 00       	call   3982 <exit>
    2bb7:	89 f6                	mov    %esi,%esi
    2bb9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002bc0 <iref>:
}

// test that iput() is called at the end of _namei()
void
iref(void)
{
    2bc0:	55                   	push   %ebp
    2bc1:	89 e5                	mov    %esp,%ebp
    2bc3:	53                   	push   %ebx
  int i, fd;

  printf(1, "empty file name\n");
    2bc4:	bb 33 00 00 00       	mov    $0x33,%ebx
}

// test that iput() is called at the end of _namei()
void
iref(void)
{
    2bc9:	83 ec 0c             	sub    $0xc,%esp
  int i, fd;

  printf(1, "empty file name\n");
    2bcc:	68 5d 4b 00 00       	push   $0x4b5d
    2bd1:	6a 01                	push   $0x1
    2bd3:	e8 08 0f 00 00       	call   3ae0 <printf>
    2bd8:	83 c4 10             	add    $0x10,%esp
    2bdb:	90                   	nop
    2bdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

  // the 50 is NINODE
  for(i = 0; i < 50 + 1; i++){
    if(mkdir("irefd") != 0){
    2be0:	83 ec 0c             	sub    $0xc,%esp
    2be3:	68 6e 4b 00 00       	push   $0x4b6e
    2be8:	e8 fd 0d 00 00       	call   39ea <mkdir>
    2bed:	83 c4 10             	add    $0x10,%esp
    2bf0:	85 c0                	test   %eax,%eax
    2bf2:	0f 85 bb 00 00 00    	jne    2cb3 <iref+0xf3>
      printf(1, "mkdir irefd failed\n");
      exit();
    }
    if(chdir("irefd") != 0){
    2bf8:	83 ec 0c             	sub    $0xc,%esp
    2bfb:	68 6e 4b 00 00       	push   $0x4b6e
    2c00:	e8 ed 0d 00 00       	call   39f2 <chdir>
    2c05:	83 c4 10             	add    $0x10,%esp
    2c08:	85 c0                	test   %eax,%eax
    2c0a:	0f 85 b7 00 00 00    	jne    2cc7 <iref+0x107>
      printf(1, "chdir irefd failed\n");
      exit();
    }

    mkdir("");
    2c10:	83 ec 0c             	sub    $0xc,%esp
    2c13:	68 23 42 00 00       	push   $0x4223
    2c18:	e8 cd 0d 00 00       	call   39ea <mkdir>
    link("README", "");
    2c1d:	59                   	pop    %ecx
    2c1e:	58                   	pop    %eax
    2c1f:	68 23 42 00 00       	push   $0x4223
    2c24:	68 1a 4b 00 00       	push   $0x4b1a
    2c29:	e8 b4 0d 00 00       	call   39e2 <link>
    fd = open("", O_CREATE);
    2c2e:	58                   	pop    %eax
    2c2f:	5a                   	pop    %edx
    2c30:	68 00 02 00 00       	push   $0x200
    2c35:	68 23 42 00 00       	push   $0x4223
    2c3a:	e8 83 0d 00 00       	call   39c2 <open>
    if(fd >= 0)
    2c3f:	83 c4 10             	add    $0x10,%esp
    2c42:	85 c0                	test   %eax,%eax
    2c44:	78 0c                	js     2c52 <iref+0x92>
      close(fd);
    2c46:	83 ec 0c             	sub    $0xc,%esp
    2c49:	50                   	push   %eax
    2c4a:	e8 5b 0d 00 00       	call   39aa <close>
    2c4f:	83 c4 10             	add    $0x10,%esp
    fd = open("xx", O_CREATE);
    2c52:	83 ec 08             	sub    $0x8,%esp
    2c55:	68 00 02 00 00       	push   $0x200
    2c5a:	68 58 47 00 00       	push   $0x4758
    2c5f:	e8 5e 0d 00 00       	call   39c2 <open>
    if(fd >= 0)
    2c64:	83 c4 10             	add    $0x10,%esp
    2c67:	85 c0                	test   %eax,%eax
    2c69:	78 0c                	js     2c77 <iref+0xb7>
      close(fd);
    2c6b:	83 ec 0c             	sub    $0xc,%esp
    2c6e:	50                   	push   %eax
    2c6f:	e8 36 0d 00 00       	call   39aa <close>
    2c74:	83 c4 10             	add    $0x10,%esp
    unlink("xx");
    2c77:	83 ec 0c             	sub    $0xc,%esp
    2c7a:	68 58 47 00 00       	push   $0x4758
    2c7f:	e8 4e 0d 00 00       	call   39d2 <unlink>
  int i, fd;

  printf(1, "empty file name\n");

  // the 50 is NINODE
  for(i = 0; i < 50 + 1; i++){
    2c84:	83 c4 10             	add    $0x10,%esp
    2c87:	83 eb 01             	sub    $0x1,%ebx
    2c8a:	0f 85 50 ff ff ff    	jne    2be0 <iref+0x20>
    if(fd >= 0)
      close(fd);
    unlink("xx");
  }

  chdir("/");
    2c90:	83 ec 0c             	sub    $0xc,%esp
    2c93:	68 49 3e 00 00       	push   $0x3e49
    2c98:	e8 55 0d 00 00       	call   39f2 <chdir>
  printf(1, "empty file name OK\n");
    2c9d:	58                   	pop    %eax
    2c9e:	5a                   	pop    %edx
    2c9f:	68 9c 4b 00 00       	push   $0x4b9c
    2ca4:	6a 01                	push   $0x1
    2ca6:	e8 35 0e 00 00       	call   3ae0 <printf>
}
    2cab:	83 c4 10             	add    $0x10,%esp
    2cae:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2cb1:	c9                   	leave  
    2cb2:	c3                   	ret    
  printf(1, "empty file name\n");

  // the 50 is NINODE
  for(i = 0; i < 50 + 1; i++){
    if(mkdir("irefd") != 0){
      printf(1, "mkdir irefd failed\n");
    2cb3:	83 ec 08             	sub    $0x8,%esp
    2cb6:	68 74 4b 00 00       	push   $0x4b74
    2cbb:	6a 01                	push   $0x1
    2cbd:	e8 1e 0e 00 00       	call   3ae0 <printf>
      exit();
    2cc2:	e8 bb 0c 00 00       	call   3982 <exit>
    }
    if(chdir("irefd") != 0){
      printf(1, "chdir irefd failed\n");
    2cc7:	83 ec 08             	sub    $0x8,%esp
    2cca:	68 88 4b 00 00       	push   $0x4b88
    2ccf:	6a 01                	push   $0x1
    2cd1:	e8 0a 0e 00 00       	call   3ae0 <printf>
      exit();
    2cd6:	e8 a7 0c 00 00       	call   3982 <exit>
    2cdb:	90                   	nop
    2cdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00002ce0 <forktest>:
// test that fork fails gracefully
// the forktest binary also does this, but it runs out of proc entries first.
// inside the bigger usertests binary, we run out of memory first.
void
forktest(void)
{
    2ce0:	55                   	push   %ebp
    2ce1:	89 e5                	mov    %esp,%ebp
    2ce3:	53                   	push   %ebx
  int n, pid;

  printf(1, "fork test\n");

  for(n=0; n<1000; n++){
    2ce4:	31 db                	xor    %ebx,%ebx
// test that fork fails gracefully
// the forktest binary also does this, but it runs out of proc entries first.
// inside the bigger usertests binary, we run out of memory first.
void
forktest(void)
{
    2ce6:	83 ec 0c             	sub    $0xc,%esp
  int n, pid;

  printf(1, "fork test\n");
    2ce9:	68 b0 4b 00 00       	push   $0x4bb0
    2cee:	6a 01                	push   $0x1
    2cf0:	e8 eb 0d 00 00       	call   3ae0 <printf>
    2cf5:	83 c4 10             	add    $0x10,%esp
    2cf8:	eb 13                	jmp    2d0d <forktest+0x2d>
    2cfa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

  for(n=0; n<1000; n++){
    pid = fork();
    if(pid < 0)
      break;
    if(pid == 0)
    2d00:	74 72                	je     2d74 <forktest+0x94>
{
  int n, pid;

  printf(1, "fork test\n");

  for(n=0; n<1000; n++){
    2d02:	83 c3 01             	add    $0x1,%ebx
    2d05:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    2d0b:	74 53                	je     2d60 <forktest+0x80>
    pid = fork();
    2d0d:	e8 68 0c 00 00       	call   397a <fork>
    if(pid < 0)
    2d12:	85 c0                	test   %eax,%eax
    2d14:	79 ea                	jns    2d00 <forktest+0x20>
  if(n == 1000){
    printf(1, "fork claimed to work 1000 times!\n");
    exit();
  }

  for(; n > 0; n--){
    2d16:	85 db                	test   %ebx,%ebx
    2d18:	74 1c                	je     2d36 <forktest+0x56>
    2d1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(wait(0) < 0){
    2d20:	83 ec 0c             	sub    $0xc,%esp
    2d23:	6a 00                	push   $0x0
    2d25:	e8 60 0c 00 00       	call   398a <wait>
    2d2a:	83 c4 10             	add    $0x10,%esp
    2d2d:	85 c0                	test   %eax,%eax
    2d2f:	78 48                	js     2d79 <forktest+0x99>
  if(n == 1000){
    printf(1, "fork claimed to work 1000 times!\n");
    exit();
  }

  for(; n > 0; n--){
    2d31:	83 eb 01             	sub    $0x1,%ebx
    2d34:	75 ea                	jne    2d20 <forktest+0x40>
      printf(1, "wait stopped early\n");
      exit();
    }
  }

  if(wait(0) != -1){
    2d36:	83 ec 0c             	sub    $0xc,%esp
    2d39:	6a 00                	push   $0x0
    2d3b:	e8 4a 0c 00 00       	call   398a <wait>
    2d40:	83 c4 10             	add    $0x10,%esp
    2d43:	83 f8 ff             	cmp    $0xffffffff,%eax
    2d46:	75 45                	jne    2d8d <forktest+0xad>
    printf(1, "wait got too many\n");
    exit();
  }

  printf(1, "fork test OK\n");
    2d48:	83 ec 08             	sub    $0x8,%esp
    2d4b:	68 e2 4b 00 00       	push   $0x4be2
    2d50:	6a 01                	push   $0x1
    2d52:	e8 89 0d 00 00       	call   3ae0 <printf>
}
    2d57:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2d5a:	c9                   	leave  
    2d5b:	c3                   	ret    
    2d5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid == 0)
      exit();
  }

  if(n == 1000){
    printf(1, "fork claimed to work 1000 times!\n");
    2d60:	83 ec 08             	sub    $0x8,%esp
    2d63:	68 50 53 00 00       	push   $0x5350
    2d68:	6a 01                	push   $0x1
    2d6a:	e8 71 0d 00 00       	call   3ae0 <printf>
    exit();
    2d6f:	e8 0e 0c 00 00       	call   3982 <exit>
  for(n=0; n<1000; n++){
    pid = fork();
    if(pid < 0)
      break;
    if(pid == 0)
      exit();
    2d74:	e8 09 0c 00 00       	call   3982 <exit>
    exit();
  }

  for(; n > 0; n--){
    if(wait(0) < 0){
      printf(1, "wait stopped early\n");
    2d79:	83 ec 08             	sub    $0x8,%esp
    2d7c:	68 bb 4b 00 00       	push   $0x4bbb
    2d81:	6a 01                	push   $0x1
    2d83:	e8 58 0d 00 00       	call   3ae0 <printf>
      exit();
    2d88:	e8 f5 0b 00 00       	call   3982 <exit>
    }
  }

  if(wait(0) != -1){
    printf(1, "wait got too many\n");
    2d8d:	83 ec 08             	sub    $0x8,%esp
    2d90:	68 cf 4b 00 00       	push   $0x4bcf
    2d95:	6a 01                	push   $0x1
    2d97:	e8 44 0d 00 00       	call   3ae0 <printf>
    exit();
    2d9c:	e8 e1 0b 00 00       	call   3982 <exit>
    2da1:	eb 0d                	jmp    2db0 <sbrktest>
    2da3:	90                   	nop
    2da4:	90                   	nop
    2da5:	90                   	nop
    2da6:	90                   	nop
    2da7:	90                   	nop
    2da8:	90                   	nop
    2da9:	90                   	nop
    2daa:	90                   	nop
    2dab:	90                   	nop
    2dac:	90                   	nop
    2dad:	90                   	nop
    2dae:	90                   	nop
    2daf:	90                   	nop

00002db0 <sbrktest>:
  printf(1, "fork test OK\n");
}

void
sbrktest(void)
{
    2db0:	55                   	push   %ebp
    2db1:	89 e5                	mov    %esp,%ebp
    2db3:	57                   	push   %edi
    2db4:	56                   	push   %esi
    2db5:	53                   	push   %ebx
  oldbrk = sbrk(0);

  // can one sbrk() less than a page?
  a = sbrk(0);
  int i;
  for(i = 0; i < 5000; i++){
    2db6:	31 ff                	xor    %edi,%edi
  printf(1, "fork test OK\n");
}

void
sbrktest(void)
{
    2db8:	83 ec 64             	sub    $0x64,%esp
  int fds[2], pid, pids[10], ppid;
  char *a, *b, *c, *lastaddr, *oldbrk, *p, scratch;
  uint amt;

  printf(stdout, "sbrk test\n");
    2dbb:	68 f0 4b 00 00       	push   $0x4bf0
    2dc0:	ff 35 94 5e 00 00    	pushl  0x5e94
    2dc6:	e8 15 0d 00 00       	call   3ae0 <printf>
  oldbrk = sbrk(0);
    2dcb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2dd2:	e8 33 0c 00 00       	call   3a0a <sbrk>

  // can one sbrk() less than a page?
  a = sbrk(0);
    2dd7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  int fds[2], pid, pids[10], ppid;
  char *a, *b, *c, *lastaddr, *oldbrk, *p, scratch;
  uint amt;

  printf(stdout, "sbrk test\n");
  oldbrk = sbrk(0);
    2dde:	89 45 a4             	mov    %eax,-0x5c(%ebp)

  // can one sbrk() less than a page?
  a = sbrk(0);
    2de1:	e8 24 0c 00 00       	call   3a0a <sbrk>
    2de6:	83 c4 10             	add    $0x10,%esp
    2de9:	89 c3                	mov    %eax,%ebx
    2deb:	90                   	nop
    2dec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  int i;
  for(i = 0; i < 5000; i++){
    b = sbrk(1);
    2df0:	83 ec 0c             	sub    $0xc,%esp
    2df3:	6a 01                	push   $0x1
    2df5:	e8 10 0c 00 00       	call   3a0a <sbrk>
    if(b != a){
    2dfa:	83 c4 10             	add    $0x10,%esp
    2dfd:	39 d8                	cmp    %ebx,%eax
    2dff:	0f 85 9d 02 00 00    	jne    30a2 <sbrktest+0x2f2>
  oldbrk = sbrk(0);

  // can one sbrk() less than a page?
  a = sbrk(0);
  int i;
  for(i = 0; i < 5000; i++){
    2e05:	83 c7 01             	add    $0x1,%edi
    b = sbrk(1);
    if(b != a){
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
      exit();
    }
    *b = 1;
    2e08:	c6 03 01             	movb   $0x1,(%ebx)
    a = b + 1;
    2e0b:	83 c3 01             	add    $0x1,%ebx
  oldbrk = sbrk(0);

  // can one sbrk() less than a page?
  a = sbrk(0);
  int i;
  for(i = 0; i < 5000; i++){
    2e0e:	81 ff 88 13 00 00    	cmp    $0x1388,%edi
    2e14:	75 da                	jne    2df0 <sbrktest+0x40>
      exit();
    }
    *b = 1;
    a = b + 1;
  }
  pid = fork();
    2e16:	e8 5f 0b 00 00       	call   397a <fork>
  if(pid < 0){
    2e1b:	85 c0                	test   %eax,%eax
      exit();
    }
    *b = 1;
    a = b + 1;
  }
  pid = fork();
    2e1d:	89 c7                	mov    %eax,%edi
  if(pid < 0){
    2e1f:	0f 88 ab 03 00 00    	js     31d0 <sbrktest+0x420>
    printf(stdout, "sbrk test fork failed\n");
    exit();
  }
  c = sbrk(1);
    2e25:	83 ec 0c             	sub    $0xc,%esp
  c = sbrk(1);
  if(c != a + 1){
    2e28:	83 c3 01             	add    $0x1,%ebx
  pid = fork();
  if(pid < 0){
    printf(stdout, "sbrk test fork failed\n");
    exit();
  }
  c = sbrk(1);
    2e2b:	6a 01                	push   $0x1
    2e2d:	e8 d8 0b 00 00       	call   3a0a <sbrk>
  c = sbrk(1);
    2e32:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e39:	e8 cc 0b 00 00       	call   3a0a <sbrk>
  if(c != a + 1){
    2e3e:	83 c4 10             	add    $0x10,%esp
    2e41:	39 d8                	cmp    %ebx,%eax
    2e43:	0f 85 6f 03 00 00    	jne    31b8 <sbrktest+0x408>
    printf(stdout, "sbrk test failed post-fork\n");
    exit();
  }
  if(pid == 0)
    2e49:	85 ff                	test   %edi,%edi
    2e4b:	0f 84 62 03 00 00    	je     31b3 <sbrktest+0x403>
    exit();
  wait(0);
    2e51:	83 ec 0c             	sub    $0xc,%esp
    2e54:	6a 00                	push   $0x0
    2e56:	e8 2f 0b 00 00       	call   398a <wait>

  // can one grow address space to something big?
#define BIG (100*1024*1024)
  a = sbrk(0);
    2e5b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2e62:	e8 a3 0b 00 00       	call   3a0a <sbrk>
    2e67:	89 c3                	mov    %eax,%ebx
  amt = (BIG) - (uint)a;
  p = sbrk(amt);
    2e69:	b8 00 00 40 06       	mov    $0x6400000,%eax
    2e6e:	29 d8                	sub    %ebx,%eax
    2e70:	89 04 24             	mov    %eax,(%esp)
    2e73:	e8 92 0b 00 00       	call   3a0a <sbrk>
  if (p != a) {
    2e78:	83 c4 10             	add    $0x10,%esp
    2e7b:	39 c3                	cmp    %eax,%ebx
    2e7d:	0f 85 18 03 00 00    	jne    319b <sbrktest+0x3eb>
  }
  lastaddr = (char*) (BIG-1);
  *lastaddr = 99;

  // can one de-allocate?
  a = sbrk(0);
    2e83:	83 ec 0c             	sub    $0xc,%esp
  if (p != a) {
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    exit();
  }
  lastaddr = (char*) (BIG-1);
  *lastaddr = 99;
    2e86:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff

  // can one de-allocate?
  a = sbrk(0);
    2e8d:	6a 00                	push   $0x0
    2e8f:	e8 76 0b 00 00       	call   3a0a <sbrk>
  c = sbrk(-4096);
    2e94:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
  }
  lastaddr = (char*) (BIG-1);
  *lastaddr = 99;

  // can one de-allocate?
  a = sbrk(0);
    2e9b:	89 c3                	mov    %eax,%ebx
  c = sbrk(-4096);
    2e9d:	e8 68 0b 00 00       	call   3a0a <sbrk>
  if(c == (char*)0xffffffff){
    2ea2:	83 c4 10             	add    $0x10,%esp
    2ea5:	83 f8 ff             	cmp    $0xffffffff,%eax
    2ea8:	0f 84 d5 02 00 00    	je     3183 <sbrktest+0x3d3>
    printf(stdout, "sbrk could not deallocate\n");
    exit();
  }
  c = sbrk(0);
    2eae:	83 ec 0c             	sub    $0xc,%esp
    2eb1:	6a 00                	push   $0x0
    2eb3:	e8 52 0b 00 00       	call   3a0a <sbrk>
  if(c != a - 4096){
    2eb8:	8d 93 00 f0 ff ff    	lea    -0x1000(%ebx),%edx
    2ebe:	83 c4 10             	add    $0x10,%esp
    2ec1:	39 d0                	cmp    %edx,%eax
    2ec3:	0f 85 a3 02 00 00    	jne    316c <sbrktest+0x3bc>
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    exit();
  }

  // can one re-allocate that page?
  a = sbrk(0);
    2ec9:	83 ec 0c             	sub    $0xc,%esp
    2ecc:	6a 00                	push   $0x0
    2ece:	e8 37 0b 00 00       	call   3a0a <sbrk>
    2ed3:	89 c3                	mov    %eax,%ebx
  c = sbrk(4096);
    2ed5:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
    2edc:	e8 29 0b 00 00       	call   3a0a <sbrk>
  if(c != a || sbrk(0) != a + 4096){
    2ee1:	83 c4 10             	add    $0x10,%esp
    2ee4:	39 c3                	cmp    %eax,%ebx
    exit();
  }

  // can one re-allocate that page?
  a = sbrk(0);
  c = sbrk(4096);
    2ee6:	89 c7                	mov    %eax,%edi
  if(c != a || sbrk(0) != a + 4096){
    2ee8:	0f 85 67 02 00 00    	jne    3155 <sbrktest+0x3a5>
    2eee:	83 ec 0c             	sub    $0xc,%esp
    2ef1:	6a 00                	push   $0x0
    2ef3:	e8 12 0b 00 00       	call   3a0a <sbrk>
    2ef8:	8d 93 00 10 00 00    	lea    0x1000(%ebx),%edx
    2efe:	83 c4 10             	add    $0x10,%esp
    2f01:	39 d0                	cmp    %edx,%eax
    2f03:	0f 85 4c 02 00 00    	jne    3155 <sbrktest+0x3a5>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    exit();
  }
  if(*lastaddr == 99){
    2f09:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    2f10:	0f 84 27 02 00 00    	je     313d <sbrktest+0x38d>
    // should be zero
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    exit();
  }

  a = sbrk(0);
    2f16:	83 ec 0c             	sub    $0xc,%esp
    2f19:	6a 00                	push   $0x0
    2f1b:	e8 ea 0a 00 00       	call   3a0a <sbrk>
  c = sbrk(-(sbrk(0) - oldbrk));
    2f20:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    // should be zero
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    exit();
  }

  a = sbrk(0);
    2f27:	89 c3                	mov    %eax,%ebx
  c = sbrk(-(sbrk(0) - oldbrk));
    2f29:	e8 dc 0a 00 00       	call   3a0a <sbrk>
    2f2e:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
    2f31:	29 c1                	sub    %eax,%ecx
    2f33:	89 0c 24             	mov    %ecx,(%esp)
    2f36:	e8 cf 0a 00 00       	call   3a0a <sbrk>
  if(c != a){
    2f3b:	83 c4 10             	add    $0x10,%esp
    2f3e:	39 c3                	cmp    %eax,%ebx
    2f40:	0f 85 e0 01 00 00    	jne    3126 <sbrktest+0x376>
    2f46:	bb 00 00 00 80       	mov    $0x80000000,%ebx
    2f4b:	90                   	nop
    2f4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    exit();
  }

  // can we read the kernel's memory?
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    ppid = getpid();
    2f50:	e8 ad 0a 00 00       	call   3a02 <getpid>
    2f55:	89 c7                	mov    %eax,%edi
    pid = fork();
    2f57:	e8 1e 0a 00 00       	call   397a <fork>
    if(pid < 0){
    2f5c:	85 c0                	test   %eax,%eax
    2f5e:	0f 88 aa 01 00 00    	js     310e <sbrktest+0x35e>
      printf(stdout, "fork failed\n");
      exit();
    }
    if(pid == 0){
    2f64:	0f 84 82 01 00 00    	je     30ec <sbrktest+0x33c>
      printf(stdout, "oops could read %x = %x\n", a, *a);
      kill(ppid);
      exit();
    }
    wait(0);
    2f6a:	83 ec 0c             	sub    $0xc,%esp
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    exit();
  }

  // can we read the kernel's memory?
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    2f6d:	81 c3 50 c3 00 00    	add    $0xc350,%ebx
    if(pid == 0){
      printf(stdout, "oops could read %x = %x\n", a, *a);
      kill(ppid);
      exit();
    }
    wait(0);
    2f73:	6a 00                	push   $0x0
    2f75:	e8 10 0a 00 00       	call   398a <wait>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    exit();
  }

  // can we read the kernel's memory?
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    2f7a:	83 c4 10             	add    $0x10,%esp
    2f7d:	81 fb 80 84 1e 80    	cmp    $0x801e8480,%ebx
    2f83:	75 cb                	jne    2f50 <sbrktest+0x1a0>
    wait(0);
  }

  // if we run the system out of memory, does it clean up the last
  // failed allocation?
  if(pipe(fds) != 0){
    2f85:	8d 45 b8             	lea    -0x48(%ebp),%eax
    2f88:	83 ec 0c             	sub    $0xc,%esp
    2f8b:	50                   	push   %eax
    2f8c:	e8 01 0a 00 00       	call   3992 <pipe>
    2f91:	83 c4 10             	add    $0x10,%esp
    2f94:	85 c0                	test   %eax,%eax
    2f96:	0f 85 3c 01 00 00    	jne    30d8 <sbrktest+0x328>
    2f9c:	8d 5d c0             	lea    -0x40(%ebp),%ebx
    2f9f:	8d 7d e8             	lea    -0x18(%ebp),%edi
    2fa2:	89 de                	mov    %ebx,%esi
    printf(1, "pipe() failed\n");
    exit();
  }
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    if((pids[i] = fork()) == 0){
    2fa4:	e8 d1 09 00 00       	call   397a <fork>
    2fa9:	85 c0                	test   %eax,%eax
    2fab:	89 06                	mov    %eax,(%esi)
    2fad:	0f 84 a8 00 00 00    	je     305b <sbrktest+0x2ab>
      sbrk(BIG - (uint)sbrk(0));
      write(fds[1], "x", 1);
      // sit around until killed
      for(;;) sleep(1000);
    }
    if(pids[i] != -1)
    2fb3:	83 f8 ff             	cmp    $0xffffffff,%eax
    2fb6:	74 14                	je     2fcc <sbrktest+0x21c>
      read(fds[0], &scratch, 1);
    2fb8:	8d 45 b7             	lea    -0x49(%ebp),%eax
    2fbb:	83 ec 04             	sub    $0x4,%esp
    2fbe:	6a 01                	push   $0x1
    2fc0:	50                   	push   %eax
    2fc1:	ff 75 b8             	pushl  -0x48(%ebp)
    2fc4:	e8 d1 09 00 00       	call   399a <read>
    2fc9:	83 c4 10             	add    $0x10,%esp
    2fcc:	83 c6 04             	add    $0x4,%esi
  // failed allocation?
  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
    exit();
  }
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    2fcf:	39 f7                	cmp    %esi,%edi
    2fd1:	75 d1                	jne    2fa4 <sbrktest+0x1f4>
    if(pids[i] != -1)
      read(fds[0], &scratch, 1);
  }
  // if those failed allocations freed up the pages they did allocate,
  // we'll be able to allocate here
  c = sbrk(4096);
    2fd3:	83 ec 0c             	sub    $0xc,%esp
    2fd6:	68 00 10 00 00       	push   $0x1000
    2fdb:	e8 2a 0a 00 00       	call   3a0a <sbrk>
    2fe0:	83 c4 10             	add    $0x10,%esp
    2fe3:	89 c6                	mov    %eax,%esi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    if(pids[i] == -1)
    2fe5:	8b 03                	mov    (%ebx),%eax
    2fe7:	83 f8 ff             	cmp    $0xffffffff,%eax
    2fea:	74 18                	je     3004 <sbrktest+0x254>
      continue;
    kill(pids[i]);
    2fec:	83 ec 0c             	sub    $0xc,%esp
    2fef:	50                   	push   %eax
    2ff0:	e8 bd 09 00 00       	call   39b2 <kill>
    wait(0);
    2ff5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ffc:	e8 89 09 00 00       	call   398a <wait>
    3001:	83 c4 10             	add    $0x10,%esp
    3004:	83 c3 04             	add    $0x4,%ebx
      read(fds[0], &scratch, 1);
  }
  // if those failed allocations freed up the pages they did allocate,
  // we'll be able to allocate here
  c = sbrk(4096);
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    3007:	39 fb                	cmp    %edi,%ebx
    3009:	75 da                	jne    2fe5 <sbrktest+0x235>
    if(pids[i] == -1)
      continue;
    kill(pids[i]);
    wait(0);
  }
  if(c == (char*)0xffffffff){
    300b:	83 fe ff             	cmp    $0xffffffff,%esi
    300e:	0f 84 ac 00 00 00    	je     30c0 <sbrktest+0x310>
    printf(stdout, "failed sbrk leaked memory\n");
    exit();
  }

  if(sbrk(0) > oldbrk)
    3014:	83 ec 0c             	sub    $0xc,%esp
    3017:	6a 00                	push   $0x0
    3019:	e8 ec 09 00 00       	call   3a0a <sbrk>
    301e:	83 c4 10             	add    $0x10,%esp
    3021:	39 45 a4             	cmp    %eax,-0x5c(%ebp)
    3024:	73 1a                	jae    3040 <sbrktest+0x290>
    sbrk(-(sbrk(0) - oldbrk));
    3026:	83 ec 0c             	sub    $0xc,%esp
    3029:	6a 00                	push   $0x0
    302b:	e8 da 09 00 00       	call   3a0a <sbrk>
    3030:	8b 75 a4             	mov    -0x5c(%ebp),%esi
    3033:	29 c6                	sub    %eax,%esi
    3035:	89 34 24             	mov    %esi,(%esp)
    3038:	e8 cd 09 00 00       	call   3a0a <sbrk>
    303d:	83 c4 10             	add    $0x10,%esp

  printf(stdout, "sbrk test OK\n");
    3040:	83 ec 08             	sub    $0x8,%esp
    3043:	68 98 4c 00 00       	push   $0x4c98
    3048:	ff 35 94 5e 00 00    	pushl  0x5e94
    304e:	e8 8d 0a 00 00       	call   3ae0 <printf>
}
    3053:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3056:	5b                   	pop    %ebx
    3057:	5e                   	pop    %esi
    3058:	5f                   	pop    %edi
    3059:	5d                   	pop    %ebp
    305a:	c3                   	ret    
    exit();
  }
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    if((pids[i] = fork()) == 0){
      // allocate a lot of memory
      sbrk(BIG - (uint)sbrk(0));
    305b:	83 ec 0c             	sub    $0xc,%esp
    305e:	6a 00                	push   $0x0
    3060:	e8 a5 09 00 00       	call   3a0a <sbrk>
    3065:	ba 00 00 40 06       	mov    $0x6400000,%edx
    306a:	29 c2                	sub    %eax,%edx
    306c:	89 14 24             	mov    %edx,(%esp)
    306f:	e8 96 09 00 00       	call   3a0a <sbrk>
      write(fds[1], "x", 1);
    3074:	83 c4 0c             	add    $0xc,%esp
    3077:	6a 01                	push   $0x1
    3079:	68 59 47 00 00       	push   $0x4759
    307e:	ff 75 bc             	pushl  -0x44(%ebp)
    3081:	e8 1c 09 00 00       	call   39a2 <write>
    3086:	83 c4 10             	add    $0x10,%esp
    3089:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      // sit around until killed
      for(;;) sleep(1000);
    3090:	83 ec 0c             	sub    $0xc,%esp
    3093:	68 e8 03 00 00       	push   $0x3e8
    3098:	e8 75 09 00 00       	call   3a12 <sleep>
    309d:	83 c4 10             	add    $0x10,%esp
    30a0:	eb ee                	jmp    3090 <sbrktest+0x2e0>
  a = sbrk(0);
  int i;
  for(i = 0; i < 5000; i++){
    b = sbrk(1);
    if(b != a){
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
    30a2:	83 ec 0c             	sub    $0xc,%esp
    30a5:	50                   	push   %eax
    30a6:	53                   	push   %ebx
    30a7:	57                   	push   %edi
    30a8:	68 fb 4b 00 00       	push   $0x4bfb
    30ad:	ff 35 94 5e 00 00    	pushl  0x5e94
    30b3:	e8 28 0a 00 00       	call   3ae0 <printf>
      exit();
    30b8:	83 c4 20             	add    $0x20,%esp
    30bb:	e8 c2 08 00 00       	call   3982 <exit>
      continue;
    kill(pids[i]);
    wait(0);
  }
  if(c == (char*)0xffffffff){
    printf(stdout, "failed sbrk leaked memory\n");
    30c0:	83 ec 08             	sub    $0x8,%esp
    30c3:	68 7d 4c 00 00       	push   $0x4c7d
    30c8:	ff 35 94 5e 00 00    	pushl  0x5e94
    30ce:	e8 0d 0a 00 00       	call   3ae0 <printf>
    exit();
    30d3:	e8 aa 08 00 00       	call   3982 <exit>
  }

  // if we run the system out of memory, does it clean up the last
  // failed allocation?
  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
    30d8:	83 ec 08             	sub    $0x8,%esp
    30db:	68 39 41 00 00       	push   $0x4139
    30e0:	6a 01                	push   $0x1
    30e2:	e8 f9 09 00 00       	call   3ae0 <printf>
    exit();
    30e7:	e8 96 08 00 00       	call   3982 <exit>
    if(pid < 0){
      printf(stdout, "fork failed\n");
      exit();
    }
    if(pid == 0){
      printf(stdout, "oops could read %x = %x\n", a, *a);
    30ec:	0f be 03             	movsbl (%ebx),%eax
    30ef:	50                   	push   %eax
    30f0:	53                   	push   %ebx
    30f1:	68 64 4c 00 00       	push   $0x4c64
    30f6:	ff 35 94 5e 00 00    	pushl  0x5e94
    30fc:	e8 df 09 00 00       	call   3ae0 <printf>
      kill(ppid);
    3101:	89 3c 24             	mov    %edi,(%esp)
    3104:	e8 a9 08 00 00       	call   39b2 <kill>
      exit();
    3109:	e8 74 08 00 00       	call   3982 <exit>
  // can we read the kernel's memory?
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    ppid = getpid();
    pid = fork();
    if(pid < 0){
      printf(stdout, "fork failed\n");
    310e:	83 ec 08             	sub    $0x8,%esp
    3111:	68 41 4d 00 00       	push   $0x4d41
    3116:	ff 35 94 5e 00 00    	pushl  0x5e94
    311c:	e8 bf 09 00 00       	call   3ae0 <printf>
      exit();
    3121:	e8 5c 08 00 00       	call   3982 <exit>
  }

  a = sbrk(0);
  c = sbrk(-(sbrk(0) - oldbrk));
  if(c != a){
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    3126:	50                   	push   %eax
    3127:	53                   	push   %ebx
    3128:	68 44 54 00 00       	push   $0x5444
    312d:	ff 35 94 5e 00 00    	pushl  0x5e94
    3133:	e8 a8 09 00 00       	call   3ae0 <printf>
    exit();
    3138:	e8 45 08 00 00       	call   3982 <exit>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    exit();
  }
  if(*lastaddr == 99){
    // should be zero
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    313d:	83 ec 08             	sub    $0x8,%esp
    3140:	68 14 54 00 00       	push   $0x5414
    3145:	ff 35 94 5e 00 00    	pushl  0x5e94
    314b:	e8 90 09 00 00       	call   3ae0 <printf>
    exit();
    3150:	e8 2d 08 00 00       	call   3982 <exit>

  // can one re-allocate that page?
  a = sbrk(0);
  c = sbrk(4096);
  if(c != a || sbrk(0) != a + 4096){
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    3155:	57                   	push   %edi
    3156:	53                   	push   %ebx
    3157:	68 ec 53 00 00       	push   $0x53ec
    315c:	ff 35 94 5e 00 00    	pushl  0x5e94
    3162:	e8 79 09 00 00       	call   3ae0 <printf>
    exit();
    3167:	e8 16 08 00 00       	call   3982 <exit>
    printf(stdout, "sbrk could not deallocate\n");
    exit();
  }
  c = sbrk(0);
  if(c != a - 4096){
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    316c:	50                   	push   %eax
    316d:	53                   	push   %ebx
    316e:	68 b4 53 00 00       	push   $0x53b4
    3173:	ff 35 94 5e 00 00    	pushl  0x5e94
    3179:	e8 62 09 00 00       	call   3ae0 <printf>
    exit();
    317e:	e8 ff 07 00 00       	call   3982 <exit>

  // can one de-allocate?
  a = sbrk(0);
  c = sbrk(-4096);
  if(c == (char*)0xffffffff){
    printf(stdout, "sbrk could not deallocate\n");
    3183:	83 ec 08             	sub    $0x8,%esp
    3186:	68 49 4c 00 00       	push   $0x4c49
    318b:	ff 35 94 5e 00 00    	pushl  0x5e94
    3191:	e8 4a 09 00 00       	call   3ae0 <printf>
    exit();
    3196:	e8 e7 07 00 00       	call   3982 <exit>
#define BIG (100*1024*1024)
  a = sbrk(0);
  amt = (BIG) - (uint)a;
  p = sbrk(amt);
  if (p != a) {
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    319b:	83 ec 08             	sub    $0x8,%esp
    319e:	68 74 53 00 00       	push   $0x5374
    31a3:	ff 35 94 5e 00 00    	pushl  0x5e94
    31a9:	e8 32 09 00 00       	call   3ae0 <printf>
    exit();
    31ae:	e8 cf 07 00 00       	call   3982 <exit>
  if(c != a + 1){
    printf(stdout, "sbrk test failed post-fork\n");
    exit();
  }
  if(pid == 0)
    exit();
    31b3:	e8 ca 07 00 00       	call   3982 <exit>
    exit();
  }
  c = sbrk(1);
  c = sbrk(1);
  if(c != a + 1){
    printf(stdout, "sbrk test failed post-fork\n");
    31b8:	83 ec 08             	sub    $0x8,%esp
    31bb:	68 2d 4c 00 00       	push   $0x4c2d
    31c0:	ff 35 94 5e 00 00    	pushl  0x5e94
    31c6:	e8 15 09 00 00       	call   3ae0 <printf>
    exit();
    31cb:	e8 b2 07 00 00       	call   3982 <exit>
    *b = 1;
    a = b + 1;
  }
  pid = fork();
  if(pid < 0){
    printf(stdout, "sbrk test fork failed\n");
    31d0:	83 ec 08             	sub    $0x8,%esp
    31d3:	68 16 4c 00 00       	push   $0x4c16
    31d8:	ff 35 94 5e 00 00    	pushl  0x5e94
    31de:	e8 fd 08 00 00       	call   3ae0 <printf>
    exit();
    31e3:	e8 9a 07 00 00       	call   3982 <exit>
    31e8:	90                   	nop
    31e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000031f0 <validateint>:
  printf(stdout, "sbrk test OK\n");
}

void
validateint(int *p)
{
    31f0:	55                   	push   %ebp
    31f1:	89 e5                	mov    %esp,%ebp
      "int %2\n\t"
      "mov %%ebx, %%esp" :
      "=a" (res) :
      "a" (SYS_sleep), "n" (T_SYSCALL), "c" (p) :
      "ebx");
}
    31f3:	5d                   	pop    %ebp
    31f4:	c3                   	ret    
    31f5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    31f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003200 <validatetest>:

void
validatetest(void)
{
    3200:	55                   	push   %ebp
    3201:	89 e5                	mov    %esp,%ebp
    3203:	56                   	push   %esi
    3204:	53                   	push   %ebx
  uint p;

  printf(stdout, "validate test\n");
  hi = 1100*1024;

  for(p = 0; p <= (uint)hi; p += 4096){
    3205:	31 db                	xor    %ebx,%ebx
validatetest(void)
{
  int hi, pid;
  uint p;

  printf(stdout, "validate test\n");
    3207:	83 ec 08             	sub    $0x8,%esp
    320a:	68 a6 4c 00 00       	push   $0x4ca6
    320f:	ff 35 94 5e 00 00    	pushl  0x5e94
    3215:	e8 c6 08 00 00       	call   3ae0 <printf>
    321a:	83 c4 10             	add    $0x10,%esp
    321d:	8d 76 00             	lea    0x0(%esi),%esi
  hi = 1100*1024;

  for(p = 0; p <= (uint)hi; p += 4096){
    if((pid = fork()) == 0){
    3220:	e8 55 07 00 00       	call   397a <fork>
    3225:	85 c0                	test   %eax,%eax
    3227:	89 c6                	mov    %eax,%esi
    3229:	74 6a                	je     3295 <validatetest+0x95>
      // try to crash the kernel by passing in a badly placed integer
      validateint((int*)p);
      exit();
    }
    sleep(0);
    322b:	83 ec 0c             	sub    $0xc,%esp
    322e:	6a 00                	push   $0x0
    3230:	e8 dd 07 00 00       	call   3a12 <sleep>
    sleep(0);
    3235:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    323c:	e8 d1 07 00 00       	call   3a12 <sleep>
    kill(pid);
    3241:	89 34 24             	mov    %esi,(%esp)
    3244:	e8 69 07 00 00       	call   39b2 <kill>
    wait(0);
    3249:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3250:	e8 35 07 00 00       	call   398a <wait>

    // try to crash the kernel by passing in a bad string pointer
    if(link("nosuchfile", (char*)p) != -1){
    3255:	58                   	pop    %eax
    3256:	5a                   	pop    %edx
    3257:	53                   	push   %ebx
    3258:	68 b5 4c 00 00       	push   $0x4cb5
    325d:	e8 80 07 00 00       	call   39e2 <link>
    3262:	83 c4 10             	add    $0x10,%esp
    3265:	83 f8 ff             	cmp    $0xffffffff,%eax
    3268:	75 30                	jne    329a <validatetest+0x9a>
  uint p;

  printf(stdout, "validate test\n");
  hi = 1100*1024;

  for(p = 0; p <= (uint)hi; p += 4096){
    326a:	81 c3 00 10 00 00    	add    $0x1000,%ebx
    3270:	81 fb 00 40 11 00    	cmp    $0x114000,%ebx
    3276:	75 a8                	jne    3220 <validatetest+0x20>
      printf(stdout, "link should not succeed\n");
      exit();
    }
  }

  printf(stdout, "validate ok\n");
    3278:	83 ec 08             	sub    $0x8,%esp
    327b:	68 d9 4c 00 00       	push   $0x4cd9
    3280:	ff 35 94 5e 00 00    	pushl  0x5e94
    3286:	e8 55 08 00 00       	call   3ae0 <printf>
}
    328b:	83 c4 10             	add    $0x10,%esp
    328e:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3291:	5b                   	pop    %ebx
    3292:	5e                   	pop    %esi
    3293:	5d                   	pop    %ebp
    3294:	c3                   	ret    

  for(p = 0; p <= (uint)hi; p += 4096){
    if((pid = fork()) == 0){
      // try to crash the kernel by passing in a badly placed integer
      validateint((int*)p);
      exit();
    3295:	e8 e8 06 00 00       	call   3982 <exit>
    kill(pid);
    wait(0);

    // try to crash the kernel by passing in a bad string pointer
    if(link("nosuchfile", (char*)p) != -1){
      printf(stdout, "link should not succeed\n");
    329a:	83 ec 08             	sub    $0x8,%esp
    329d:	68 c0 4c 00 00       	push   $0x4cc0
    32a2:	ff 35 94 5e 00 00    	pushl  0x5e94
    32a8:	e8 33 08 00 00       	call   3ae0 <printf>
      exit();
    32ad:	e8 d0 06 00 00       	call   3982 <exit>
    32b2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    32b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000032c0 <bsstest>:

// does unintialized data start out zero?
char uninit[10000];
void
bsstest(void)
{
    32c0:	55                   	push   %ebp
    32c1:	89 e5                	mov    %esp,%ebp
    32c3:	83 ec 10             	sub    $0x10,%esp
  int i;

  printf(stdout, "bss test\n");
    32c6:	68 e6 4c 00 00       	push   $0x4ce6
    32cb:	ff 35 94 5e 00 00    	pushl  0x5e94
    32d1:	e8 0a 08 00 00       	call   3ae0 <printf>
  for(i = 0; i < sizeof(uninit); i++){
    if(uninit[i] != '\0'){
    32d6:	83 c4 10             	add    $0x10,%esp
    32d9:	80 3d 60 5f 00 00 00 	cmpb   $0x0,0x5f60
    32e0:	75 35                	jne    3317 <bsstest+0x57>
    32e2:	b8 61 5f 00 00       	mov    $0x5f61,%eax
    32e7:	89 f6                	mov    %esi,%esi
    32e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    32f0:	80 38 00             	cmpb   $0x0,(%eax)
    32f3:	75 22                	jne    3317 <bsstest+0x57>
    32f5:	83 c0 01             	add    $0x1,%eax
bsstest(void)
{
  int i;

  printf(stdout, "bss test\n");
  for(i = 0; i < sizeof(uninit); i++){
    32f8:	3d 70 86 00 00       	cmp    $0x8670,%eax
    32fd:	75 f1                	jne    32f0 <bsstest+0x30>
    if(uninit[i] != '\0'){
      printf(stdout, "bss test failed\n");
      exit();
    }
  }
  printf(stdout, "bss test ok\n");
    32ff:	83 ec 08             	sub    $0x8,%esp
    3302:	68 01 4d 00 00       	push   $0x4d01
    3307:	ff 35 94 5e 00 00    	pushl  0x5e94
    330d:	e8 ce 07 00 00       	call   3ae0 <printf>
}
    3312:	83 c4 10             	add    $0x10,%esp
    3315:	c9                   	leave  
    3316:	c3                   	ret    
  int i;

  printf(stdout, "bss test\n");
  for(i = 0; i < sizeof(uninit); i++){
    if(uninit[i] != '\0'){
      printf(stdout, "bss test failed\n");
    3317:	83 ec 08             	sub    $0x8,%esp
    331a:	68 f0 4c 00 00       	push   $0x4cf0
    331f:	ff 35 94 5e 00 00    	pushl  0x5e94
    3325:	e8 b6 07 00 00       	call   3ae0 <printf>
      exit();
    332a:	e8 53 06 00 00       	call   3982 <exit>
    332f:	90                   	nop

00003330 <bigargtest>:
// does exec return an error if the arguments
// are larger than a page? or does it write
// below the stack and wreck the instructions/data?
void
bigargtest(void)
{
    3330:	55                   	push   %ebp
    3331:	89 e5                	mov    %esp,%ebp
    3333:	83 ec 14             	sub    $0x14,%esp
  int pid, fd;

  unlink("bigarg-ok");
    3336:	68 0e 4d 00 00       	push   $0x4d0e
    333b:	e8 92 06 00 00       	call   39d2 <unlink>
  pid = fork();
    3340:	e8 35 06 00 00       	call   397a <fork>
  if(pid == 0){
    3345:	83 c4 10             	add    $0x10,%esp
    3348:	85 c0                	test   %eax,%eax
    334a:	74 43                	je     338f <bigargtest+0x5f>
    exec("echo", args);
    printf(stdout, "bigarg test ok\n");
    fd = open("bigarg-ok", O_CREATE);
    close(fd);
    exit();
  } else if(pid < 0){
    334c:	0f 88 ca 00 00 00    	js     341c <bigargtest+0xec>
    printf(stdout, "bigargtest: fork failed\n");
    exit();
  }
  wait(0);
    3352:	83 ec 0c             	sub    $0xc,%esp
    3355:	6a 00                	push   $0x0
    3357:	e8 2e 06 00 00       	call   398a <wait>
  fd = open("bigarg-ok", 0);
    335c:	5a                   	pop    %edx
    335d:	59                   	pop    %ecx
    335e:	6a 00                	push   $0x0
    3360:	68 0e 4d 00 00       	push   $0x4d0e
    3365:	e8 58 06 00 00       	call   39c2 <open>
  if(fd < 0){
    336a:	83 c4 10             	add    $0x10,%esp
    336d:	85 c0                	test   %eax,%eax
    336f:	0f 88 90 00 00 00    	js     3405 <bigargtest+0xd5>
    printf(stdout, "bigarg test failed!\n");
    exit();
  }
  close(fd);
    3375:	83 ec 0c             	sub    $0xc,%esp
    3378:	50                   	push   %eax
    3379:	e8 2c 06 00 00       	call   39aa <close>
  unlink("bigarg-ok");
    337e:	c7 04 24 0e 4d 00 00 	movl   $0x4d0e,(%esp)
    3385:	e8 48 06 00 00       	call   39d2 <unlink>
}
    338a:	83 c4 10             	add    $0x10,%esp
    338d:	c9                   	leave  
    338e:	c3                   	ret    
    338f:	b8 c0 5e 00 00       	mov    $0x5ec0,%eax
    3394:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  pid = fork();
  if(pid == 0){
    static char *args[MAXARG];
    int i;
    for(i = 0; i < MAXARG-1; i++)
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    3398:	c7 00 68 54 00 00    	movl   $0x5468,(%eax)
    339e:	83 c0 04             	add    $0x4,%eax
  unlink("bigarg-ok");
  pid = fork();
  if(pid == 0){
    static char *args[MAXARG];
    int i;
    for(i = 0; i < MAXARG-1; i++)
    33a1:	3d 3c 5f 00 00       	cmp    $0x5f3c,%eax
    33a6:	75 f0                	jne    3398 <bigargtest+0x68>
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    args[MAXARG-1] = 0;
    printf(stdout, "bigarg test\n");
    33a8:	50                   	push   %eax
    33a9:	50                   	push   %eax
    33aa:	68 18 4d 00 00       	push   $0x4d18
    33af:	ff 35 94 5e 00 00    	pushl  0x5e94
  if(pid == 0){
    static char *args[MAXARG];
    int i;
    for(i = 0; i < MAXARG-1; i++)
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    args[MAXARG-1] = 0;
    33b5:	c7 05 3c 5f 00 00 00 	movl   $0x0,0x5f3c
    33bc:	00 00 00 
    printf(stdout, "bigarg test\n");
    33bf:	e8 1c 07 00 00       	call   3ae0 <printf>
    exec("echo", args);
    33c4:	58                   	pop    %eax
    33c5:	5a                   	pop    %edx
    33c6:	68 c0 5e 00 00       	push   $0x5ec0
    33cb:	68 e5 3e 00 00       	push   $0x3ee5
    33d0:	e8 e5 05 00 00       	call   39ba <exec>
    printf(stdout, "bigarg test ok\n");
    33d5:	59                   	pop    %ecx
    33d6:	58                   	pop    %eax
    33d7:	68 25 4d 00 00       	push   $0x4d25
    33dc:	ff 35 94 5e 00 00    	pushl  0x5e94
    33e2:	e8 f9 06 00 00       	call   3ae0 <printf>
    fd = open("bigarg-ok", O_CREATE);
    33e7:	58                   	pop    %eax
    33e8:	5a                   	pop    %edx
    33e9:	68 00 02 00 00       	push   $0x200
    33ee:	68 0e 4d 00 00       	push   $0x4d0e
    33f3:	e8 ca 05 00 00       	call   39c2 <open>
    close(fd);
    33f8:	89 04 24             	mov    %eax,(%esp)
    33fb:	e8 aa 05 00 00       	call   39aa <close>
    exit();
    3400:	e8 7d 05 00 00       	call   3982 <exit>
    exit();
  }
  wait(0);
  fd = open("bigarg-ok", 0);
  if(fd < 0){
    printf(stdout, "bigarg test failed!\n");
    3405:	50                   	push   %eax
    3406:	50                   	push   %eax
    3407:	68 4e 4d 00 00       	push   $0x4d4e
    340c:	ff 35 94 5e 00 00    	pushl  0x5e94
    3412:	e8 c9 06 00 00       	call   3ae0 <printf>
    exit();
    3417:	e8 66 05 00 00       	call   3982 <exit>
    printf(stdout, "bigarg test ok\n");
    fd = open("bigarg-ok", O_CREATE);
    close(fd);
    exit();
  } else if(pid < 0){
    printf(stdout, "bigargtest: fork failed\n");
    341c:	50                   	push   %eax
    341d:	50                   	push   %eax
    341e:	68 35 4d 00 00       	push   $0x4d35
    3423:	ff 35 94 5e 00 00    	pushl  0x5e94
    3429:	e8 b2 06 00 00       	call   3ae0 <printf>
    exit();
    342e:	e8 4f 05 00 00       	call   3982 <exit>
    3433:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3439:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003440 <fsfull>:

// what happens when the file system runs out of blocks?
// answer: balloc panics, so this test is not useful.
void
fsfull()
{
    3440:	55                   	push   %ebp
    3441:	89 e5                	mov    %esp,%ebp
    3443:	57                   	push   %edi
    3444:	56                   	push   %esi
    3445:	53                   	push   %ebx
  int nfiles;
  int fsblocks = 0;

  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    3446:	31 db                	xor    %ebx,%ebx

// what happens when the file system runs out of blocks?
// answer: balloc panics, so this test is not useful.
void
fsfull()
{
    3448:	83 ec 54             	sub    $0x54,%esp
  int nfiles;
  int fsblocks = 0;

  printf(1, "fsfull test\n");
    344b:	68 63 4d 00 00       	push   $0x4d63
    3450:	6a 01                	push   $0x1
    3452:	e8 89 06 00 00       	call   3ae0 <printf>
    3457:	83 c4 10             	add    $0x10,%esp
    345a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    3460:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    3465:	89 de                	mov    %ebx,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    3467:	89 d9                	mov    %ebx,%ecx
  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    3469:	f7 eb                	imul   %ebx
    346b:	c1 fe 1f             	sar    $0x1f,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    346e:	89 df                	mov    %ebx,%edi
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    printf(1, "writing %s\n", name);
    3470:	83 ec 04             	sub    $0x4,%esp

  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    3473:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    3477:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    347b:	c1 fa 06             	sar    $0x6,%edx
    347e:	29 f2                	sub    %esi,%edx
    3480:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3483:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    3489:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    348c:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    3491:	29 d1                	sub    %edx,%ecx
    3493:	f7 e9                	imul   %ecx
    3495:	c1 f9 1f             	sar    $0x1f,%ecx
    name[3] = '0' + (nfiles % 100) / 10;
    3498:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    349d:	c1 fa 05             	sar    $0x5,%edx
    34a0:	29 ca                	sub    %ecx,%edx
    name[3] = '0' + (nfiles % 100) / 10;
    34a2:	b9 67 66 66 66       	mov    $0x66666667,%ecx

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    34a7:	83 c2 30             	add    $0x30,%edx
    34aa:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    34ad:	f7 eb                	imul   %ebx
    34af:	c1 fa 05             	sar    $0x5,%edx
    34b2:	29 f2                	sub    %esi,%edx
    34b4:	6b d2 64             	imul   $0x64,%edx,%edx
    34b7:	29 d7                	sub    %edx,%edi
    34b9:	89 f8                	mov    %edi,%eax
    34bb:	c1 ff 1f             	sar    $0x1f,%edi
    34be:	f7 e9                	imul   %ecx
    name[4] = '0' + (nfiles % 10);
    34c0:	89 d8                	mov    %ebx,%eax
  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    34c2:	c1 fa 02             	sar    $0x2,%edx
    34c5:	29 fa                	sub    %edi,%edx
    34c7:	83 c2 30             	add    $0x30,%edx
    34ca:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    34cd:	f7 e9                	imul   %ecx
    34cf:	89 d9                	mov    %ebx,%ecx
    34d1:	c1 fa 02             	sar    $0x2,%edx
    34d4:	29 f2                	sub    %esi,%edx
    34d6:	8d 04 92             	lea    (%edx,%edx,4),%eax
    34d9:	01 c0                	add    %eax,%eax
    34db:	29 c1                	sub    %eax,%ecx
    34dd:	89 c8                	mov    %ecx,%eax
    34df:	83 c0 30             	add    $0x30,%eax
    34e2:	88 45 ac             	mov    %al,-0x54(%ebp)
    name[5] = '\0';
    printf(1, "writing %s\n", name);
    34e5:	8d 45 a8             	lea    -0x58(%ebp),%eax
    34e8:	50                   	push   %eax
    34e9:	68 70 4d 00 00       	push   $0x4d70
    34ee:	6a 01                	push   $0x1
    34f0:	e8 eb 05 00 00       	call   3ae0 <printf>
    int fd = open(name, O_CREATE|O_RDWR);
    34f5:	58                   	pop    %eax
    34f6:	8d 45 a8             	lea    -0x58(%ebp),%eax
    34f9:	5a                   	pop    %edx
    34fa:	68 02 02 00 00       	push   $0x202
    34ff:	50                   	push   %eax
    3500:	e8 bd 04 00 00       	call   39c2 <open>
    if(fd < 0){
    3505:	83 c4 10             	add    $0x10,%esp
    3508:	85 c0                	test   %eax,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    printf(1, "writing %s\n", name);
    int fd = open(name, O_CREATE|O_RDWR);
    350a:	89 c7                	mov    %eax,%edi
    if(fd < 0){
    350c:	78 50                	js     355e <fsfull+0x11e>
    350e:	31 f6                	xor    %esi,%esi
    3510:	eb 08                	jmp    351a <fsfull+0xda>
    3512:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    int total = 0;
    while(1){
      int cc = write(fd, buf, 512);
      if(cc < 512)
        break;
      total += cc;
    3518:	01 c6                	add    %eax,%esi
      printf(1, "open %s failed\n", name);
      break;
    }
    int total = 0;
    while(1){
      int cc = write(fd, buf, 512);
    351a:	83 ec 04             	sub    $0x4,%esp
    351d:	68 00 02 00 00       	push   $0x200
    3522:	68 80 86 00 00       	push   $0x8680
    3527:	57                   	push   %edi
    3528:	e8 75 04 00 00       	call   39a2 <write>
      if(cc < 512)
    352d:	83 c4 10             	add    $0x10,%esp
    3530:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    3535:	7f e1                	jg     3518 <fsfull+0xd8>
        break;
      total += cc;
      fsblocks++;
    }
    printf(1, "wrote %d bytes\n", total);
    3537:	83 ec 04             	sub    $0x4,%esp
    353a:	56                   	push   %esi
    353b:	68 8c 4d 00 00       	push   $0x4d8c
    3540:	6a 01                	push   $0x1
    3542:	e8 99 05 00 00       	call   3ae0 <printf>
    close(fd);
    3547:	89 3c 24             	mov    %edi,(%esp)
    354a:	e8 5b 04 00 00       	call   39aa <close>
    if(total == 0)
    354f:	83 c4 10             	add    $0x10,%esp
    3552:	85 f6                	test   %esi,%esi
    3554:	74 22                	je     3578 <fsfull+0x138>
  int nfiles;
  int fsblocks = 0;

  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    3556:	83 c3 01             	add    $0x1,%ebx
    }
    printf(1, "wrote %d bytes\n", total);
    close(fd);
    if(total == 0)
      break;
  }
    3559:	e9 02 ff ff ff       	jmp    3460 <fsfull+0x20>
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    printf(1, "writing %s\n", name);
    int fd = open(name, O_CREATE|O_RDWR);
    if(fd < 0){
      printf(1, "open %s failed\n", name);
    355e:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3561:	83 ec 04             	sub    $0x4,%esp
    3564:	50                   	push   %eax
    3565:	68 7c 4d 00 00       	push   $0x4d7c
    356a:	6a 01                	push   $0x1
    356c:	e8 6f 05 00 00       	call   3ae0 <printf>
      break;
    3571:	83 c4 10             	add    $0x10,%esp
    3574:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  }

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    3578:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    357d:	89 de                	mov    %ebx,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    357f:	89 d9                	mov    %ebx,%ecx
  }

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    3581:	f7 eb                	imul   %ebx
    3583:	c1 fe 1f             	sar    $0x1f,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    3586:	89 df                	mov    %ebx,%edi
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    unlink(name);
    3588:	83 ec 0c             	sub    $0xc,%esp
      break;
  }

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    358b:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    358f:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
  }

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    3593:	c1 fa 06             	sar    $0x6,%edx
    3596:	29 f2                	sub    %esi,%edx
    3598:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    359b:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
  }

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    35a1:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    35a4:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    35a9:	29 d1                	sub    %edx,%ecx
    35ab:	f7 e9                	imul   %ecx
    35ad:	c1 f9 1f             	sar    $0x1f,%ecx
    name[3] = '0' + (nfiles % 100) / 10;
    35b0:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    35b5:	c1 fa 05             	sar    $0x5,%edx
    35b8:	29 ca                	sub    %ecx,%edx
    name[3] = '0' + (nfiles % 100) / 10;
    35ba:	b9 67 66 66 66       	mov    $0x66666667,%ecx

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    35bf:	83 c2 30             	add    $0x30,%edx
    35c2:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    35c5:	f7 eb                	imul   %ebx
    35c7:	c1 fa 05             	sar    $0x5,%edx
    35ca:	29 f2                	sub    %esi,%edx
    35cc:	6b d2 64             	imul   $0x64,%edx,%edx
    35cf:	29 d7                	sub    %edx,%edi
    35d1:	89 f8                	mov    %edi,%eax
    35d3:	c1 ff 1f             	sar    $0x1f,%edi
    35d6:	f7 e9                	imul   %ecx
    name[4] = '0' + (nfiles % 10);
    35d8:	89 d8                	mov    %ebx,%eax
  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    35da:	c1 fa 02             	sar    $0x2,%edx
    35dd:	29 fa                	sub    %edi,%edx
    35df:	83 c2 30             	add    $0x30,%edx
    35e2:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    35e5:	f7 e9                	imul   %ecx
    35e7:	89 d9                	mov    %ebx,%ecx
    name[5] = '\0';
    unlink(name);
    nfiles--;
    35e9:	83 eb 01             	sub    $0x1,%ebx
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    name[4] = '0' + (nfiles % 10);
    35ec:	c1 fa 02             	sar    $0x2,%edx
    35ef:	29 f2                	sub    %esi,%edx
    35f1:	8d 04 92             	lea    (%edx,%edx,4),%eax
    35f4:	01 c0                	add    %eax,%eax
    35f6:	29 c1                	sub    %eax,%ecx
    35f8:	89 c8                	mov    %ecx,%eax
    35fa:	83 c0 30             	add    $0x30,%eax
    35fd:	88 45 ac             	mov    %al,-0x54(%ebp)
    name[5] = '\0';
    unlink(name);
    3600:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3603:	50                   	push   %eax
    3604:	e8 c9 03 00 00       	call   39d2 <unlink>
    close(fd);
    if(total == 0)
      break;
  }

  while(nfiles >= 0){
    3609:	83 c4 10             	add    $0x10,%esp
    360c:	83 fb ff             	cmp    $0xffffffff,%ebx
    360f:	0f 85 63 ff ff ff    	jne    3578 <fsfull+0x138>
    name[5] = '\0';
    unlink(name);
    nfiles--;
  }

  printf(1, "fsfull test finished\n");
    3615:	83 ec 08             	sub    $0x8,%esp
    3618:	68 9c 4d 00 00       	push   $0x4d9c
    361d:	6a 01                	push   $0x1
    361f:	e8 bc 04 00 00       	call   3ae0 <printf>
}
    3624:	83 c4 10             	add    $0x10,%esp
    3627:	8d 65 f4             	lea    -0xc(%ebp),%esp
    362a:	5b                   	pop    %ebx
    362b:	5e                   	pop    %esi
    362c:	5f                   	pop    %edi
    362d:	5d                   	pop    %ebp
    362e:	c3                   	ret    
    362f:	90                   	nop

00003630 <uio>:

void
uio()
{
    3630:	55                   	push   %ebp
    3631:	89 e5                	mov    %esp,%ebp
    3633:	83 ec 10             	sub    $0x10,%esp

  ushort port = 0;
  uchar val = 0;
  int pid;

  printf(1, "uio test\n");
    3636:	68 b2 4d 00 00       	push   $0x4db2
    363b:	6a 01                	push   $0x1
    363d:	e8 9e 04 00 00       	call   3ae0 <printf>
  pid = fork();
    3642:	e8 33 03 00 00       	call   397a <fork>
  if(pid == 0){
    3647:	83 c4 10             	add    $0x10,%esp
    364a:	85 c0                	test   %eax,%eax
    364c:	74 1f                	je     366d <uio+0x3d>
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    port = RTC_DATA;
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    printf(1, "uio: uio succeeded; test FAILED\n");
    exit();
  } else if(pid < 0){
    364e:	78 41                	js     3691 <uio+0x61>
    printf (1, "fork failed\n");
    exit();
  }
  wait(0);
    3650:	83 ec 0c             	sub    $0xc,%esp
    3653:	6a 00                	push   $0x0
    3655:	e8 30 03 00 00       	call   398a <wait>
  printf(1, "uio test done\n");
    365a:	58                   	pop    %eax
    365b:	5a                   	pop    %edx
    365c:	68 bc 4d 00 00       	push   $0x4dbc
    3661:	6a 01                	push   $0x1
    3663:	e8 78 04 00 00       	call   3ae0 <printf>
}
    3668:	83 c4 10             	add    $0x10,%esp
    366b:	c9                   	leave  
    366c:	c3                   	ret    
  pid = fork();
  if(pid == 0){
    port = RTC_ADDR;
    val = 0x09;  /* year */
    /* http://wiki.osdev.org/Inline_Assembly/Examples */
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    366d:	ba 70 00 00 00       	mov    $0x70,%edx
    3672:	b8 09 00 00 00       	mov    $0x9,%eax
    3677:	ee                   	out    %al,(%dx)
    port = RTC_DATA;
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    3678:	ba 71 00 00 00       	mov    $0x71,%edx
    367d:	ec                   	in     (%dx),%al
    printf(1, "uio: uio succeeded; test FAILED\n");
    367e:	50                   	push   %eax
    367f:	50                   	push   %eax
    3680:	68 48 55 00 00       	push   $0x5548
    3685:	6a 01                	push   $0x1
    3687:	e8 54 04 00 00       	call   3ae0 <printf>
    exit();
    368c:	e8 f1 02 00 00       	call   3982 <exit>
  } else if(pid < 0){
    printf (1, "fork failed\n");
    3691:	51                   	push   %ecx
    3692:	51                   	push   %ecx
    3693:	68 41 4d 00 00       	push   $0x4d41
    3698:	6a 01                	push   $0x1
    369a:	e8 41 04 00 00       	call   3ae0 <printf>
    exit();
    369f:	e8 de 02 00 00       	call   3982 <exit>
    36a4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    36aa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000036b0 <argptest>:
  wait(0);
  printf(1, "uio test done\n");
}

void argptest()
{
    36b0:	55                   	push   %ebp
    36b1:	89 e5                	mov    %esp,%ebp
    36b3:	53                   	push   %ebx
    36b4:	83 ec 0c             	sub    $0xc,%esp
  int fd;
  fd = open("init", O_RDONLY);
    36b7:	6a 00                	push   $0x0
    36b9:	68 cb 4d 00 00       	push   $0x4dcb
    36be:	e8 ff 02 00 00       	call   39c2 <open>
  if (fd < 0) {
    36c3:	83 c4 10             	add    $0x10,%esp
    36c6:	85 c0                	test   %eax,%eax
    36c8:	78 39                	js     3703 <argptest+0x53>
    printf(2, "open failed\n");
    exit();
  }
  read(fd, sbrk(0) - 1, -1);
    36ca:	83 ec 0c             	sub    $0xc,%esp
    36cd:	89 c3                	mov    %eax,%ebx
    36cf:	6a 00                	push   $0x0
    36d1:	e8 34 03 00 00       	call   3a0a <sbrk>
    36d6:	83 c4 0c             	add    $0xc,%esp
    36d9:	83 e8 01             	sub    $0x1,%eax
    36dc:	6a ff                	push   $0xffffffff
    36de:	50                   	push   %eax
    36df:	53                   	push   %ebx
    36e0:	e8 b5 02 00 00       	call   399a <read>
  close(fd);
    36e5:	89 1c 24             	mov    %ebx,(%esp)
    36e8:	e8 bd 02 00 00       	call   39aa <close>
  printf(1, "arg test passed\n");
    36ed:	58                   	pop    %eax
    36ee:	5a                   	pop    %edx
    36ef:	68 dd 4d 00 00       	push   $0x4ddd
    36f4:	6a 01                	push   $0x1
    36f6:	e8 e5 03 00 00       	call   3ae0 <printf>
}
    36fb:	83 c4 10             	add    $0x10,%esp
    36fe:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3701:	c9                   	leave  
    3702:	c3                   	ret    
void argptest()
{
  int fd;
  fd = open("init", O_RDONLY);
  if (fd < 0) {
    printf(2, "open failed\n");
    3703:	51                   	push   %ecx
    3704:	51                   	push   %ecx
    3705:	68 d0 4d 00 00       	push   $0x4dd0
    370a:	6a 02                	push   $0x2
    370c:	e8 cf 03 00 00       	call   3ae0 <printf>
    exit();
    3711:	e8 6c 02 00 00       	call   3982 <exit>
    3716:	8d 76 00             	lea    0x0(%esi),%esi
    3719:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003720 <rand>:

unsigned long randstate = 1;
unsigned int
rand()
{
  randstate = randstate * 1664525 + 1013904223;
    3720:	69 05 90 5e 00 00 0d 	imul   $0x19660d,0x5e90,%eax
    3727:	66 19 00 
}

unsigned long randstate = 1;
unsigned int
rand()
{
    372a:	55                   	push   %ebp
    372b:	89 e5                	mov    %esp,%ebp
  randstate = randstate * 1664525 + 1013904223;
  return randstate;
}
    372d:	5d                   	pop    %ebp

unsigned long randstate = 1;
unsigned int
rand()
{
  randstate = randstate * 1664525 + 1013904223;
    372e:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    3733:	a3 90 5e 00 00       	mov    %eax,0x5e90
  return randstate;
}
    3738:	c3                   	ret    
    3739:	66 90                	xchg   %ax,%ax
    373b:	66 90                	xchg   %ax,%ax
    373d:	66 90                	xchg   %ax,%ax
    373f:	90                   	nop

00003740 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
    3740:	55                   	push   %ebp
    3741:	89 e5                	mov    %esp,%ebp
    3743:	53                   	push   %ebx
    3744:	8b 45 08             	mov    0x8(%ebp),%eax
    3747:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    374a:	89 c2                	mov    %eax,%edx
    374c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3750:	83 c1 01             	add    $0x1,%ecx
    3753:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    3757:	83 c2 01             	add    $0x1,%edx
    375a:	84 db                	test   %bl,%bl
    375c:	88 5a ff             	mov    %bl,-0x1(%edx)
    375f:	75 ef                	jne    3750 <strcpy+0x10>
    ;
  return os;
}
    3761:	5b                   	pop    %ebx
    3762:	5d                   	pop    %ebp
    3763:	c3                   	ret    
    3764:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    376a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00003770 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    3770:	55                   	push   %ebp
    3771:	89 e5                	mov    %esp,%ebp
    3773:	56                   	push   %esi
    3774:	53                   	push   %ebx
    3775:	8b 55 08             	mov    0x8(%ebp),%edx
    3778:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    377b:	0f b6 02             	movzbl (%edx),%eax
    377e:	0f b6 19             	movzbl (%ecx),%ebx
    3781:	84 c0                	test   %al,%al
    3783:	75 1e                	jne    37a3 <strcmp+0x33>
    3785:	eb 29                	jmp    37b0 <strcmp+0x40>
    3787:	89 f6                	mov    %esi,%esi
    3789:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
    3790:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    3793:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    3796:	8d 71 01             	lea    0x1(%ecx),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    3799:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
    379d:	84 c0                	test   %al,%al
    379f:	74 0f                	je     37b0 <strcmp+0x40>
    37a1:	89 f1                	mov    %esi,%ecx
    37a3:	38 d8                	cmp    %bl,%al
    37a5:	74 e9                	je     3790 <strcmp+0x20>
    p++, q++;
  return (uchar)*p - (uchar)*q;
    37a7:	29 d8                	sub    %ebx,%eax
}
    37a9:	5b                   	pop    %ebx
    37aa:	5e                   	pop    %esi
    37ab:	5d                   	pop    %ebp
    37ac:	c3                   	ret    
    37ad:	8d 76 00             	lea    0x0(%esi),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    37b0:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
    37b2:	29 d8                	sub    %ebx,%eax
}
    37b4:	5b                   	pop    %ebx
    37b5:	5e                   	pop    %esi
    37b6:	5d                   	pop    %ebp
    37b7:	c3                   	ret    
    37b8:	90                   	nop
    37b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000037c0 <strlen>:

uint
strlen(const char *s)
{
    37c0:	55                   	push   %ebp
    37c1:	89 e5                	mov    %esp,%ebp
    37c3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    37c6:	80 39 00             	cmpb   $0x0,(%ecx)
    37c9:	74 12                	je     37dd <strlen+0x1d>
    37cb:	31 d2                	xor    %edx,%edx
    37cd:	8d 76 00             	lea    0x0(%esi),%esi
    37d0:	83 c2 01             	add    $0x1,%edx
    37d3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    37d7:	89 d0                	mov    %edx,%eax
    37d9:	75 f5                	jne    37d0 <strlen+0x10>
    ;
  return n;
}
    37db:	5d                   	pop    %ebp
    37dc:	c3                   	ret    
uint
strlen(const char *s)
{
  int n;

  for(n = 0; s[n]; n++)
    37dd:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
    37df:	5d                   	pop    %ebp
    37e0:	c3                   	ret    
    37e1:	eb 0d                	jmp    37f0 <memset>
    37e3:	90                   	nop
    37e4:	90                   	nop
    37e5:	90                   	nop
    37e6:	90                   	nop
    37e7:	90                   	nop
    37e8:	90                   	nop
    37e9:	90                   	nop
    37ea:	90                   	nop
    37eb:	90                   	nop
    37ec:	90                   	nop
    37ed:	90                   	nop
    37ee:	90                   	nop
    37ef:	90                   	nop

000037f0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    37f0:	55                   	push   %ebp
    37f1:	89 e5                	mov    %esp,%ebp
    37f3:	57                   	push   %edi
    37f4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    37f7:	8b 4d 10             	mov    0x10(%ebp),%ecx
    37fa:	8b 45 0c             	mov    0xc(%ebp),%eax
    37fd:	89 d7                	mov    %edx,%edi
    37ff:	fc                   	cld    
    3800:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    3802:	89 d0                	mov    %edx,%eax
    3804:	5f                   	pop    %edi
    3805:	5d                   	pop    %ebp
    3806:	c3                   	ret    
    3807:	89 f6                	mov    %esi,%esi
    3809:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003810 <strchr>:

char*
strchr(const char *s, char c)
{
    3810:	55                   	push   %ebp
    3811:	89 e5                	mov    %esp,%ebp
    3813:	53                   	push   %ebx
    3814:	8b 45 08             	mov    0x8(%ebp),%eax
    3817:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
    381a:	0f b6 10             	movzbl (%eax),%edx
    381d:	84 d2                	test   %dl,%dl
    381f:	74 1d                	je     383e <strchr+0x2e>
    if(*s == c)
    3821:	38 d3                	cmp    %dl,%bl
    3823:	89 d9                	mov    %ebx,%ecx
    3825:	75 0d                	jne    3834 <strchr+0x24>
    3827:	eb 17                	jmp    3840 <strchr+0x30>
    3829:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3830:	38 ca                	cmp    %cl,%dl
    3832:	74 0c                	je     3840 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
    3834:	83 c0 01             	add    $0x1,%eax
    3837:	0f b6 10             	movzbl (%eax),%edx
    383a:	84 d2                	test   %dl,%dl
    383c:	75 f2                	jne    3830 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
    383e:	31 c0                	xor    %eax,%eax
}
    3840:	5b                   	pop    %ebx
    3841:	5d                   	pop    %ebp
    3842:	c3                   	ret    
    3843:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3849:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003850 <gets>:

char*
gets(char *buf, int max)
{
    3850:	55                   	push   %ebp
    3851:	89 e5                	mov    %esp,%ebp
    3853:	57                   	push   %edi
    3854:	56                   	push   %esi
    3855:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    3856:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
    3858:	8d 7d e7             	lea    -0x19(%ebp),%edi
  return 0;
}

char*
gets(char *buf, int max)
{
    385b:	83 ec 1c             	sub    $0x1c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    385e:	eb 29                	jmp    3889 <gets+0x39>
    cc = read(0, &c, 1);
    3860:	83 ec 04             	sub    $0x4,%esp
    3863:	6a 01                	push   $0x1
    3865:	57                   	push   %edi
    3866:	6a 00                	push   $0x0
    3868:	e8 2d 01 00 00       	call   399a <read>
    if(cc < 1)
    386d:	83 c4 10             	add    $0x10,%esp
    3870:	85 c0                	test   %eax,%eax
    3872:	7e 1d                	jle    3891 <gets+0x41>
      break;
    buf[i++] = c;
    3874:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    3878:	8b 55 08             	mov    0x8(%ebp),%edx
    387b:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
    387d:	3c 0a                	cmp    $0xa,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
    387f:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    3883:	74 1b                	je     38a0 <gets+0x50>
    3885:	3c 0d                	cmp    $0xd,%al
    3887:	74 17                	je     38a0 <gets+0x50>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    3889:	8d 5e 01             	lea    0x1(%esi),%ebx
    388c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    388f:	7c cf                	jl     3860 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
    3891:	8b 45 08             	mov    0x8(%ebp),%eax
    3894:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    3898:	8d 65 f4             	lea    -0xc(%ebp),%esp
    389b:	5b                   	pop    %ebx
    389c:	5e                   	pop    %esi
    389d:	5f                   	pop    %edi
    389e:	5d                   	pop    %ebp
    389f:	c3                   	ret    
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
    38a0:	8b 45 08             	mov    0x8(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    38a3:	89 de                	mov    %ebx,%esi
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
    38a5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    38a9:	8d 65 f4             	lea    -0xc(%ebp),%esp
    38ac:	5b                   	pop    %ebx
    38ad:	5e                   	pop    %esi
    38ae:	5f                   	pop    %edi
    38af:	5d                   	pop    %ebp
    38b0:	c3                   	ret    
    38b1:	eb 0d                	jmp    38c0 <stat>
    38b3:	90                   	nop
    38b4:	90                   	nop
    38b5:	90                   	nop
    38b6:	90                   	nop
    38b7:	90                   	nop
    38b8:	90                   	nop
    38b9:	90                   	nop
    38ba:	90                   	nop
    38bb:	90                   	nop
    38bc:	90                   	nop
    38bd:	90                   	nop
    38be:	90                   	nop
    38bf:	90                   	nop

000038c0 <stat>:

int
stat(const char *n, struct stat *st)
{
    38c0:	55                   	push   %ebp
    38c1:	89 e5                	mov    %esp,%ebp
    38c3:	56                   	push   %esi
    38c4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    38c5:	83 ec 08             	sub    $0x8,%esp
    38c8:	6a 00                	push   $0x0
    38ca:	ff 75 08             	pushl  0x8(%ebp)
    38cd:	e8 f0 00 00 00       	call   39c2 <open>
  if(fd < 0)
    38d2:	83 c4 10             	add    $0x10,%esp
    38d5:	85 c0                	test   %eax,%eax
    38d7:	78 27                	js     3900 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    38d9:	83 ec 08             	sub    $0x8,%esp
    38dc:	ff 75 0c             	pushl  0xc(%ebp)
    38df:	89 c3                	mov    %eax,%ebx
    38e1:	50                   	push   %eax
    38e2:	e8 f3 00 00 00       	call   39da <fstat>
    38e7:	89 c6                	mov    %eax,%esi
  close(fd);
    38e9:	89 1c 24             	mov    %ebx,(%esp)
    38ec:	e8 b9 00 00 00       	call   39aa <close>
  return r;
    38f1:	83 c4 10             	add    $0x10,%esp
    38f4:	89 f0                	mov    %esi,%eax
}
    38f6:	8d 65 f8             	lea    -0x8(%ebp),%esp
    38f9:	5b                   	pop    %ebx
    38fa:	5e                   	pop    %esi
    38fb:	5d                   	pop    %ebp
    38fc:	c3                   	ret    
    38fd:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
    3900:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3905:	eb ef                	jmp    38f6 <stat+0x36>
    3907:	89 f6                	mov    %esi,%esi
    3909:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003910 <atoi>:
  return r;
}

int
atoi(const char *s)
{
    3910:	55                   	push   %ebp
    3911:	89 e5                	mov    %esp,%ebp
    3913:	53                   	push   %ebx
    3914:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    3917:	0f be 11             	movsbl (%ecx),%edx
    391a:	8d 42 d0             	lea    -0x30(%edx),%eax
    391d:	3c 09                	cmp    $0x9,%al
    391f:	b8 00 00 00 00       	mov    $0x0,%eax
    3924:	77 1f                	ja     3945 <atoi+0x35>
    3926:	8d 76 00             	lea    0x0(%esi),%esi
    3929:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
    3930:	8d 04 80             	lea    (%eax,%eax,4),%eax
    3933:	83 c1 01             	add    $0x1,%ecx
    3936:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    393a:	0f be 11             	movsbl (%ecx),%edx
    393d:	8d 5a d0             	lea    -0x30(%edx),%ebx
    3940:	80 fb 09             	cmp    $0x9,%bl
    3943:	76 eb                	jbe    3930 <atoi+0x20>
    n = n*10 + *s++ - '0';
  return n;
}
    3945:	5b                   	pop    %ebx
    3946:	5d                   	pop    %ebp
    3947:	c3                   	ret    
    3948:	90                   	nop
    3949:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003950 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    3950:	55                   	push   %ebp
    3951:	89 e5                	mov    %esp,%ebp
    3953:	56                   	push   %esi
    3954:	53                   	push   %ebx
    3955:	8b 5d 10             	mov    0x10(%ebp),%ebx
    3958:	8b 45 08             	mov    0x8(%ebp),%eax
    395b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    395e:	85 db                	test   %ebx,%ebx
    3960:	7e 14                	jle    3976 <memmove+0x26>
    3962:	31 d2                	xor    %edx,%edx
    3964:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    3968:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    396c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    396f:	83 c2 01             	add    $0x1,%edx
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    3972:	39 da                	cmp    %ebx,%edx
    3974:	75 f2                	jne    3968 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
    3976:	5b                   	pop    %ebx
    3977:	5e                   	pop    %esi
    3978:	5d                   	pop    %ebp
    3979:	c3                   	ret    

0000397a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    397a:	b8 01 00 00 00       	mov    $0x1,%eax
    397f:	cd 40                	int    $0x40
    3981:	c3                   	ret    

00003982 <exit>:
SYSCALL(exit)
    3982:	b8 02 00 00 00       	mov    $0x2,%eax
    3987:	cd 40                	int    $0x40
    3989:	c3                   	ret    

0000398a <wait>:
SYSCALL(wait)
    398a:	b8 03 00 00 00       	mov    $0x3,%eax
    398f:	cd 40                	int    $0x40
    3991:	c3                   	ret    

00003992 <pipe>:
SYSCALL(pipe)
    3992:	b8 04 00 00 00       	mov    $0x4,%eax
    3997:	cd 40                	int    $0x40
    3999:	c3                   	ret    

0000399a <read>:
SYSCALL(read)
    399a:	b8 05 00 00 00       	mov    $0x5,%eax
    399f:	cd 40                	int    $0x40
    39a1:	c3                   	ret    

000039a2 <write>:
SYSCALL(write)
    39a2:	b8 10 00 00 00       	mov    $0x10,%eax
    39a7:	cd 40                	int    $0x40
    39a9:	c3                   	ret    

000039aa <close>:
SYSCALL(close)
    39aa:	b8 15 00 00 00       	mov    $0x15,%eax
    39af:	cd 40                	int    $0x40
    39b1:	c3                   	ret    

000039b2 <kill>:
SYSCALL(kill)
    39b2:	b8 06 00 00 00       	mov    $0x6,%eax
    39b7:	cd 40                	int    $0x40
    39b9:	c3                   	ret    

000039ba <exec>:
SYSCALL(exec)
    39ba:	b8 07 00 00 00       	mov    $0x7,%eax
    39bf:	cd 40                	int    $0x40
    39c1:	c3                   	ret    

000039c2 <open>:
SYSCALL(open)
    39c2:	b8 0f 00 00 00       	mov    $0xf,%eax
    39c7:	cd 40                	int    $0x40
    39c9:	c3                   	ret    

000039ca <mknod>:
SYSCALL(mknod)
    39ca:	b8 11 00 00 00       	mov    $0x11,%eax
    39cf:	cd 40                	int    $0x40
    39d1:	c3                   	ret    

000039d2 <unlink>:
SYSCALL(unlink)
    39d2:	b8 12 00 00 00       	mov    $0x12,%eax
    39d7:	cd 40                	int    $0x40
    39d9:	c3                   	ret    

000039da <fstat>:
SYSCALL(fstat)
    39da:	b8 08 00 00 00       	mov    $0x8,%eax
    39df:	cd 40                	int    $0x40
    39e1:	c3                   	ret    

000039e2 <link>:
SYSCALL(link)
    39e2:	b8 13 00 00 00       	mov    $0x13,%eax
    39e7:	cd 40                	int    $0x40
    39e9:	c3                   	ret    

000039ea <mkdir>:
SYSCALL(mkdir)
    39ea:	b8 14 00 00 00       	mov    $0x14,%eax
    39ef:	cd 40                	int    $0x40
    39f1:	c3                   	ret    

000039f2 <chdir>:
SYSCALL(chdir)
    39f2:	b8 09 00 00 00       	mov    $0x9,%eax
    39f7:	cd 40                	int    $0x40
    39f9:	c3                   	ret    

000039fa <dup>:
SYSCALL(dup)
    39fa:	b8 0a 00 00 00       	mov    $0xa,%eax
    39ff:	cd 40                	int    $0x40
    3a01:	c3                   	ret    

00003a02 <getpid>:
SYSCALL(getpid)
    3a02:	b8 0b 00 00 00       	mov    $0xb,%eax
    3a07:	cd 40                	int    $0x40
    3a09:	c3                   	ret    

00003a0a <sbrk>:
SYSCALL(sbrk)
    3a0a:	b8 0c 00 00 00       	mov    $0xc,%eax
    3a0f:	cd 40                	int    $0x40
    3a11:	c3                   	ret    

00003a12 <sleep>:
SYSCALL(sleep)
    3a12:	b8 0d 00 00 00       	mov    $0xd,%eax
    3a17:	cd 40                	int    $0x40
    3a19:	c3                   	ret    

00003a1a <uptime>:
SYSCALL(uptime)
    3a1a:	b8 0e 00 00 00       	mov    $0xe,%eax
    3a1f:	cd 40                	int    $0x40
    3a21:	c3                   	ret    

00003a22 <exitStat>:
SYSCALL(exitStat)
    3a22:	b8 16 00 00 00       	mov    $0x16,%eax
    3a27:	cd 40                	int    $0x40
    3a29:	c3                   	ret    

00003a2a <waitpid>:
SYSCALL(waitpid)
    3a2a:	b8 17 00 00 00       	mov    $0x17,%eax
    3a2f:	cd 40                	int    $0x40
    3a31:	c3                   	ret    
    3a32:	66 90                	xchg   %ax,%ax
    3a34:	66 90                	xchg   %ax,%ax
    3a36:	66 90                	xchg   %ax,%ax
    3a38:	66 90                	xchg   %ax,%ax
    3a3a:	66 90                	xchg   %ax,%ax
    3a3c:	66 90                	xchg   %ax,%ax
    3a3e:	66 90                	xchg   %ax,%ax

00003a40 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    3a40:	55                   	push   %ebp
    3a41:	89 e5                	mov    %esp,%ebp
    3a43:	57                   	push   %edi
    3a44:	56                   	push   %esi
    3a45:	53                   	push   %ebx
    3a46:	89 c6                	mov    %eax,%esi
    3a48:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    3a4b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    3a4e:	85 db                	test   %ebx,%ebx
    3a50:	74 7e                	je     3ad0 <printint+0x90>
    3a52:	89 d0                	mov    %edx,%eax
    3a54:	c1 e8 1f             	shr    $0x1f,%eax
    3a57:	84 c0                	test   %al,%al
    3a59:	74 75                	je     3ad0 <printint+0x90>
    neg = 1;
    x = -xx;
    3a5b:	89 d0                	mov    %edx,%eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    3a5d:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
    3a64:	f7 d8                	neg    %eax
    3a66:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
    3a69:	31 ff                	xor    %edi,%edi
    3a6b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    3a6e:	89 ce                	mov    %ecx,%esi
    3a70:	eb 08                	jmp    3a7a <printint+0x3a>
    3a72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    3a78:	89 cf                	mov    %ecx,%edi
    3a7a:	31 d2                	xor    %edx,%edx
    3a7c:	8d 4f 01             	lea    0x1(%edi),%ecx
    3a7f:	f7 f6                	div    %esi
    3a81:	0f b6 92 a0 55 00 00 	movzbl 0x55a0(%edx),%edx
  }while((x /= base) != 0);
    3a88:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
    3a8a:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
    3a8d:	75 e9                	jne    3a78 <printint+0x38>
  if(neg)
    3a8f:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    3a92:	8b 75 c0             	mov    -0x40(%ebp),%esi
    3a95:	85 c0                	test   %eax,%eax
    3a97:	74 08                	je     3aa1 <printint+0x61>
    buf[i++] = '-';
    3a99:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
    3a9e:	8d 4f 02             	lea    0x2(%edi),%ecx
    3aa1:	8d 7c 0d d7          	lea    -0x29(%ebp,%ecx,1),%edi
    3aa5:	8d 76 00             	lea    0x0(%esi),%esi
    3aa8:	0f b6 07             	movzbl (%edi),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3aab:	83 ec 04             	sub    $0x4,%esp
    3aae:	83 ef 01             	sub    $0x1,%edi
    3ab1:	6a 01                	push   $0x1
    3ab3:	53                   	push   %ebx
    3ab4:	56                   	push   %esi
    3ab5:	88 45 d7             	mov    %al,-0x29(%ebp)
    3ab8:	e8 e5 fe ff ff       	call   39a2 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
    3abd:	83 c4 10             	add    $0x10,%esp
    3ac0:	39 df                	cmp    %ebx,%edi
    3ac2:	75 e4                	jne    3aa8 <printint+0x68>
    putc(fd, buf[i]);
}
    3ac4:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3ac7:	5b                   	pop    %ebx
    3ac8:	5e                   	pop    %esi
    3ac9:	5f                   	pop    %edi
    3aca:	5d                   	pop    %ebp
    3acb:	c3                   	ret    
    3acc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
    3ad0:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
    3ad2:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    3ad9:	eb 8b                	jmp    3a66 <printint+0x26>
    3adb:	90                   	nop
    3adc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003ae0 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    3ae0:	55                   	push   %ebp
    3ae1:	89 e5                	mov    %esp,%ebp
    3ae3:	57                   	push   %edi
    3ae4:	56                   	push   %esi
    3ae5:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    3ae6:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    3ae9:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    3aec:	8b 75 0c             	mov    0xc(%ebp),%esi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    3aef:	8b 7d 08             	mov    0x8(%ebp),%edi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    3af2:	89 45 d0             	mov    %eax,-0x30(%ebp)
    3af5:	0f b6 1e             	movzbl (%esi),%ebx
    3af8:	83 c6 01             	add    $0x1,%esi
    3afb:	84 db                	test   %bl,%bl
    3afd:	0f 84 b0 00 00 00    	je     3bb3 <printf+0xd3>
    3b03:	31 d2                	xor    %edx,%edx
    3b05:	eb 39                	jmp    3b40 <printf+0x60>
    3b07:	89 f6                	mov    %esi,%esi
    3b09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    3b10:	83 f8 25             	cmp    $0x25,%eax
    3b13:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
    3b16:	ba 25 00 00 00       	mov    $0x25,%edx
  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    3b1b:	74 18                	je     3b35 <printf+0x55>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3b1d:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    3b20:	83 ec 04             	sub    $0x4,%esp
    3b23:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    3b26:	6a 01                	push   $0x1
    3b28:	50                   	push   %eax
    3b29:	57                   	push   %edi
    3b2a:	e8 73 fe ff ff       	call   39a2 <write>
    3b2f:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    3b32:	83 c4 10             	add    $0x10,%esp
    3b35:	83 c6 01             	add    $0x1,%esi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    3b38:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    3b3c:	84 db                	test   %bl,%bl
    3b3e:	74 73                	je     3bb3 <printf+0xd3>
    c = fmt[i] & 0xff;
    if(state == 0){
    3b40:	85 d2                	test   %edx,%edx
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    3b42:	0f be cb             	movsbl %bl,%ecx
    3b45:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    3b48:	74 c6                	je     3b10 <printf+0x30>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    3b4a:	83 fa 25             	cmp    $0x25,%edx
    3b4d:	75 e6                	jne    3b35 <printf+0x55>
      if(c == 'd'){
    3b4f:	83 f8 64             	cmp    $0x64,%eax
    3b52:	0f 84 f8 00 00 00    	je     3c50 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    3b58:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    3b5e:	83 f9 70             	cmp    $0x70,%ecx
    3b61:	74 5d                	je     3bc0 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    3b63:	83 f8 73             	cmp    $0x73,%eax
    3b66:	0f 84 84 00 00 00    	je     3bf0 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    3b6c:	83 f8 63             	cmp    $0x63,%eax
    3b6f:	0f 84 ea 00 00 00    	je     3c5f <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    3b75:	83 f8 25             	cmp    $0x25,%eax
    3b78:	0f 84 c2 00 00 00    	je     3c40 <printf+0x160>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3b7e:	8d 45 e7             	lea    -0x19(%ebp),%eax
    3b81:	83 ec 04             	sub    $0x4,%esp
    3b84:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    3b88:	6a 01                	push   $0x1
    3b8a:	50                   	push   %eax
    3b8b:	57                   	push   %edi
    3b8c:	e8 11 fe ff ff       	call   39a2 <write>
    3b91:	83 c4 0c             	add    $0xc,%esp
    3b94:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    3b97:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    3b9a:	6a 01                	push   $0x1
    3b9c:	50                   	push   %eax
    3b9d:	57                   	push   %edi
    3b9e:	83 c6 01             	add    $0x1,%esi
    3ba1:	e8 fc fd ff ff       	call   39a2 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    3ba6:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3baa:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    3bad:	31 d2                	xor    %edx,%edx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    3baf:	84 db                	test   %bl,%bl
    3bb1:	75 8d                	jne    3b40 <printf+0x60>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    3bb3:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3bb6:	5b                   	pop    %ebx
    3bb7:	5e                   	pop    %esi
    3bb8:	5f                   	pop    %edi
    3bb9:	5d                   	pop    %ebp
    3bba:	c3                   	ret    
    3bbb:	90                   	nop
    3bbc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
    3bc0:	83 ec 0c             	sub    $0xc,%esp
    3bc3:	b9 10 00 00 00       	mov    $0x10,%ecx
    3bc8:	6a 00                	push   $0x0
    3bca:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    3bcd:	89 f8                	mov    %edi,%eax
    3bcf:	8b 13                	mov    (%ebx),%edx
    3bd1:	e8 6a fe ff ff       	call   3a40 <printint>
        ap++;
    3bd6:	89 d8                	mov    %ebx,%eax
    3bd8:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    3bdb:	31 d2                	xor    %edx,%edx
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
    3bdd:	83 c0 04             	add    $0x4,%eax
    3be0:	89 45 d0             	mov    %eax,-0x30(%ebp)
    3be3:	e9 4d ff ff ff       	jmp    3b35 <printf+0x55>
    3be8:	90                   	nop
    3be9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
    3bf0:	8b 45 d0             	mov    -0x30(%ebp),%eax
    3bf3:	8b 18                	mov    (%eax),%ebx
        ap++;
    3bf5:	83 c0 04             	add    $0x4,%eax
    3bf8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
          s = "(null)";
    3bfb:	b8 98 55 00 00       	mov    $0x5598,%eax
    3c00:	85 db                	test   %ebx,%ebx
    3c02:	0f 44 d8             	cmove  %eax,%ebx
        while(*s != 0){
    3c05:	0f b6 03             	movzbl (%ebx),%eax
    3c08:	84 c0                	test   %al,%al
    3c0a:	74 23                	je     3c2f <printf+0x14f>
    3c0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3c10:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3c13:	8d 45 e3             	lea    -0x1d(%ebp),%eax
    3c16:	83 ec 04             	sub    $0x4,%esp
    3c19:	6a 01                	push   $0x1
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
    3c1b:	83 c3 01             	add    $0x1,%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3c1e:	50                   	push   %eax
    3c1f:	57                   	push   %edi
    3c20:	e8 7d fd ff ff       	call   39a2 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
    3c25:	0f b6 03             	movzbl (%ebx),%eax
    3c28:	83 c4 10             	add    $0x10,%esp
    3c2b:	84 c0                	test   %al,%al
    3c2d:	75 e1                	jne    3c10 <printf+0x130>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    3c2f:	31 d2                	xor    %edx,%edx
    3c31:	e9 ff fe ff ff       	jmp    3b35 <printf+0x55>
    3c36:	8d 76 00             	lea    0x0(%esi),%esi
    3c39:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3c40:	83 ec 04             	sub    $0x4,%esp
    3c43:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    3c46:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    3c49:	6a 01                	push   $0x1
    3c4b:	e9 4c ff ff ff       	jmp    3b9c <printf+0xbc>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
    3c50:	83 ec 0c             	sub    $0xc,%esp
    3c53:	b9 0a 00 00 00       	mov    $0xa,%ecx
    3c58:	6a 01                	push   $0x1
    3c5a:	e9 6b ff ff ff       	jmp    3bca <printf+0xea>
    3c5f:	8b 5d d0             	mov    -0x30(%ebp),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    3c62:	83 ec 04             	sub    $0x4,%esp
    3c65:	8b 03                	mov    (%ebx),%eax
    3c67:	6a 01                	push   $0x1
    3c69:	88 45 e4             	mov    %al,-0x1c(%ebp)
    3c6c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    3c6f:	50                   	push   %eax
    3c70:	57                   	push   %edi
    3c71:	e8 2c fd ff ff       	call   39a2 <write>
    3c76:	e9 5b ff ff ff       	jmp    3bd6 <printf+0xf6>
    3c7b:	66 90                	xchg   %ax,%ax
    3c7d:	66 90                	xchg   %ax,%ax
    3c7f:	90                   	nop

00003c80 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    3c80:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3c81:	a1 40 5f 00 00       	mov    0x5f40,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
    3c86:	89 e5                	mov    %esp,%ebp
    3c88:	57                   	push   %edi
    3c89:	56                   	push   %esi
    3c8a:	53                   	push   %ebx
    3c8b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3c8e:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
    3c90:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3c93:	39 c8                	cmp    %ecx,%eax
    3c95:	73 19                	jae    3cb0 <free+0x30>
    3c97:	89 f6                	mov    %esi,%esi
    3c99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    3ca0:	39 d1                	cmp    %edx,%ecx
    3ca2:	72 1c                	jb     3cc0 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3ca4:	39 d0                	cmp    %edx,%eax
    3ca6:	73 18                	jae    3cc0 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
    3ca8:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3caa:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3cac:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3cae:	72 f0                	jb     3ca0 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3cb0:	39 d0                	cmp    %edx,%eax
    3cb2:	72 f4                	jb     3ca8 <free+0x28>
    3cb4:	39 d1                	cmp    %edx,%ecx
    3cb6:	73 f0                	jae    3ca8 <free+0x28>
    3cb8:	90                   	nop
    3cb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
    3cc0:	8b 73 fc             	mov    -0x4(%ebx),%esi
    3cc3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    3cc6:	39 d7                	cmp    %edx,%edi
    3cc8:	74 19                	je     3ce3 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    3cca:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    3ccd:	8b 50 04             	mov    0x4(%eax),%edx
    3cd0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    3cd3:	39 f1                	cmp    %esi,%ecx
    3cd5:	74 23                	je     3cfa <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    3cd7:	89 08                	mov    %ecx,(%eax)
  freep = p;
    3cd9:	a3 40 5f 00 00       	mov    %eax,0x5f40
}
    3cde:	5b                   	pop    %ebx
    3cdf:	5e                   	pop    %esi
    3ce0:	5f                   	pop    %edi
    3ce1:	5d                   	pop    %ebp
    3ce2:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
    3ce3:	03 72 04             	add    0x4(%edx),%esi
    3ce6:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    3ce9:	8b 10                	mov    (%eax),%edx
    3ceb:	8b 12                	mov    (%edx),%edx
    3ced:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    3cf0:	8b 50 04             	mov    0x4(%eax),%edx
    3cf3:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    3cf6:	39 f1                	cmp    %esi,%ecx
    3cf8:	75 dd                	jne    3cd7 <free+0x57>
    p->s.size += bp->s.size;
    3cfa:	03 53 fc             	add    -0x4(%ebx),%edx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
    3cfd:	a3 40 5f 00 00       	mov    %eax,0x5f40
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
    3d02:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    3d05:	8b 53 f8             	mov    -0x8(%ebx),%edx
    3d08:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
    3d0a:	5b                   	pop    %ebx
    3d0b:	5e                   	pop    %esi
    3d0c:	5f                   	pop    %edi
    3d0d:	5d                   	pop    %ebp
    3d0e:	c3                   	ret    
    3d0f:	90                   	nop

00003d10 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    3d10:	55                   	push   %ebp
    3d11:	89 e5                	mov    %esp,%ebp
    3d13:	57                   	push   %edi
    3d14:	56                   	push   %esi
    3d15:	53                   	push   %ebx
    3d16:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3d19:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    3d1c:	8b 15 40 5f 00 00    	mov    0x5f40,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3d22:	8d 78 07             	lea    0x7(%eax),%edi
    3d25:	c1 ef 03             	shr    $0x3,%edi
    3d28:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    3d2b:	85 d2                	test   %edx,%edx
    3d2d:	0f 84 a3 00 00 00    	je     3dd6 <malloc+0xc6>
    3d33:	8b 02                	mov    (%edx),%eax
    3d35:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    3d38:	39 cf                	cmp    %ecx,%edi
    3d3a:	76 74                	jbe    3db0 <malloc+0xa0>
    3d3c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    3d42:	be 00 10 00 00       	mov    $0x1000,%esi
    3d47:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
    3d4e:	0f 43 f7             	cmovae %edi,%esi
    3d51:	ba 00 80 00 00       	mov    $0x8000,%edx
    3d56:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
    3d5c:	0f 46 da             	cmovbe %edx,%ebx
    3d5f:	eb 10                	jmp    3d71 <malloc+0x61>
    3d61:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3d68:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    3d6a:	8b 48 04             	mov    0x4(%eax),%ecx
    3d6d:	39 cf                	cmp    %ecx,%edi
    3d6f:	76 3f                	jbe    3db0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    3d71:	39 05 40 5f 00 00    	cmp    %eax,0x5f40
    3d77:	89 c2                	mov    %eax,%edx
    3d79:	75 ed                	jne    3d68 <malloc+0x58>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
    3d7b:	83 ec 0c             	sub    $0xc,%esp
    3d7e:	53                   	push   %ebx
    3d7f:	e8 86 fc ff ff       	call   3a0a <sbrk>
  if(p == (char*)-1)
    3d84:	83 c4 10             	add    $0x10,%esp
    3d87:	83 f8 ff             	cmp    $0xffffffff,%eax
    3d8a:	74 1c                	je     3da8 <malloc+0x98>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
    3d8c:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
    3d8f:	83 ec 0c             	sub    $0xc,%esp
    3d92:	83 c0 08             	add    $0x8,%eax
    3d95:	50                   	push   %eax
    3d96:	e8 e5 fe ff ff       	call   3c80 <free>
  return freep;
    3d9b:	8b 15 40 5f 00 00    	mov    0x5f40,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
    3da1:	83 c4 10             	add    $0x10,%esp
    3da4:	85 d2                	test   %edx,%edx
    3da6:	75 c0                	jne    3d68 <malloc+0x58>
        return 0;
    3da8:	31 c0                	xor    %eax,%eax
    3daa:	eb 1c                	jmp    3dc8 <malloc+0xb8>
    3dac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
    3db0:	39 cf                	cmp    %ecx,%edi
    3db2:	74 1c                	je     3dd0 <malloc+0xc0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
    3db4:	29 f9                	sub    %edi,%ecx
    3db6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    3db9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    3dbc:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
    3dbf:	89 15 40 5f 00 00    	mov    %edx,0x5f40
      return (void*)(p + 1);
    3dc5:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
    3dc8:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3dcb:	5b                   	pop    %ebx
    3dcc:	5e                   	pop    %esi
    3dcd:	5f                   	pop    %edi
    3dce:	5d                   	pop    %ebp
    3dcf:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
    3dd0:	8b 08                	mov    (%eax),%ecx
    3dd2:	89 0a                	mov    %ecx,(%edx)
    3dd4:	eb e9                	jmp    3dbf <malloc+0xaf>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    3dd6:	c7 05 40 5f 00 00 44 	movl   $0x5f44,0x5f40
    3ddd:	5f 00 00 
    3de0:	c7 05 44 5f 00 00 44 	movl   $0x5f44,0x5f44
    3de7:	5f 00 00 
    base.s.size = 0;
    3dea:	b8 44 5f 00 00       	mov    $0x5f44,%eax
    3def:	c7 05 48 5f 00 00 00 	movl   $0x0,0x5f48
    3df6:	00 00 00 
    3df9:	e9 3e ff ff ff       	jmp    3d3c <malloc+0x2c>
