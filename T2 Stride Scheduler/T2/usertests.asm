
_usertests: formato do arquivo elf32-i386


Desmontagem da seção .text:

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
      11:	68 e7 4d 00 00       	push   $0x4de7
      16:	6a 01                	push   $0x1
      18:	e8 83 3a 00 00       	call   3aa0 <printf>

  if(open("usertests.ran", 0) >= 0){
      1d:	59                   	pop    %ecx
      1e:	58                   	pop    %eax
      1f:	6a 00                	push   $0x0
      21:	68 fb 4d 00 00       	push   $0x4dfb
      26:	e8 67 39 00 00       	call   3992 <open>
      2b:	83 c4 10             	add    $0x10,%esp
      2e:	85 c0                	test   %eax,%eax
      30:	78 13                	js     45 <main+0x45>
    printf(1, "already ran user tests -- rebuild fs.img\n");
      32:	52                   	push   %edx
      33:	52                   	push   %edx
      34:	68 64 55 00 00       	push   $0x5564
      39:	6a 01                	push   $0x1
      3b:	e8 60 3a 00 00       	call   3aa0 <printf>
    exit();
      40:	e8 0d 39 00 00       	call   3952 <exit>
  }
  close(open("usertests.ran", O_CREATE));
      45:	50                   	push   %eax
      46:	50                   	push   %eax
      47:	68 00 02 00 00       	push   $0x200
      4c:	68 fb 4d 00 00       	push   $0x4dfb
      51:	e8 3c 39 00 00       	call   3992 <open>
      56:	89 04 24             	mov    %eax,(%esp)
      59:	e8 1c 39 00 00       	call   397a <close>

  argptest();
      5e:	e8 0d 36 00 00       	call   3670 <argptest>
  createdelete();
      63:	e8 f8 11 00 00       	call   1260 <createdelete>
  linkunlink();
      68:	e8 b3 1a 00 00       	call   1b20 <linkunlink>
  concreate();
      6d:	e8 9e 17 00 00       	call   1810 <concreate>
  fourfiles();
      72:	e8 d9 0f 00 00       	call   1050 <fourfiles>
  sharedfd();
      77:	e8 14 0e 00 00       	call   e90 <sharedfd>

  bigargtest();
      7c:	e8 8f 32 00 00       	call   3310 <bigargtest>
  bigwrite();
      81:	e8 ba 23 00 00       	call   2440 <bigwrite>
  bigargtest();
      86:	e8 85 32 00 00       	call   3310 <bigargtest>
  bsstest();
      8b:	e8 00 32 00 00       	call   3290 <bsstest>
  sbrktest();
      90:	e8 fb 2c 00 00       	call   2d90 <sbrktest>
  validatetest();
      95:	e8 36 31 00 00       	call   31d0 <validatetest>

  opentest();
      9a:	e8 61 03 00 00       	call   400 <opentest>
  writetest();
      9f:	e8 ec 03 00 00       	call   490 <writetest>
  writetest1();
      a4:	e8 c7 05 00 00       	call   670 <writetest1>
  createtest();
      a9:	e8 92 07 00 00       	call   840 <createtest>

  openiputtest();
      ae:	e8 3d 02 00 00       	call   2f0 <openiputtest>
  exitiputtest();
      b3:	e8 48 01 00 00       	call   200 <exitiputtest>
  iputtest();
      b8:	e8 63 00 00 00       	call   120 <iputtest>

  mem();
      bd:	e8 ee 0c 00 00       	call   db0 <mem>
  pipe1();
      c2:	e8 59 09 00 00       	call   a20 <pipe1>
  preempt();
      c7:	e8 04 0b 00 00       	call   bd0 <preempt>
  exitwait();
      cc:	e8 4f 0c 00 00       	call   d20 <exitwait>

  rmdot();
      d1:	e8 5a 27 00 00       	call   2830 <rmdot>
  fourteen();
      d6:	e8 15 26 00 00       	call   26f0 <fourteen>
  bigfile();
      db:	e8 40 24 00 00       	call   2520 <bigfile>
  subdir();
      e0:	e8 7b 1c 00 00       	call   1d60 <subdir>
  linktest();
      e5:	e8 16 15 00 00       	call   1600 <linktest>
  unlinkread();
      ea:	e8 81 13 00 00       	call   1470 <unlinkread>
  dirfile();
      ef:	e8 bc 28 00 00       	call   29b0 <dirfile>
  iref();
      f4:	e8 b7 2a 00 00       	call   2bb0 <iref>
  forktest();
      f9:	e8 d2 2b 00 00       	call   2cd0 <forktest>
  bigdir(); // slow
      fe:	e8 2d 1b 00 00       	call   1c30 <bigdir>

  uio();
     103:	e8 e8 34 00 00       	call   35f0 <uio>

  exectest();
     108:	e8 c3 08 00 00       	call   9d0 <exectest>

  exit();
     10d:	e8 40 38 00 00       	call   3952 <exit>
     112:	66 90                	xchg   %ax,%ax
     114:	66 90                	xchg   %ax,%ax
     116:	66 90                	xchg   %ax,%ax
     118:	66 90                	xchg   %ax,%ax
     11a:	66 90                	xchg   %ax,%ax
     11c:	66 90                	xchg   %ax,%ax
     11e:	66 90                	xchg   %ax,%ax

00000120 <iputtest>:
{
     120:	55                   	push   %ebp
     121:	89 e5                	mov    %esp,%ebp
     123:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "iput test\n");
     126:	68 8c 3e 00 00       	push   $0x3e8c
     12b:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     131:	e8 6a 39 00 00       	call   3aa0 <printf>
  if(mkdir("iputdir") < 0){
     136:	c7 04 24 1f 3e 00 00 	movl   $0x3e1f,(%esp)
     13d:	e8 78 38 00 00       	call   39ba <mkdir>
     142:	83 c4 10             	add    $0x10,%esp
     145:	85 c0                	test   %eax,%eax
     147:	78 58                	js     1a1 <iputtest+0x81>
  if(chdir("iputdir") < 0){
     149:	83 ec 0c             	sub    $0xc,%esp
     14c:	68 1f 3e 00 00       	push   $0x3e1f
     151:	e8 6c 38 00 00       	call   39c2 <chdir>
     156:	83 c4 10             	add    $0x10,%esp
     159:	85 c0                	test   %eax,%eax
     15b:	0f 88 85 00 00 00    	js     1e6 <iputtest+0xc6>
  if(unlink("../iputdir") < 0){
     161:	83 ec 0c             	sub    $0xc,%esp
     164:	68 1c 3e 00 00       	push   $0x3e1c
     169:	e8 34 38 00 00       	call   39a2 <unlink>
     16e:	83 c4 10             	add    $0x10,%esp
     171:	85 c0                	test   %eax,%eax
     173:	78 5a                	js     1cf <iputtest+0xaf>
  if(chdir("/") < 0){
     175:	83 ec 0c             	sub    $0xc,%esp
     178:	68 41 3e 00 00       	push   $0x3e41
     17d:	e8 40 38 00 00       	call   39c2 <chdir>
     182:	83 c4 10             	add    $0x10,%esp
     185:	85 c0                	test   %eax,%eax
     187:	78 2f                	js     1b8 <iputtest+0x98>
  printf(stdout, "iput test ok\n");
     189:	83 ec 08             	sub    $0x8,%esp
     18c:	68 c4 3e 00 00       	push   $0x3ec4
     191:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     197:	e8 04 39 00 00       	call   3aa0 <printf>
}
     19c:	83 c4 10             	add    $0x10,%esp
     19f:	c9                   	leave  
     1a0:	c3                   	ret    
    printf(stdout, "mkdir failed\n");
     1a1:	50                   	push   %eax
     1a2:	50                   	push   %eax
     1a3:	68 f8 3d 00 00       	push   $0x3df8
     1a8:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     1ae:	e8 ed 38 00 00       	call   3aa0 <printf>
    exit();
     1b3:	e8 9a 37 00 00       	call   3952 <exit>
    printf(stdout, "chdir / failed\n");
     1b8:	50                   	push   %eax
     1b9:	50                   	push   %eax
     1ba:	68 43 3e 00 00       	push   $0x3e43
     1bf:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     1c5:	e8 d6 38 00 00       	call   3aa0 <printf>
    exit();
     1ca:	e8 83 37 00 00       	call   3952 <exit>
    printf(stdout, "unlink ../iputdir failed\n");
     1cf:	52                   	push   %edx
     1d0:	52                   	push   %edx
     1d1:	68 27 3e 00 00       	push   $0x3e27
     1d6:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     1dc:	e8 bf 38 00 00       	call   3aa0 <printf>
    exit();
     1e1:	e8 6c 37 00 00       	call   3952 <exit>
    printf(stdout, "chdir iputdir failed\n");
     1e6:	51                   	push   %ecx
     1e7:	51                   	push   %ecx
     1e8:	68 06 3e 00 00       	push   $0x3e06
     1ed:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     1f3:	e8 a8 38 00 00       	call   3aa0 <printf>
    exit();
     1f8:	e8 55 37 00 00       	call   3952 <exit>
     1fd:	8d 76 00             	lea    0x0(%esi),%esi

00000200 <exitiputtest>:
{
     200:	55                   	push   %ebp
     201:	89 e5                	mov    %esp,%ebp
     203:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exitiput test\n");
     206:	68 53 3e 00 00       	push   $0x3e53
     20b:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     211:	e8 8a 38 00 00       	call   3aa0 <printf>
  pid = fork(0);
     216:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     21d:	e8 28 37 00 00       	call   394a <fork>
  if(pid < 0){
     222:	83 c4 10             	add    $0x10,%esp
     225:	85 c0                	test   %eax,%eax
     227:	78 7f                	js     2a8 <exitiputtest+0xa8>
  if(pid == 0){
     229:	75 45                	jne    270 <exitiputtest+0x70>
    if(mkdir("iputdir") < 0){
     22b:	83 ec 0c             	sub    $0xc,%esp
     22e:	68 1f 3e 00 00       	push   $0x3e1f
     233:	e8 82 37 00 00       	call   39ba <mkdir>
     238:	83 c4 10             	add    $0x10,%esp
     23b:	85 c0                	test   %eax,%eax
     23d:	0f 88 93 00 00 00    	js     2d6 <exitiputtest+0xd6>
    if(chdir("iputdir") < 0){
     243:	83 ec 0c             	sub    $0xc,%esp
     246:	68 1f 3e 00 00       	push   $0x3e1f
     24b:	e8 72 37 00 00       	call   39c2 <chdir>
     250:	83 c4 10             	add    $0x10,%esp
     253:	85 c0                	test   %eax,%eax
     255:	78 68                	js     2bf <exitiputtest+0xbf>
    if(unlink("../iputdir") < 0){
     257:	83 ec 0c             	sub    $0xc,%esp
     25a:	68 1c 3e 00 00       	push   $0x3e1c
     25f:	e8 3e 37 00 00       	call   39a2 <unlink>
     264:	83 c4 10             	add    $0x10,%esp
     267:	85 c0                	test   %eax,%eax
     269:	78 25                	js     290 <exitiputtest+0x90>
    exit();
     26b:	e8 e2 36 00 00       	call   3952 <exit>
  wait();
     270:	e8 e5 36 00 00       	call   395a <wait>
  printf(stdout, "exitiput test ok\n");
     275:	83 ec 08             	sub    $0x8,%esp
     278:	68 76 3e 00 00       	push   $0x3e76
     27d:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     283:	e8 18 38 00 00       	call   3aa0 <printf>
}
     288:	83 c4 10             	add    $0x10,%esp
     28b:	c9                   	leave  
     28c:	c3                   	ret    
     28d:	8d 76 00             	lea    0x0(%esi),%esi
      printf(stdout, "unlink ../iputdir failed\n");
     290:	83 ec 08             	sub    $0x8,%esp
     293:	68 27 3e 00 00       	push   $0x3e27
     298:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     29e:	e8 fd 37 00 00       	call   3aa0 <printf>
      exit();
     2a3:	e8 aa 36 00 00       	call   3952 <exit>
    printf(stdout, "fork failed\n");
     2a8:	51                   	push   %ecx
     2a9:	51                   	push   %ecx
     2aa:	68 3a 4d 00 00       	push   $0x4d3a
     2af:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     2b5:	e8 e6 37 00 00       	call   3aa0 <printf>
    exit();
     2ba:	e8 93 36 00 00       	call   3952 <exit>
      printf(stdout, "child chdir failed\n");
     2bf:	50                   	push   %eax
     2c0:	50                   	push   %eax
     2c1:	68 62 3e 00 00       	push   $0x3e62
     2c6:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     2cc:	e8 cf 37 00 00       	call   3aa0 <printf>
      exit();
     2d1:	e8 7c 36 00 00       	call   3952 <exit>
      printf(stdout, "mkdir failed\n");
     2d6:	52                   	push   %edx
     2d7:	52                   	push   %edx
     2d8:	68 f8 3d 00 00       	push   $0x3df8
     2dd:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     2e3:	e8 b8 37 00 00       	call   3aa0 <printf>
      exit();
     2e8:	e8 65 36 00 00       	call   3952 <exit>
     2ed:	8d 76 00             	lea    0x0(%esi),%esi

000002f0 <openiputtest>:
{
     2f0:	55                   	push   %ebp
     2f1:	89 e5                	mov    %esp,%ebp
     2f3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "openiput test\n");
     2f6:	68 88 3e 00 00       	push   $0x3e88
     2fb:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     301:	e8 9a 37 00 00       	call   3aa0 <printf>
  if(mkdir("oidir") < 0){
     306:	c7 04 24 97 3e 00 00 	movl   $0x3e97,(%esp)
     30d:	e8 a8 36 00 00       	call   39ba <mkdir>
     312:	83 c4 10             	add    $0x10,%esp
     315:	85 c0                	test   %eax,%eax
     317:	0f 88 90 00 00 00    	js     3ad <openiputtest+0xbd>
  pid = fork(0);
     31d:	83 ec 0c             	sub    $0xc,%esp
     320:	6a 00                	push   $0x0
     322:	e8 23 36 00 00       	call   394a <fork>
  if(pid < 0){
     327:	83 c4 10             	add    $0x10,%esp
     32a:	85 c0                	test   %eax,%eax
     32c:	0f 88 92 00 00 00    	js     3c4 <openiputtest+0xd4>
  if(pid == 0){
     332:	75 34                	jne    368 <openiputtest+0x78>
    int fd = open("oidir", O_RDWR);
     334:	83 ec 08             	sub    $0x8,%esp
     337:	6a 02                	push   $0x2
     339:	68 97 3e 00 00       	push   $0x3e97
     33e:	e8 4f 36 00 00       	call   3992 <open>
    if(fd >= 0){
     343:	83 c4 10             	add    $0x10,%esp
     346:	85 c0                	test   %eax,%eax
     348:	78 5e                	js     3a8 <openiputtest+0xb8>
      printf(stdout, "open directory for write succeeded\n");
     34a:	83 ec 08             	sub    $0x8,%esp
     34d:	68 1c 4e 00 00       	push   $0x4e1c
     352:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     358:	e8 43 37 00 00       	call   3aa0 <printf>
      exit();
     35d:	e8 f0 35 00 00       	call   3952 <exit>
     362:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  sleep(1);
     368:	83 ec 0c             	sub    $0xc,%esp
     36b:	6a 01                	push   $0x1
     36d:	e8 70 36 00 00       	call   39e2 <sleep>
  if(unlink("oidir") != 0){
     372:	c7 04 24 97 3e 00 00 	movl   $0x3e97,(%esp)
     379:	e8 24 36 00 00       	call   39a2 <unlink>
     37e:	83 c4 10             	add    $0x10,%esp
     381:	85 c0                	test   %eax,%eax
     383:	75 56                	jne    3db <openiputtest+0xeb>
  wait();
     385:	e8 d0 35 00 00       	call   395a <wait>
  printf(stdout, "openiput test ok\n");
     38a:	83 ec 08             	sub    $0x8,%esp
     38d:	68 c0 3e 00 00       	push   $0x3ec0
     392:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     398:	e8 03 37 00 00       	call   3aa0 <printf>
}
     39d:	83 c4 10             	add    $0x10,%esp
     3a0:	c9                   	leave  
     3a1:	c3                   	ret    
     3a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    exit();
     3a8:	e8 a5 35 00 00       	call   3952 <exit>
    printf(stdout, "mkdir oidir failed\n");
     3ad:	51                   	push   %ecx
     3ae:	51                   	push   %ecx
     3af:	68 9d 3e 00 00       	push   $0x3e9d
     3b4:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     3ba:	e8 e1 36 00 00       	call   3aa0 <printf>
    exit();
     3bf:	e8 8e 35 00 00       	call   3952 <exit>
    printf(stdout, "fork failed\n");
     3c4:	52                   	push   %edx
     3c5:	52                   	push   %edx
     3c6:	68 3a 4d 00 00       	push   $0x4d3a
     3cb:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     3d1:	e8 ca 36 00 00       	call   3aa0 <printf>
    exit();
     3d6:	e8 77 35 00 00       	call   3952 <exit>
    printf(stdout, "unlink failed\n");
     3db:	50                   	push   %eax
     3dc:	50                   	push   %eax
     3dd:	68 b1 3e 00 00       	push   $0x3eb1
     3e2:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     3e8:	e8 b3 36 00 00       	call   3aa0 <printf>
    exit();
     3ed:	e8 60 35 00 00       	call   3952 <exit>
     3f2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     3f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000400 <opentest>:
{
     400:	55                   	push   %ebp
     401:	89 e5                	mov    %esp,%ebp
     403:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "open test\n");
     406:	68 d2 3e 00 00       	push   $0x3ed2
     40b:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     411:	e8 8a 36 00 00       	call   3aa0 <printf>
  fd = open("echo", 0);
     416:	58                   	pop    %eax
     417:	5a                   	pop    %edx
     418:	6a 00                	push   $0x0
     41a:	68 dd 3e 00 00       	push   $0x3edd
     41f:	e8 6e 35 00 00       	call   3992 <open>
  if(fd < 0){
     424:	83 c4 10             	add    $0x10,%esp
     427:	85 c0                	test   %eax,%eax
     429:	78 36                	js     461 <opentest+0x61>
  close(fd);
     42b:	83 ec 0c             	sub    $0xc,%esp
     42e:	50                   	push   %eax
     42f:	e8 46 35 00 00       	call   397a <close>
  fd = open("doesnotexist", 0);
     434:	5a                   	pop    %edx
     435:	59                   	pop    %ecx
     436:	6a 00                	push   $0x0
     438:	68 f5 3e 00 00       	push   $0x3ef5
     43d:	e8 50 35 00 00       	call   3992 <open>
  if(fd >= 0){
     442:	83 c4 10             	add    $0x10,%esp
     445:	85 c0                	test   %eax,%eax
     447:	79 2f                	jns    478 <opentest+0x78>
  printf(stdout, "open test ok\n");
     449:	83 ec 08             	sub    $0x8,%esp
     44c:	68 20 3f 00 00       	push   $0x3f20
     451:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     457:	e8 44 36 00 00       	call   3aa0 <printf>
}
     45c:	83 c4 10             	add    $0x10,%esp
     45f:	c9                   	leave  
     460:	c3                   	ret    
    printf(stdout, "open echo failed!\n");
     461:	50                   	push   %eax
     462:	50                   	push   %eax
     463:	68 e2 3e 00 00       	push   $0x3ee2
     468:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     46e:	e8 2d 36 00 00       	call   3aa0 <printf>
    exit();
     473:	e8 da 34 00 00       	call   3952 <exit>
    printf(stdout, "open doesnotexist succeeded!\n");
     478:	50                   	push   %eax
     479:	50                   	push   %eax
     47a:	68 02 3f 00 00       	push   $0x3f02
     47f:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     485:	e8 16 36 00 00       	call   3aa0 <printf>
    exit();
     48a:	e8 c3 34 00 00       	call   3952 <exit>
     48f:	90                   	nop

00000490 <writetest>:
{
     490:	55                   	push   %ebp
     491:	89 e5                	mov    %esp,%ebp
     493:	56                   	push   %esi
     494:	53                   	push   %ebx
  printf(stdout, "small file test\n");
     495:	83 ec 08             	sub    $0x8,%esp
     498:	68 2e 3f 00 00       	push   $0x3f2e
     49d:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     4a3:	e8 f8 35 00 00       	call   3aa0 <printf>
  fd = open("small", O_CREATE|O_RDWR);
     4a8:	58                   	pop    %eax
     4a9:	5a                   	pop    %edx
     4aa:	68 02 02 00 00       	push   $0x202
     4af:	68 3f 3f 00 00       	push   $0x3f3f
     4b4:	e8 d9 34 00 00       	call   3992 <open>
  if(fd >= 0){
     4b9:	83 c4 10             	add    $0x10,%esp
     4bc:	85 c0                	test   %eax,%eax
     4be:	0f 88 88 01 00 00    	js     64c <writetest+0x1bc>
    printf(stdout, "creat small succeeded; ok\n");
     4c4:	83 ec 08             	sub    $0x8,%esp
     4c7:	89 c6                	mov    %eax,%esi
  for(i = 0; i < 100; i++){
     4c9:	31 db                	xor    %ebx,%ebx
    printf(stdout, "creat small succeeded; ok\n");
     4cb:	68 45 3f 00 00       	push   $0x3f45
     4d0:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     4d6:	e8 c5 35 00 00       	call   3aa0 <printf>
     4db:	83 c4 10             	add    $0x10,%esp
     4de:	66 90                	xchg   %ax,%ax
    if(write(fd, "aaaaaaaaaa", 10) != 10){
     4e0:	83 ec 04             	sub    $0x4,%esp
     4e3:	6a 0a                	push   $0xa
     4e5:	68 7c 3f 00 00       	push   $0x3f7c
     4ea:	56                   	push   %esi
     4eb:	e8 82 34 00 00       	call   3972 <write>
     4f0:	83 c4 10             	add    $0x10,%esp
     4f3:	83 f8 0a             	cmp    $0xa,%eax
     4f6:	0f 85 d9 00 00 00    	jne    5d5 <writetest+0x145>
    if(write(fd, "bbbbbbbbbb", 10) != 10){
     4fc:	83 ec 04             	sub    $0x4,%esp
     4ff:	6a 0a                	push   $0xa
     501:	68 87 3f 00 00       	push   $0x3f87
     506:	56                   	push   %esi
     507:	e8 66 34 00 00       	call   3972 <write>
     50c:	83 c4 10             	add    $0x10,%esp
     50f:	83 f8 0a             	cmp    $0xa,%eax
     512:	0f 85 d6 00 00 00    	jne    5ee <writetest+0x15e>
  for(i = 0; i < 100; i++){
     518:	83 c3 01             	add    $0x1,%ebx
     51b:	83 fb 64             	cmp    $0x64,%ebx
     51e:	75 c0                	jne    4e0 <writetest+0x50>
  printf(stdout, "writes ok\n");
     520:	83 ec 08             	sub    $0x8,%esp
     523:	68 92 3f 00 00       	push   $0x3f92
     528:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     52e:	e8 6d 35 00 00       	call   3aa0 <printf>
  close(fd);
     533:	89 34 24             	mov    %esi,(%esp)
     536:	e8 3f 34 00 00       	call   397a <close>
  fd = open("small", O_RDONLY);
     53b:	5b                   	pop    %ebx
     53c:	5e                   	pop    %esi
     53d:	6a 00                	push   $0x0
     53f:	68 3f 3f 00 00       	push   $0x3f3f
     544:	e8 49 34 00 00       	call   3992 <open>
  if(fd >= 0){
     549:	83 c4 10             	add    $0x10,%esp
     54c:	85 c0                	test   %eax,%eax
  fd = open("small", O_RDONLY);
     54e:	89 c3                	mov    %eax,%ebx
  if(fd >= 0){
     550:	0f 88 b1 00 00 00    	js     607 <writetest+0x177>
    printf(stdout, "open small succeeded ok\n");
     556:	83 ec 08             	sub    $0x8,%esp
     559:	68 9d 3f 00 00       	push   $0x3f9d
     55e:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     564:	e8 37 35 00 00       	call   3aa0 <printf>
  i = read(fd, buf, 2000);
     569:	83 c4 0c             	add    $0xc,%esp
     56c:	68 d0 07 00 00       	push   $0x7d0
     571:	68 80 86 00 00       	push   $0x8680
     576:	53                   	push   %ebx
     577:	e8 ee 33 00 00       	call   396a <read>
  if(i == 2000){
     57c:	83 c4 10             	add    $0x10,%esp
     57f:	3d d0 07 00 00       	cmp    $0x7d0,%eax
     584:	0f 85 94 00 00 00    	jne    61e <writetest+0x18e>
    printf(stdout, "read succeeded ok\n");
     58a:	83 ec 08             	sub    $0x8,%esp
     58d:	68 d1 3f 00 00       	push   $0x3fd1
     592:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     598:	e8 03 35 00 00       	call   3aa0 <printf>
  close(fd);
     59d:	89 1c 24             	mov    %ebx,(%esp)
     5a0:	e8 d5 33 00 00       	call   397a <close>
  if(unlink("small") < 0){
     5a5:	c7 04 24 3f 3f 00 00 	movl   $0x3f3f,(%esp)
     5ac:	e8 f1 33 00 00       	call   39a2 <unlink>
     5b1:	83 c4 10             	add    $0x10,%esp
     5b4:	85 c0                	test   %eax,%eax
     5b6:	78 7d                	js     635 <writetest+0x1a5>
  printf(stdout, "small file test ok\n");
     5b8:	83 ec 08             	sub    $0x8,%esp
     5bb:	68 f9 3f 00 00       	push   $0x3ff9
     5c0:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     5c6:	e8 d5 34 00 00       	call   3aa0 <printf>
}
     5cb:	83 c4 10             	add    $0x10,%esp
     5ce:	8d 65 f8             	lea    -0x8(%ebp),%esp
     5d1:	5b                   	pop    %ebx
     5d2:	5e                   	pop    %esi
     5d3:	5d                   	pop    %ebp
     5d4:	c3                   	ret    
      printf(stdout, "error: write aa %d new file failed\n", i);
     5d5:	83 ec 04             	sub    $0x4,%esp
     5d8:	53                   	push   %ebx
     5d9:	68 40 4e 00 00       	push   $0x4e40
     5de:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     5e4:	e8 b7 34 00 00       	call   3aa0 <printf>
      exit();
     5e9:	e8 64 33 00 00       	call   3952 <exit>
      printf(stdout, "error: write bb %d new file failed\n", i);
     5ee:	83 ec 04             	sub    $0x4,%esp
     5f1:	53                   	push   %ebx
     5f2:	68 64 4e 00 00       	push   $0x4e64
     5f7:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     5fd:	e8 9e 34 00 00       	call   3aa0 <printf>
      exit();
     602:	e8 4b 33 00 00       	call   3952 <exit>
    printf(stdout, "error: open small failed!\n");
     607:	51                   	push   %ecx
     608:	51                   	push   %ecx
     609:	68 b6 3f 00 00       	push   $0x3fb6
     60e:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     614:	e8 87 34 00 00       	call   3aa0 <printf>
    exit();
     619:	e8 34 33 00 00       	call   3952 <exit>
    printf(stdout, "read failed\n");
     61e:	52                   	push   %edx
     61f:	52                   	push   %edx
     620:	68 fe 42 00 00       	push   $0x42fe
     625:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     62b:	e8 70 34 00 00       	call   3aa0 <printf>
    exit();
     630:	e8 1d 33 00 00       	call   3952 <exit>
    printf(stdout, "unlink small failed\n");
     635:	50                   	push   %eax
     636:	50                   	push   %eax
     637:	68 e4 3f 00 00       	push   $0x3fe4
     63c:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     642:	e8 59 34 00 00       	call   3aa0 <printf>
    exit();
     647:	e8 06 33 00 00       	call   3952 <exit>
    printf(stdout, "error: creat small failed!\n");
     64c:	50                   	push   %eax
     64d:	50                   	push   %eax
     64e:	68 60 3f 00 00       	push   $0x3f60
     653:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     659:	e8 42 34 00 00       	call   3aa0 <printf>
    exit();
     65e:	e8 ef 32 00 00       	call   3952 <exit>
     663:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     669:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000670 <writetest1>:
{
     670:	55                   	push   %ebp
     671:	89 e5                	mov    %esp,%ebp
     673:	56                   	push   %esi
     674:	53                   	push   %ebx
  printf(stdout, "big files test\n");
     675:	83 ec 08             	sub    $0x8,%esp
     678:	68 0d 40 00 00       	push   $0x400d
     67d:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     683:	e8 18 34 00 00       	call   3aa0 <printf>
  fd = open("big", O_CREATE|O_RDWR);
     688:	58                   	pop    %eax
     689:	5a                   	pop    %edx
     68a:	68 02 02 00 00       	push   $0x202
     68f:	68 87 40 00 00       	push   $0x4087
     694:	e8 f9 32 00 00       	call   3992 <open>
  if(fd < 0){
     699:	83 c4 10             	add    $0x10,%esp
     69c:	85 c0                	test   %eax,%eax
     69e:	0f 88 61 01 00 00    	js     805 <writetest1+0x195>
     6a4:	89 c6                	mov    %eax,%esi
  for(i = 0; i < MAXFILE; i++){
     6a6:	31 db                	xor    %ebx,%ebx
     6a8:	90                   	nop
     6a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(write(fd, buf, 512) != 512){
     6b0:	83 ec 04             	sub    $0x4,%esp
    ((int*)buf)[0] = i;
     6b3:	89 1d 80 86 00 00    	mov    %ebx,0x8680
    if(write(fd, buf, 512) != 512){
     6b9:	68 00 02 00 00       	push   $0x200
     6be:	68 80 86 00 00       	push   $0x8680
     6c3:	56                   	push   %esi
     6c4:	e8 a9 32 00 00       	call   3972 <write>
     6c9:	83 c4 10             	add    $0x10,%esp
     6cc:	3d 00 02 00 00       	cmp    $0x200,%eax
     6d1:	0f 85 b3 00 00 00    	jne    78a <writetest1+0x11a>
  for(i = 0; i < MAXFILE; i++){
     6d7:	83 c3 01             	add    $0x1,%ebx
     6da:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
     6e0:	75 ce                	jne    6b0 <writetest1+0x40>
  close(fd);
     6e2:	83 ec 0c             	sub    $0xc,%esp
     6e5:	56                   	push   %esi
     6e6:	e8 8f 32 00 00       	call   397a <close>
  fd = open("big", O_RDONLY);
     6eb:	5b                   	pop    %ebx
     6ec:	5e                   	pop    %esi
     6ed:	6a 00                	push   $0x0
     6ef:	68 87 40 00 00       	push   $0x4087
     6f4:	e8 99 32 00 00       	call   3992 <open>
  if(fd < 0){
     6f9:	83 c4 10             	add    $0x10,%esp
     6fc:	85 c0                	test   %eax,%eax
  fd = open("big", O_RDONLY);
     6fe:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     700:	0f 88 e8 00 00 00    	js     7ee <writetest1+0x17e>
  n = 0;
     706:	31 db                	xor    %ebx,%ebx
     708:	eb 1d                	jmp    727 <writetest1+0xb7>
     70a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(i != 512){
     710:	3d 00 02 00 00       	cmp    $0x200,%eax
     715:	0f 85 9f 00 00 00    	jne    7ba <writetest1+0x14a>
    if(((int*)buf)[0] != n){
     71b:	a1 80 86 00 00       	mov    0x8680,%eax
     720:	39 d8                	cmp    %ebx,%eax
     722:	75 7f                	jne    7a3 <writetest1+0x133>
    n++;
     724:	83 c3 01             	add    $0x1,%ebx
    i = read(fd, buf, 512);
     727:	83 ec 04             	sub    $0x4,%esp
     72a:	68 00 02 00 00       	push   $0x200
     72f:	68 80 86 00 00       	push   $0x8680
     734:	56                   	push   %esi
     735:	e8 30 32 00 00       	call   396a <read>
    if(i == 0){
     73a:	83 c4 10             	add    $0x10,%esp
     73d:	85 c0                	test   %eax,%eax
     73f:	75 cf                	jne    710 <writetest1+0xa0>
      if(n == MAXFILE - 1){
     741:	81 fb 8b 00 00 00    	cmp    $0x8b,%ebx
     747:	0f 84 86 00 00 00    	je     7d3 <writetest1+0x163>
  close(fd);
     74d:	83 ec 0c             	sub    $0xc,%esp
     750:	56                   	push   %esi
     751:	e8 24 32 00 00       	call   397a <close>
  if(unlink("big") < 0){
     756:	c7 04 24 87 40 00 00 	movl   $0x4087,(%esp)
     75d:	e8 40 32 00 00       	call   39a2 <unlink>
     762:	83 c4 10             	add    $0x10,%esp
     765:	85 c0                	test   %eax,%eax
     767:	0f 88 af 00 00 00    	js     81c <writetest1+0x1ac>
  printf(stdout, "big files ok\n");
     76d:	83 ec 08             	sub    $0x8,%esp
     770:	68 ae 40 00 00       	push   $0x40ae
     775:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     77b:	e8 20 33 00 00       	call   3aa0 <printf>
}
     780:	83 c4 10             	add    $0x10,%esp
     783:	8d 65 f8             	lea    -0x8(%ebp),%esp
     786:	5b                   	pop    %ebx
     787:	5e                   	pop    %esi
     788:	5d                   	pop    %ebp
     789:	c3                   	ret    
      printf(stdout, "error: write big file failed\n", i);
     78a:	83 ec 04             	sub    $0x4,%esp
     78d:	53                   	push   %ebx
     78e:	68 37 40 00 00       	push   $0x4037
     793:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     799:	e8 02 33 00 00       	call   3aa0 <printf>
      exit();
     79e:	e8 af 31 00 00       	call   3952 <exit>
      printf(stdout, "read content of block %d is %d\n",
     7a3:	50                   	push   %eax
     7a4:	53                   	push   %ebx
     7a5:	68 88 4e 00 00       	push   $0x4e88
     7aa:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     7b0:	e8 eb 32 00 00       	call   3aa0 <printf>
      exit();
     7b5:	e8 98 31 00 00       	call   3952 <exit>
      printf(stdout, "read failed %d\n", i);
     7ba:	83 ec 04             	sub    $0x4,%esp
     7bd:	50                   	push   %eax
     7be:	68 8b 40 00 00       	push   $0x408b
     7c3:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     7c9:	e8 d2 32 00 00       	call   3aa0 <printf>
      exit();
     7ce:	e8 7f 31 00 00       	call   3952 <exit>
        printf(stdout, "read only %d blocks from big", n);
     7d3:	52                   	push   %edx
     7d4:	68 8b 00 00 00       	push   $0x8b
     7d9:	68 6e 40 00 00       	push   $0x406e
     7de:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     7e4:	e8 b7 32 00 00       	call   3aa0 <printf>
        exit();
     7e9:	e8 64 31 00 00       	call   3952 <exit>
    printf(stdout, "error: open big failed!\n");
     7ee:	51                   	push   %ecx
     7ef:	51                   	push   %ecx
     7f0:	68 55 40 00 00       	push   $0x4055
     7f5:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     7fb:	e8 a0 32 00 00       	call   3aa0 <printf>
    exit();
     800:	e8 4d 31 00 00       	call   3952 <exit>
    printf(stdout, "error: creat big failed!\n");
     805:	50                   	push   %eax
     806:	50                   	push   %eax
     807:	68 1d 40 00 00       	push   $0x401d
     80c:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     812:	e8 89 32 00 00       	call   3aa0 <printf>
    exit();
     817:	e8 36 31 00 00       	call   3952 <exit>
    printf(stdout, "unlink big failed\n");
     81c:	50                   	push   %eax
     81d:	50                   	push   %eax
     81e:	68 9b 40 00 00       	push   $0x409b
     823:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     829:	e8 72 32 00 00       	call   3aa0 <printf>
    exit();
     82e:	e8 1f 31 00 00       	call   3952 <exit>
     833:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     839:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000840 <createtest>:
{
     840:	55                   	push   %ebp
     841:	89 e5                	mov    %esp,%ebp
     843:	53                   	push   %ebx
  name[2] = '\0';
     844:	bb 30 00 00 00       	mov    $0x30,%ebx
{
     849:	83 ec 0c             	sub    $0xc,%esp
  printf(stdout, "many creates, followed by unlink test\n");
     84c:	68 a8 4e 00 00       	push   $0x4ea8
     851:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     857:	e8 44 32 00 00       	call   3aa0 <printf>
  name[0] = 'a';
     85c:	c6 05 80 a6 00 00 61 	movb   $0x61,0xa680
  name[2] = '\0';
     863:	c6 05 82 a6 00 00 00 	movb   $0x0,0xa682
     86a:	83 c4 10             	add    $0x10,%esp
     86d:	8d 76 00             	lea    0x0(%esi),%esi
    fd = open(name, O_CREATE|O_RDWR);
     870:	83 ec 08             	sub    $0x8,%esp
    name[1] = '0' + i;
     873:	88 1d 81 a6 00 00    	mov    %bl,0xa681
     879:	83 c3 01             	add    $0x1,%ebx
    fd = open(name, O_CREATE|O_RDWR);
     87c:	68 02 02 00 00       	push   $0x202
     881:	68 80 a6 00 00       	push   $0xa680
     886:	e8 07 31 00 00       	call   3992 <open>
    close(fd);
     88b:	89 04 24             	mov    %eax,(%esp)
     88e:	e8 e7 30 00 00       	call   397a <close>
  for(i = 0; i < 52; i++){
     893:	83 c4 10             	add    $0x10,%esp
     896:	80 fb 64             	cmp    $0x64,%bl
     899:	75 d5                	jne    870 <createtest+0x30>
  name[0] = 'a';
     89b:	c6 05 80 a6 00 00 61 	movb   $0x61,0xa680
  name[2] = '\0';
     8a2:	c6 05 82 a6 00 00 00 	movb   $0x0,0xa682
     8a9:	bb 30 00 00 00       	mov    $0x30,%ebx
     8ae:	66 90                	xchg   %ax,%ax
    unlink(name);
     8b0:	83 ec 0c             	sub    $0xc,%esp
    name[1] = '0' + i;
     8b3:	88 1d 81 a6 00 00    	mov    %bl,0xa681
     8b9:	83 c3 01             	add    $0x1,%ebx
    unlink(name);
     8bc:	68 80 a6 00 00       	push   $0xa680
     8c1:	e8 dc 30 00 00       	call   39a2 <unlink>
  for(i = 0; i < 52; i++){
     8c6:	83 c4 10             	add    $0x10,%esp
     8c9:	80 fb 64             	cmp    $0x64,%bl
     8cc:	75 e2                	jne    8b0 <createtest+0x70>
  printf(stdout, "many creates, followed by unlink; ok\n");
     8ce:	83 ec 08             	sub    $0x8,%esp
     8d1:	68 d0 4e 00 00       	push   $0x4ed0
     8d6:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     8dc:	e8 bf 31 00 00       	call   3aa0 <printf>
}
     8e1:	83 c4 10             	add    $0x10,%esp
     8e4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     8e7:	c9                   	leave  
     8e8:	c3                   	ret    
     8e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000008f0 <dirtest>:
{
     8f0:	55                   	push   %ebp
     8f1:	89 e5                	mov    %esp,%ebp
     8f3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "mkdir test\n");
     8f6:	68 bc 40 00 00       	push   $0x40bc
     8fb:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     901:	e8 9a 31 00 00       	call   3aa0 <printf>
  if(mkdir("dir0") < 0){
     906:	c7 04 24 c8 40 00 00 	movl   $0x40c8,(%esp)
     90d:	e8 a8 30 00 00       	call   39ba <mkdir>
     912:	83 c4 10             	add    $0x10,%esp
     915:	85 c0                	test   %eax,%eax
     917:	78 58                	js     971 <dirtest+0x81>
  if(chdir("dir0") < 0){
     919:	83 ec 0c             	sub    $0xc,%esp
     91c:	68 c8 40 00 00       	push   $0x40c8
     921:	e8 9c 30 00 00       	call   39c2 <chdir>
     926:	83 c4 10             	add    $0x10,%esp
     929:	85 c0                	test   %eax,%eax
     92b:	0f 88 85 00 00 00    	js     9b6 <dirtest+0xc6>
  if(chdir("..") < 0){
     931:	83 ec 0c             	sub    $0xc,%esp
     934:	68 6e 46 00 00       	push   $0x466e
     939:	e8 84 30 00 00       	call   39c2 <chdir>
     93e:	83 c4 10             	add    $0x10,%esp
     941:	85 c0                	test   %eax,%eax
     943:	78 5a                	js     99f <dirtest+0xaf>
  if(unlink("dir0") < 0){
     945:	83 ec 0c             	sub    $0xc,%esp
     948:	68 c8 40 00 00       	push   $0x40c8
     94d:	e8 50 30 00 00       	call   39a2 <unlink>
     952:	83 c4 10             	add    $0x10,%esp
     955:	85 c0                	test   %eax,%eax
     957:	78 2f                	js     988 <dirtest+0x98>
  printf(stdout, "mkdir test ok\n");
     959:	83 ec 08             	sub    $0x8,%esp
     95c:	68 05 41 00 00       	push   $0x4105
     961:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     967:	e8 34 31 00 00       	call   3aa0 <printf>
}
     96c:	83 c4 10             	add    $0x10,%esp
     96f:	c9                   	leave  
     970:	c3                   	ret    
    printf(stdout, "mkdir failed\n");
     971:	50                   	push   %eax
     972:	50                   	push   %eax
     973:	68 f8 3d 00 00       	push   $0x3df8
     978:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     97e:	e8 1d 31 00 00       	call   3aa0 <printf>
    exit();
     983:	e8 ca 2f 00 00       	call   3952 <exit>
    printf(stdout, "unlink dir0 failed\n");
     988:	50                   	push   %eax
     989:	50                   	push   %eax
     98a:	68 f1 40 00 00       	push   $0x40f1
     98f:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     995:	e8 06 31 00 00       	call   3aa0 <printf>
    exit();
     99a:	e8 b3 2f 00 00       	call   3952 <exit>
    printf(stdout, "chdir .. failed\n");
     99f:	52                   	push   %edx
     9a0:	52                   	push   %edx
     9a1:	68 e0 40 00 00       	push   $0x40e0
     9a6:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     9ac:	e8 ef 30 00 00       	call   3aa0 <printf>
    exit();
     9b1:	e8 9c 2f 00 00       	call   3952 <exit>
    printf(stdout, "chdir dir0 failed\n");
     9b6:	51                   	push   %ecx
     9b7:	51                   	push   %ecx
     9b8:	68 cd 40 00 00       	push   $0x40cd
     9bd:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     9c3:	e8 d8 30 00 00       	call   3aa0 <printf>
    exit();
     9c8:	e8 85 2f 00 00       	call   3952 <exit>
     9cd:	8d 76 00             	lea    0x0(%esi),%esi

000009d0 <exectest>:
{
     9d0:	55                   	push   %ebp
     9d1:	89 e5                	mov    %esp,%ebp
     9d3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exec test\n");
     9d6:	68 14 41 00 00       	push   $0x4114
     9db:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     9e1:	e8 ba 30 00 00       	call   3aa0 <printf>
  if(exec("echo", echoargv) < 0){
     9e6:	5a                   	pop    %edx
     9e7:	59                   	pop    %ecx
     9e8:	68 ac 5e 00 00       	push   $0x5eac
     9ed:	68 dd 3e 00 00       	push   $0x3edd
     9f2:	e8 93 2f 00 00       	call   398a <exec>
     9f7:	83 c4 10             	add    $0x10,%esp
     9fa:	85 c0                	test   %eax,%eax
     9fc:	78 02                	js     a00 <exectest+0x30>
}
     9fe:	c9                   	leave  
     9ff:	c3                   	ret    
    printf(stdout, "exec echo failed\n");
     a00:	50                   	push   %eax
     a01:	50                   	push   %eax
     a02:	68 1f 41 00 00       	push   $0x411f
     a07:	ff 35 a8 5e 00 00    	pushl  0x5ea8
     a0d:	e8 8e 30 00 00       	call   3aa0 <printf>
    exit();
     a12:	e8 3b 2f 00 00       	call   3952 <exit>
     a17:	89 f6                	mov    %esi,%esi
     a19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000a20 <pipe1>:
{
     a20:	55                   	push   %ebp
     a21:	89 e5                	mov    %esp,%ebp
     a23:	57                   	push   %edi
     a24:	56                   	push   %esi
     a25:	53                   	push   %ebx
  if(pipe(fds) != 0){
     a26:	8d 45 e0             	lea    -0x20(%ebp),%eax
{
     a29:	83 ec 38             	sub    $0x38,%esp
  if(pipe(fds) != 0){
     a2c:	50                   	push   %eax
     a2d:	e8 30 2f 00 00       	call   3962 <pipe>
     a32:	83 c4 10             	add    $0x10,%esp
     a35:	85 c0                	test   %eax,%eax
     a37:	0f 85 4e 01 00 00    	jne    b8b <pipe1+0x16b>
  pid = fork(0);
     a3d:	83 ec 0c             	sub    $0xc,%esp
     a40:	89 c3                	mov    %eax,%ebx
     a42:	6a 00                	push   $0x0
     a44:	e8 01 2f 00 00       	call   394a <fork>
  if(pid == 0){
     a49:	83 c4 10             	add    $0x10,%esp
     a4c:	83 f8 00             	cmp    $0x0,%eax
     a4f:	0f 84 8c 00 00 00    	je     ae1 <pipe1+0xc1>
  } else if(pid > 0){
     a55:	0f 8e 43 01 00 00    	jle    b9e <pipe1+0x17e>
    close(fds[1]);
     a5b:	83 ec 0c             	sub    $0xc,%esp
     a5e:	ff 75 e4             	pushl  -0x1c(%ebp)
    cc = 1;
     a61:	bf 01 00 00 00       	mov    $0x1,%edi
    close(fds[1]);
     a66:	e8 0f 2f 00 00       	call   397a <close>
    while((n = read(fds[0], buf, cc)) > 0){
     a6b:	83 c4 10             	add    $0x10,%esp
    total = 0;
     a6e:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    while((n = read(fds[0], buf, cc)) > 0){
     a75:	83 ec 04             	sub    $0x4,%esp
     a78:	57                   	push   %edi
     a79:	68 80 86 00 00       	push   $0x8680
     a7e:	ff 75 e0             	pushl  -0x20(%ebp)
     a81:	e8 e4 2e 00 00       	call   396a <read>
     a86:	83 c4 10             	add    $0x10,%esp
     a89:	85 c0                	test   %eax,%eax
     a8b:	0f 8e b3 00 00 00    	jle    b44 <pipe1+0x124>
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     a91:	89 d9                	mov    %ebx,%ecx
     a93:	8d 34 18             	lea    (%eax,%ebx,1),%esi
     a96:	f7 d9                	neg    %ecx
     a98:	90                   	nop
     a99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     aa0:	38 9c 0b 80 86 00 00 	cmp    %bl,0x8680(%ebx,%ecx,1)
     aa7:	8d 53 01             	lea    0x1(%ebx),%edx
     aaa:	75 1b                	jne    ac7 <pipe1+0xa7>
      for(i = 0; i < n; i++){
     aac:	39 f2                	cmp    %esi,%edx
     aae:	89 d3                	mov    %edx,%ebx
     ab0:	75 ee                	jne    aa0 <pipe1+0x80>
      cc = cc * 2;
     ab2:	01 ff                	add    %edi,%edi
      total += n;
     ab4:	01 45 d4             	add    %eax,-0x2c(%ebp)
     ab7:	b8 00 20 00 00       	mov    $0x2000,%eax
     abc:	81 ff 00 20 00 00    	cmp    $0x2000,%edi
     ac2:	0f 4f f8             	cmovg  %eax,%edi
     ac5:	eb ae                	jmp    a75 <pipe1+0x55>
          printf(1, "pipe1 oops 2\n");
     ac7:	83 ec 08             	sub    $0x8,%esp
     aca:	68 4e 41 00 00       	push   $0x414e
     acf:	6a 01                	push   $0x1
     ad1:	e8 ca 2f 00 00       	call   3aa0 <printf>
          return;
     ad6:	83 c4 10             	add    $0x10,%esp
}
     ad9:	8d 65 f4             	lea    -0xc(%ebp),%esp
     adc:	5b                   	pop    %ebx
     add:	5e                   	pop    %esi
     ade:	5f                   	pop    %edi
     adf:	5d                   	pop    %ebp
     ae0:	c3                   	ret    
    close(fds[0]);
     ae1:	83 ec 0c             	sub    $0xc,%esp
     ae4:	ff 75 e0             	pushl  -0x20(%ebp)
     ae7:	31 db                	xor    %ebx,%ebx
     ae9:	be 09 04 00 00       	mov    $0x409,%esi
     aee:	e8 87 2e 00 00       	call   397a <close>
     af3:	83 c4 10             	add    $0x10,%esp
     af6:	89 d8                	mov    %ebx,%eax
     af8:	89 f2                	mov    %esi,%edx
     afa:	f7 d8                	neg    %eax
     afc:	29 da                	sub    %ebx,%edx
     afe:	66 90                	xchg   %ax,%ax
        buf[i] = seq++;
     b00:	88 84 03 80 86 00 00 	mov    %al,0x8680(%ebx,%eax,1)
     b07:	83 c0 01             	add    $0x1,%eax
      for(i = 0; i < 1033; i++)
     b0a:	39 d0                	cmp    %edx,%eax
     b0c:	75 f2                	jne    b00 <pipe1+0xe0>
      if(write(fds[1], buf, 1033) != 1033){
     b0e:	83 ec 04             	sub    $0x4,%esp
     b11:	68 09 04 00 00       	push   $0x409
     b16:	68 80 86 00 00       	push   $0x8680
     b1b:	ff 75 e4             	pushl  -0x1c(%ebp)
     b1e:	e8 4f 2e 00 00       	call   3972 <write>
     b23:	83 c4 10             	add    $0x10,%esp
     b26:	3d 09 04 00 00       	cmp    $0x409,%eax
     b2b:	0f 85 80 00 00 00    	jne    bb1 <pipe1+0x191>
     b31:	81 eb 09 04 00 00    	sub    $0x409,%ebx
    for(n = 0; n < 5; n++){
     b37:	81 fb d3 eb ff ff    	cmp    $0xffffebd3,%ebx
     b3d:	75 b7                	jne    af6 <pipe1+0xd6>
    exit();
     b3f:	e8 0e 2e 00 00       	call   3952 <exit>
    if(total != 5 * 1033){
     b44:	81 7d d4 2d 14 00 00 	cmpl   $0x142d,-0x2c(%ebp)
     b4b:	75 29                	jne    b76 <pipe1+0x156>
    close(fds[0]);
     b4d:	83 ec 0c             	sub    $0xc,%esp
     b50:	ff 75 e0             	pushl  -0x20(%ebp)
     b53:	e8 22 2e 00 00       	call   397a <close>
    wait();
     b58:	e8 fd 2d 00 00       	call   395a <wait>
  printf(1, "pipe1 ok\n");
     b5d:	5a                   	pop    %edx
     b5e:	59                   	pop    %ecx
     b5f:	68 73 41 00 00       	push   $0x4173
     b64:	6a 01                	push   $0x1
     b66:	e8 35 2f 00 00       	call   3aa0 <printf>
     b6b:	83 c4 10             	add    $0x10,%esp
}
     b6e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     b71:	5b                   	pop    %ebx
     b72:	5e                   	pop    %esi
     b73:	5f                   	pop    %edi
     b74:	5d                   	pop    %ebp
     b75:	c3                   	ret    
      printf(1, "pipe1 oops 3 total %d\n", total);
     b76:	53                   	push   %ebx
     b77:	ff 75 d4             	pushl  -0x2c(%ebp)
     b7a:	68 5c 41 00 00       	push   $0x415c
     b7f:	6a 01                	push   $0x1
     b81:	e8 1a 2f 00 00       	call   3aa0 <printf>
      exit();
     b86:	e8 c7 2d 00 00       	call   3952 <exit>
    printf(1, "pipe() failed\n");
     b8b:	57                   	push   %edi
     b8c:	57                   	push   %edi
     b8d:	68 31 41 00 00       	push   $0x4131
     b92:	6a 01                	push   $0x1
     b94:	e8 07 2f 00 00       	call   3aa0 <printf>
    exit();
     b99:	e8 b4 2d 00 00       	call   3952 <exit>
    printf(1, "fork(0) failed\n");
     b9e:	50                   	push   %eax
     b9f:	50                   	push   %eax
     ba0:	68 7d 41 00 00       	push   $0x417d
     ba5:	6a 01                	push   $0x1
     ba7:	e8 f4 2e 00 00       	call   3aa0 <printf>
    exit();
     bac:	e8 a1 2d 00 00       	call   3952 <exit>
        printf(1, "pipe1 oops 1\n");
     bb1:	56                   	push   %esi
     bb2:	56                   	push   %esi
     bb3:	68 40 41 00 00       	push   $0x4140
     bb8:	6a 01                	push   $0x1
     bba:	e8 e1 2e 00 00       	call   3aa0 <printf>
        exit();
     bbf:	e8 8e 2d 00 00       	call   3952 <exit>
     bc4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     bca:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000bd0 <preempt>:
{
     bd0:	55                   	push   %ebp
     bd1:	89 e5                	mov    %esp,%ebp
     bd3:	57                   	push   %edi
     bd4:	56                   	push   %esi
     bd5:	53                   	push   %ebx
     bd6:	83 ec 24             	sub    $0x24,%esp
  printf(1, "preempt: ");
     bd9:	68 8d 41 00 00       	push   $0x418d
     bde:	6a 01                	push   $0x1
     be0:	e8 bb 2e 00 00       	call   3aa0 <printf>
  pid1 = fork(0);
     be5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     bec:	e8 59 2d 00 00       	call   394a <fork>
  if(pid1 == 0)
     bf1:	83 c4 10             	add    $0x10,%esp
     bf4:	85 c0                	test   %eax,%eax
     bf6:	75 02                	jne    bfa <preempt+0x2a>
     bf8:	eb fe                	jmp    bf8 <preempt+0x28>
  pid2 = fork(0);
     bfa:	83 ec 0c             	sub    $0xc,%esp
     bfd:	89 c7                	mov    %eax,%edi
     bff:	6a 00                	push   $0x0
     c01:	e8 44 2d 00 00       	call   394a <fork>
  if(pid2 == 0)
     c06:	83 c4 10             	add    $0x10,%esp
     c09:	85 c0                	test   %eax,%eax
  pid2 = fork(0);
     c0b:	89 c6                	mov    %eax,%esi
  if(pid2 == 0)
     c0d:	75 02                	jne    c11 <preempt+0x41>
     c0f:	eb fe                	jmp    c0f <preempt+0x3f>
  pipe(pfds);
     c11:	8d 45 e0             	lea    -0x20(%ebp),%eax
     c14:	83 ec 0c             	sub    $0xc,%esp
     c17:	50                   	push   %eax
     c18:	e8 45 2d 00 00       	call   3962 <pipe>
  pid3 = fork(0);
     c1d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     c24:	e8 21 2d 00 00       	call   394a <fork>
  if(pid3 == 0){
     c29:	83 c4 10             	add    $0x10,%esp
     c2c:	85 c0                	test   %eax,%eax
  pid3 = fork(0);
     c2e:	89 c3                	mov    %eax,%ebx
  if(pid3 == 0){
     c30:	75 46                	jne    c78 <preempt+0xa8>
    close(pfds[0]);
     c32:	83 ec 0c             	sub    $0xc,%esp
     c35:	ff 75 e0             	pushl  -0x20(%ebp)
     c38:	e8 3d 2d 00 00       	call   397a <close>
    if(write(pfds[1], "x", 1) != 1)
     c3d:	83 c4 0c             	add    $0xc,%esp
     c40:	6a 01                	push   $0x1
     c42:	68 52 47 00 00       	push   $0x4752
     c47:	ff 75 e4             	pushl  -0x1c(%ebp)
     c4a:	e8 23 2d 00 00       	call   3972 <write>
     c4f:	83 c4 10             	add    $0x10,%esp
     c52:	83 e8 01             	sub    $0x1,%eax
     c55:	74 11                	je     c68 <preempt+0x98>
      printf(1, "preempt write error");
     c57:	50                   	push   %eax
     c58:	50                   	push   %eax
     c59:	68 97 41 00 00       	push   $0x4197
     c5e:	6a 01                	push   $0x1
     c60:	e8 3b 2e 00 00       	call   3aa0 <printf>
     c65:	83 c4 10             	add    $0x10,%esp
    close(pfds[1]);
     c68:	83 ec 0c             	sub    $0xc,%esp
     c6b:	ff 75 e4             	pushl  -0x1c(%ebp)
     c6e:	e8 07 2d 00 00       	call   397a <close>
     c73:	83 c4 10             	add    $0x10,%esp
     c76:	eb fe                	jmp    c76 <preempt+0xa6>
  close(pfds[1]);
     c78:	83 ec 0c             	sub    $0xc,%esp
     c7b:	ff 75 e4             	pushl  -0x1c(%ebp)
     c7e:	e8 f7 2c 00 00       	call   397a <close>
  if(read(pfds[0], buf, sizeof(buf)) != 1){
     c83:	83 c4 0c             	add    $0xc,%esp
     c86:	68 00 20 00 00       	push   $0x2000
     c8b:	68 80 86 00 00       	push   $0x8680
     c90:	ff 75 e0             	pushl  -0x20(%ebp)
     c93:	e8 d2 2c 00 00       	call   396a <read>
     c98:	83 c4 10             	add    $0x10,%esp
     c9b:	83 e8 01             	sub    $0x1,%eax
     c9e:	74 19                	je     cb9 <preempt+0xe9>
    printf(1, "preempt read error");
     ca0:	50                   	push   %eax
     ca1:	50                   	push   %eax
     ca2:	68 ab 41 00 00       	push   $0x41ab
     ca7:	6a 01                	push   $0x1
     ca9:	e8 f2 2d 00 00       	call   3aa0 <printf>
    return;
     cae:	83 c4 10             	add    $0x10,%esp
}
     cb1:	8d 65 f4             	lea    -0xc(%ebp),%esp
     cb4:	5b                   	pop    %ebx
     cb5:	5e                   	pop    %esi
     cb6:	5f                   	pop    %edi
     cb7:	5d                   	pop    %ebp
     cb8:	c3                   	ret    
  close(pfds[0]);
     cb9:	83 ec 0c             	sub    $0xc,%esp
     cbc:	ff 75 e0             	pushl  -0x20(%ebp)
     cbf:	e8 b6 2c 00 00       	call   397a <close>
  printf(1, "kill... ");
     cc4:	58                   	pop    %eax
     cc5:	5a                   	pop    %edx
     cc6:	68 be 41 00 00       	push   $0x41be
     ccb:	6a 01                	push   $0x1
     ccd:	e8 ce 2d 00 00       	call   3aa0 <printf>
  kill(pid1);
     cd2:	89 3c 24             	mov    %edi,(%esp)
     cd5:	e8 a8 2c 00 00       	call   3982 <kill>
  kill(pid2);
     cda:	89 34 24             	mov    %esi,(%esp)
     cdd:	e8 a0 2c 00 00       	call   3982 <kill>
  kill(pid3);
     ce2:	89 1c 24             	mov    %ebx,(%esp)
     ce5:	e8 98 2c 00 00       	call   3982 <kill>
  printf(1, "wait... ");
     cea:	59                   	pop    %ecx
     ceb:	5b                   	pop    %ebx
     cec:	68 c7 41 00 00       	push   $0x41c7
     cf1:	6a 01                	push   $0x1
     cf3:	e8 a8 2d 00 00       	call   3aa0 <printf>
  wait();
     cf8:	e8 5d 2c 00 00       	call   395a <wait>
  wait();
     cfd:	e8 58 2c 00 00       	call   395a <wait>
  wait();
     d02:	e8 53 2c 00 00       	call   395a <wait>
  printf(1, "preempt ok\n");
     d07:	5e                   	pop    %esi
     d08:	5f                   	pop    %edi
     d09:	68 d0 41 00 00       	push   $0x41d0
     d0e:	6a 01                	push   $0x1
     d10:	e8 8b 2d 00 00       	call   3aa0 <printf>
     d15:	83 c4 10             	add    $0x10,%esp
     d18:	eb 97                	jmp    cb1 <preempt+0xe1>
     d1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000d20 <exitwait>:
{
     d20:	55                   	push   %ebp
     d21:	89 e5                	mov    %esp,%ebp
     d23:	56                   	push   %esi
     d24:	be 64 00 00 00       	mov    $0x64,%esi
     d29:	53                   	push   %ebx
     d2a:	eb 14                	jmp    d40 <exitwait+0x20>
     d2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid){
     d30:	74 77                	je     da9 <exitwait+0x89>
      if(wait() != pid){
     d32:	e8 23 2c 00 00       	call   395a <wait>
     d37:	39 d8                	cmp    %ebx,%eax
     d39:	75 35                	jne    d70 <exitwait+0x50>
  for(i = 0; i < 100; i++){
     d3b:	83 ee 01             	sub    $0x1,%esi
     d3e:	74 50                	je     d90 <exitwait+0x70>
    pid = fork(0);
     d40:	83 ec 0c             	sub    $0xc,%esp
     d43:	6a 00                	push   $0x0
     d45:	e8 00 2c 00 00       	call   394a <fork>
    if(pid < 0){
     d4a:	83 c4 10             	add    $0x10,%esp
     d4d:	85 c0                	test   %eax,%eax
    pid = fork(0);
     d4f:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
     d51:	79 dd                	jns    d30 <exitwait+0x10>
      printf(1, "fork failed\n");
     d53:	83 ec 08             	sub    $0x8,%esp
     d56:	68 3a 4d 00 00       	push   $0x4d3a
     d5b:	6a 01                	push   $0x1
     d5d:	e8 3e 2d 00 00       	call   3aa0 <printf>
      return;
     d62:	83 c4 10             	add    $0x10,%esp
}
     d65:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d68:	5b                   	pop    %ebx
     d69:	5e                   	pop    %esi
     d6a:	5d                   	pop    %ebp
     d6b:	c3                   	ret    
     d6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        printf(1, "wait wrong pid\n");
     d70:	83 ec 08             	sub    $0x8,%esp
     d73:	68 dc 41 00 00       	push   $0x41dc
     d78:	6a 01                	push   $0x1
     d7a:	e8 21 2d 00 00       	call   3aa0 <printf>
        return;
     d7f:	83 c4 10             	add    $0x10,%esp
}
     d82:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d85:	5b                   	pop    %ebx
     d86:	5e                   	pop    %esi
     d87:	5d                   	pop    %ebp
     d88:	c3                   	ret    
     d89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  printf(1, "exitwait ok\n");
     d90:	83 ec 08             	sub    $0x8,%esp
     d93:	68 ec 41 00 00       	push   $0x41ec
     d98:	6a 01                	push   $0x1
     d9a:	e8 01 2d 00 00       	call   3aa0 <printf>
     d9f:	83 c4 10             	add    $0x10,%esp
}
     da2:	8d 65 f8             	lea    -0x8(%ebp),%esp
     da5:	5b                   	pop    %ebx
     da6:	5e                   	pop    %esi
     da7:	5d                   	pop    %ebp
     da8:	c3                   	ret    
      exit();
     da9:	e8 a4 2b 00 00       	call   3952 <exit>
     dae:	66 90                	xchg   %ax,%ax

00000db0 <mem>:
{
     db0:	55                   	push   %ebp
     db1:	89 e5                	mov    %esp,%ebp
     db3:	57                   	push   %edi
     db4:	56                   	push   %esi
     db5:	53                   	push   %ebx
     db6:	31 db                	xor    %ebx,%ebx
     db8:	83 ec 14             	sub    $0x14,%esp
  printf(1, "mem test\n");
     dbb:	68 f9 41 00 00       	push   $0x41f9
     dc0:	6a 01                	push   $0x1
     dc2:	e8 d9 2c 00 00       	call   3aa0 <printf>
  ppid = getpid();
     dc7:	e8 06 2c 00 00       	call   39d2 <getpid>
  if((pid = fork(0)) == 0){
     dcc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  ppid = getpid();
     dd3:	89 c6                	mov    %eax,%esi
  if((pid = fork(0)) == 0){
     dd5:	e8 70 2b 00 00       	call   394a <fork>
     dda:	83 c4 10             	add    $0x10,%esp
     ddd:	85 c0                	test   %eax,%eax
     ddf:	74 13                	je     df4 <mem+0x44>
     de1:	e9 92 00 00 00       	jmp    e78 <mem+0xc8>
     de6:	8d 76 00             	lea    0x0(%esi),%esi
     de9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      *(char**)m2 = m1;
     df0:	89 18                	mov    %ebx,(%eax)
     df2:	89 c3                	mov    %eax,%ebx
    while((m2 = malloc(10001)) != 0){
     df4:	83 ec 0c             	sub    $0xc,%esp
     df7:	68 11 27 00 00       	push   $0x2711
     dfc:	e8 ff 2e 00 00       	call   3d00 <malloc>
     e01:	83 c4 10             	add    $0x10,%esp
     e04:	85 c0                	test   %eax,%eax
     e06:	75 e8                	jne    df0 <mem+0x40>
    while(m1){
     e08:	85 db                	test   %ebx,%ebx
     e0a:	74 18                	je     e24 <mem+0x74>
     e0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      m2 = *(char**)m1;
     e10:	8b 3b                	mov    (%ebx),%edi
      free(m1);
     e12:	83 ec 0c             	sub    $0xc,%esp
     e15:	53                   	push   %ebx
     e16:	89 fb                	mov    %edi,%ebx
     e18:	e8 53 2e 00 00       	call   3c70 <free>
    while(m1){
     e1d:	83 c4 10             	add    $0x10,%esp
     e20:	85 db                	test   %ebx,%ebx
     e22:	75 ec                	jne    e10 <mem+0x60>
    m1 = malloc(1024*20);
     e24:	83 ec 0c             	sub    $0xc,%esp
     e27:	68 00 50 00 00       	push   $0x5000
     e2c:	e8 cf 2e 00 00       	call   3d00 <malloc>
    if(m1 == 0){
     e31:	83 c4 10             	add    $0x10,%esp
     e34:	85 c0                	test   %eax,%eax
     e36:	74 20                	je     e58 <mem+0xa8>
    free(m1);
     e38:	83 ec 0c             	sub    $0xc,%esp
     e3b:	50                   	push   %eax
     e3c:	e8 2f 2e 00 00       	call   3c70 <free>
    printf(1, "mem ok\n");
     e41:	58                   	pop    %eax
     e42:	5a                   	pop    %edx
     e43:	68 1d 42 00 00       	push   $0x421d
     e48:	6a 01                	push   $0x1
     e4a:	e8 51 2c 00 00       	call   3aa0 <printf>
    exit();
     e4f:	e8 fe 2a 00 00       	call   3952 <exit>
     e54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(1, "couldn't allocate mem?!!\n");
     e58:	83 ec 08             	sub    $0x8,%esp
     e5b:	68 03 42 00 00       	push   $0x4203
     e60:	6a 01                	push   $0x1
     e62:	e8 39 2c 00 00       	call   3aa0 <printf>
      kill(ppid);
     e67:	89 34 24             	mov    %esi,(%esp)
     e6a:	e8 13 2b 00 00       	call   3982 <kill>
      exit();
     e6f:	e8 de 2a 00 00       	call   3952 <exit>
     e74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
}
     e78:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e7b:	5b                   	pop    %ebx
     e7c:	5e                   	pop    %esi
     e7d:	5f                   	pop    %edi
     e7e:	5d                   	pop    %ebp
    wait();
     e7f:	e9 d6 2a 00 00       	jmp    395a <wait>
     e84:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     e8a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000e90 <sharedfd>:
{
     e90:	55                   	push   %ebp
     e91:	89 e5                	mov    %esp,%ebp
     e93:	57                   	push   %edi
     e94:	56                   	push   %esi
     e95:	53                   	push   %ebx
     e96:	83 ec 34             	sub    $0x34,%esp
  printf(1, "sharedfd test\n");
     e99:	68 25 42 00 00       	push   $0x4225
     e9e:	6a 01                	push   $0x1
     ea0:	e8 fb 2b 00 00       	call   3aa0 <printf>
  unlink("sharedfd");
     ea5:	c7 04 24 34 42 00 00 	movl   $0x4234,(%esp)
     eac:	e8 f1 2a 00 00       	call   39a2 <unlink>
  fd = open("sharedfd", O_CREATE|O_RDWR);
     eb1:	59                   	pop    %ecx
     eb2:	5b                   	pop    %ebx
     eb3:	68 02 02 00 00       	push   $0x202
     eb8:	68 34 42 00 00       	push   $0x4234
     ebd:	e8 d0 2a 00 00       	call   3992 <open>
  if(fd < 0){
     ec2:	83 c4 10             	add    $0x10,%esp
     ec5:	85 c0                	test   %eax,%eax
     ec7:	0f 88 33 01 00 00    	js     1000 <sharedfd+0x170>
  pid = fork(0);
     ecd:	83 ec 0c             	sub    $0xc,%esp
     ed0:	89 c6                	mov    %eax,%esi
  memset(buf, pid==0?'c':'p', sizeof(buf));
     ed2:	bb e8 03 00 00       	mov    $0x3e8,%ebx
  pid = fork(0);
     ed7:	6a 00                	push   $0x0
     ed9:	e8 6c 2a 00 00       	call   394a <fork>
  memset(buf, pid==0?'c':'p', sizeof(buf));
     ede:	83 c4 0c             	add    $0xc,%esp
     ee1:	83 f8 01             	cmp    $0x1,%eax
  pid = fork(0);
     ee4:	89 c7                	mov    %eax,%edi
  memset(buf, pid==0?'c':'p', sizeof(buf));
     ee6:	19 c0                	sbb    %eax,%eax
     ee8:	6a 0a                	push   $0xa
     eea:	83 e0 f3             	and    $0xfffffff3,%eax
     eed:	83 c0 70             	add    $0x70,%eax
     ef0:	50                   	push   %eax
     ef1:	8d 45 de             	lea    -0x22(%ebp),%eax
     ef4:	50                   	push   %eax
     ef5:	e8 b6 28 00 00       	call   37b0 <memset>
     efa:	83 c4 10             	add    $0x10,%esp
     efd:	eb 06                	jmp    f05 <sharedfd+0x75>
     eff:	90                   	nop
  for(i = 0; i < 1000; i++){
     f00:	83 eb 01             	sub    $0x1,%ebx
     f03:	74 29                	je     f2e <sharedfd+0x9e>
    if(write(fd, buf, sizeof(buf)) != sizeof(buf)){
     f05:	8d 45 de             	lea    -0x22(%ebp),%eax
     f08:	83 ec 04             	sub    $0x4,%esp
     f0b:	6a 0a                	push   $0xa
     f0d:	50                   	push   %eax
     f0e:	56                   	push   %esi
     f0f:	e8 5e 2a 00 00       	call   3972 <write>
     f14:	83 c4 10             	add    $0x10,%esp
     f17:	83 f8 0a             	cmp    $0xa,%eax
     f1a:	74 e4                	je     f00 <sharedfd+0x70>
      printf(1, "fstests: write sharedfd failed\n");
     f1c:	83 ec 08             	sub    $0x8,%esp
     f1f:	68 24 4f 00 00       	push   $0x4f24
     f24:	6a 01                	push   $0x1
     f26:	e8 75 2b 00 00       	call   3aa0 <printf>
      break;
     f2b:	83 c4 10             	add    $0x10,%esp
  if(pid == 0)
     f2e:	85 ff                	test   %edi,%edi
     f30:	0f 84 fe 00 00 00    	je     1034 <sharedfd+0x1a4>
    wait();
     f36:	e8 1f 2a 00 00       	call   395a <wait>
  close(fd);
     f3b:	83 ec 0c             	sub    $0xc,%esp
  nc = np = 0;
     f3e:	31 db                	xor    %ebx,%ebx
     f40:	31 ff                	xor    %edi,%edi
  close(fd);
     f42:	56                   	push   %esi
     f43:	8d 75 e8             	lea    -0x18(%ebp),%esi
     f46:	e8 2f 2a 00 00       	call   397a <close>
  fd = open("sharedfd", 0);
     f4b:	58                   	pop    %eax
     f4c:	5a                   	pop    %edx
     f4d:	6a 00                	push   $0x0
     f4f:	68 34 42 00 00       	push   $0x4234
     f54:	e8 39 2a 00 00       	call   3992 <open>
  if(fd < 0){
     f59:	83 c4 10             	add    $0x10,%esp
     f5c:	85 c0                	test   %eax,%eax
  fd = open("sharedfd", 0);
     f5e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  if(fd < 0){
     f61:	0f 88 b3 00 00 00    	js     101a <sharedfd+0x18a>
     f67:	89 f8                	mov    %edi,%eax
     f69:	89 df                	mov    %ebx,%edi
     f6b:	89 c3                	mov    %eax,%ebx
     f6d:	8d 76 00             	lea    0x0(%esi),%esi
  while((n = read(fd, buf, sizeof(buf))) > 0){
     f70:	8d 45 de             	lea    -0x22(%ebp),%eax
     f73:	83 ec 04             	sub    $0x4,%esp
     f76:	6a 0a                	push   $0xa
     f78:	50                   	push   %eax
     f79:	ff 75 d4             	pushl  -0x2c(%ebp)
     f7c:	e8 e9 29 00 00       	call   396a <read>
     f81:	83 c4 10             	add    $0x10,%esp
     f84:	85 c0                	test   %eax,%eax
     f86:	7e 28                	jle    fb0 <sharedfd+0x120>
     f88:	8d 45 de             	lea    -0x22(%ebp),%eax
     f8b:	eb 15                	jmp    fa2 <sharedfd+0x112>
     f8d:	8d 76 00             	lea    0x0(%esi),%esi
        np++;
     f90:	80 fa 70             	cmp    $0x70,%dl
     f93:	0f 94 c2             	sete   %dl
     f96:	0f b6 d2             	movzbl %dl,%edx
     f99:	01 d7                	add    %edx,%edi
     f9b:	83 c0 01             	add    $0x1,%eax
    for(i = 0; i < sizeof(buf); i++){
     f9e:	39 f0                	cmp    %esi,%eax
     fa0:	74 ce                	je     f70 <sharedfd+0xe0>
      if(buf[i] == 'c')
     fa2:	0f b6 10             	movzbl (%eax),%edx
     fa5:	80 fa 63             	cmp    $0x63,%dl
     fa8:	75 e6                	jne    f90 <sharedfd+0x100>
        nc++;
     faa:	83 c3 01             	add    $0x1,%ebx
     fad:	eb ec                	jmp    f9b <sharedfd+0x10b>
     faf:	90                   	nop
  close(fd);
     fb0:	83 ec 0c             	sub    $0xc,%esp
     fb3:	89 d8                	mov    %ebx,%eax
     fb5:	ff 75 d4             	pushl  -0x2c(%ebp)
     fb8:	89 fb                	mov    %edi,%ebx
     fba:	89 c7                	mov    %eax,%edi
     fbc:	e8 b9 29 00 00       	call   397a <close>
  unlink("sharedfd");
     fc1:	c7 04 24 34 42 00 00 	movl   $0x4234,(%esp)
     fc8:	e8 d5 29 00 00       	call   39a2 <unlink>
  if(nc == 10000 && np == 10000){
     fcd:	83 c4 10             	add    $0x10,%esp
     fd0:	81 ff 10 27 00 00    	cmp    $0x2710,%edi
     fd6:	75 61                	jne    1039 <sharedfd+0x1a9>
     fd8:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
     fde:	75 59                	jne    1039 <sharedfd+0x1a9>
    printf(1, "sharedfd ok\n");
     fe0:	83 ec 08             	sub    $0x8,%esp
     fe3:	68 3d 42 00 00       	push   $0x423d
     fe8:	6a 01                	push   $0x1
     fea:	e8 b1 2a 00 00       	call   3aa0 <printf>
     fef:	83 c4 10             	add    $0x10,%esp
}
     ff2:	8d 65 f4             	lea    -0xc(%ebp),%esp
     ff5:	5b                   	pop    %ebx
     ff6:	5e                   	pop    %esi
     ff7:	5f                   	pop    %edi
     ff8:	5d                   	pop    %ebp
     ff9:	c3                   	ret    
     ffa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1, "fstests: cannot open sharedfd for writing");
    1000:	83 ec 08             	sub    $0x8,%esp
    1003:	68 f8 4e 00 00       	push   $0x4ef8
    1008:	6a 01                	push   $0x1
    100a:	e8 91 2a 00 00       	call   3aa0 <printf>
    return;
    100f:	83 c4 10             	add    $0x10,%esp
}
    1012:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1015:	5b                   	pop    %ebx
    1016:	5e                   	pop    %esi
    1017:	5f                   	pop    %edi
    1018:	5d                   	pop    %ebp
    1019:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for reading\n");
    101a:	83 ec 08             	sub    $0x8,%esp
    101d:	68 44 4f 00 00       	push   $0x4f44
    1022:	6a 01                	push   $0x1
    1024:	e8 77 2a 00 00       	call   3aa0 <printf>
    return;
    1029:	83 c4 10             	add    $0x10,%esp
}
    102c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    102f:	5b                   	pop    %ebx
    1030:	5e                   	pop    %esi
    1031:	5f                   	pop    %edi
    1032:	5d                   	pop    %ebp
    1033:	c3                   	ret    
    exit();
    1034:	e8 19 29 00 00       	call   3952 <exit>
    printf(1, "sharedfd oops %d %d\n", nc, np);
    1039:	53                   	push   %ebx
    103a:	57                   	push   %edi
    103b:	68 4a 42 00 00       	push   $0x424a
    1040:	6a 01                	push   $0x1
    1042:	e8 59 2a 00 00       	call   3aa0 <printf>
    exit();
    1047:	e8 06 29 00 00       	call   3952 <exit>
    104c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001050 <fourfiles>:
{
    1050:	55                   	push   %ebp
    1051:	89 e5                	mov    %esp,%ebp
    1053:	57                   	push   %edi
    1054:	56                   	push   %esi
    1055:	53                   	push   %ebx
  printf(1, "fourfiles test\n");
    1056:	be 5f 42 00 00       	mov    $0x425f,%esi
  for(pi = 0; pi < 4; pi++){
    105b:	31 db                	xor    %ebx,%ebx
{
    105d:	83 ec 34             	sub    $0x34,%esp
  char *names[] = { "f0", "f1", "f2", "f3" };
    1060:	c7 45 d8 5f 42 00 00 	movl   $0x425f,-0x28(%ebp)
    1067:	c7 45 dc a8 43 00 00 	movl   $0x43a8,-0x24(%ebp)
  printf(1, "fourfiles test\n");
    106e:	68 65 42 00 00       	push   $0x4265
    1073:	6a 01                	push   $0x1
  char *names[] = { "f0", "f1", "f2", "f3" };
    1075:	c7 45 e0 ac 43 00 00 	movl   $0x43ac,-0x20(%ebp)
    107c:	c7 45 e4 62 42 00 00 	movl   $0x4262,-0x1c(%ebp)
  printf(1, "fourfiles test\n");
    1083:	e8 18 2a 00 00       	call   3aa0 <printf>
    1088:	83 c4 10             	add    $0x10,%esp
    unlink(fname);
    108b:	83 ec 0c             	sub    $0xc,%esp
    108e:	56                   	push   %esi
    108f:	e8 0e 29 00 00       	call   39a2 <unlink>
    pid = fork(0);
    1094:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    109b:	e8 aa 28 00 00       	call   394a <fork>
    if(pid < 0){
    10a0:	83 c4 10             	add    $0x10,%esp
    10a3:	85 c0                	test   %eax,%eax
    10a5:	0f 88 71 01 00 00    	js     121c <fourfiles+0x1cc>
    if(pid == 0){
    10ab:	0f 84 e8 00 00 00    	je     1199 <fourfiles+0x149>
  for(pi = 0; pi < 4; pi++){
    10b1:	83 c3 01             	add    $0x1,%ebx
    10b4:	83 fb 04             	cmp    $0x4,%ebx
    10b7:	74 06                	je     10bf <fourfiles+0x6f>
    10b9:	8b 74 9d d8          	mov    -0x28(%ebp,%ebx,4),%esi
    10bd:	eb cc                	jmp    108b <fourfiles+0x3b>
    wait();
    10bf:	e8 96 28 00 00       	call   395a <wait>
  for(i = 0; i < 2; i++){
    10c4:	31 ff                	xor    %edi,%edi
    wait();
    10c6:	e8 8f 28 00 00       	call   395a <wait>
    10cb:	e8 8a 28 00 00       	call   395a <wait>
    10d0:	e8 85 28 00 00       	call   395a <wait>
    10d5:	c7 45 d0 5f 42 00 00 	movl   $0x425f,-0x30(%ebp)
    fd = open(fname, 0);
    10dc:	83 ec 08             	sub    $0x8,%esp
    total = 0;
    10df:	31 db                	xor    %ebx,%ebx
    fd = open(fname, 0);
    10e1:	6a 00                	push   $0x0
    10e3:	ff 75 d0             	pushl  -0x30(%ebp)
    10e6:	e8 a7 28 00 00       	call   3992 <open>
    while((n = read(fd, buf, sizeof(buf))) > 0){
    10eb:	83 c4 10             	add    $0x10,%esp
    fd = open(fname, 0);
    10ee:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    10f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    while((n = read(fd, buf, sizeof(buf))) > 0){
    10f8:	83 ec 04             	sub    $0x4,%esp
    10fb:	68 00 20 00 00       	push   $0x2000
    1100:	68 80 86 00 00       	push   $0x8680
    1105:	ff 75 d4             	pushl  -0x2c(%ebp)
    1108:	e8 5d 28 00 00       	call   396a <read>
    110d:	83 c4 10             	add    $0x10,%esp
    1110:	85 c0                	test   %eax,%eax
    1112:	7e 2e                	jle    1142 <fourfiles+0xf2>
      for(j = 0; j < n; j++){
    1114:	31 d2                	xor    %edx,%edx
    1116:	8d 76 00             	lea    0x0(%esi),%esi
    1119:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
        if(buf[j] != '0'+i){
    1120:	0f be b2 80 86 00 00 	movsbl 0x8680(%edx),%esi
    1127:	83 ff 01             	cmp    $0x1,%edi
    112a:	19 c9                	sbb    %ecx,%ecx
    112c:	83 c1 31             	add    $0x31,%ecx
    112f:	39 ce                	cmp    %ecx,%esi
    1131:	0f 85 be 00 00 00    	jne    11f5 <fourfiles+0x1a5>
      for(j = 0; j < n; j++){
    1137:	83 c2 01             	add    $0x1,%edx
    113a:	39 d0                	cmp    %edx,%eax
    113c:	75 e2                	jne    1120 <fourfiles+0xd0>
      total += n;
    113e:	01 c3                	add    %eax,%ebx
    1140:	eb b6                	jmp    10f8 <fourfiles+0xa8>
    close(fd);
    1142:	83 ec 0c             	sub    $0xc,%esp
    1145:	ff 75 d4             	pushl  -0x2c(%ebp)
    1148:	e8 2d 28 00 00       	call   397a <close>
    if(total != 12*500){
    114d:	83 c4 10             	add    $0x10,%esp
    1150:	81 fb 70 17 00 00    	cmp    $0x1770,%ebx
    1156:	0f 85 d3 00 00 00    	jne    122f <fourfiles+0x1df>
    unlink(fname);
    115c:	83 ec 0c             	sub    $0xc,%esp
    115f:	ff 75 d0             	pushl  -0x30(%ebp)
    1162:	e8 3b 28 00 00       	call   39a2 <unlink>
  for(i = 0; i < 2; i++){
    1167:	83 c4 10             	add    $0x10,%esp
    116a:	83 ff 01             	cmp    $0x1,%edi
    116d:	75 1a                	jne    1189 <fourfiles+0x139>
  printf(1, "fourfiles ok\n");
    116f:	83 ec 08             	sub    $0x8,%esp
    1172:	68 a3 42 00 00       	push   $0x42a3
    1177:	6a 01                	push   $0x1
    1179:	e8 22 29 00 00       	call   3aa0 <printf>
}
    117e:	83 c4 10             	add    $0x10,%esp
    1181:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1184:	5b                   	pop    %ebx
    1185:	5e                   	pop    %esi
    1186:	5f                   	pop    %edi
    1187:	5d                   	pop    %ebp
    1188:	c3                   	ret    
    1189:	8b 45 dc             	mov    -0x24(%ebp),%eax
    118c:	bf 01 00 00 00       	mov    $0x1,%edi
    1191:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1194:	e9 43 ff ff ff       	jmp    10dc <fourfiles+0x8c>
      fd = open(fname, O_CREATE | O_RDWR);
    1199:	83 ec 08             	sub    $0x8,%esp
    119c:	68 02 02 00 00       	push   $0x202
    11a1:	56                   	push   %esi
    11a2:	e8 eb 27 00 00       	call   3992 <open>
      if(fd < 0){
    11a7:	83 c4 10             	add    $0x10,%esp
    11aa:	85 c0                	test   %eax,%eax
      fd = open(fname, O_CREATE | O_RDWR);
    11ac:	89 c6                	mov    %eax,%esi
      if(fd < 0){
    11ae:	78 59                	js     1209 <fourfiles+0x1b9>
      memset(buf, '0'+pi, 512);
    11b0:	83 ec 04             	sub    $0x4,%esp
    11b3:	83 c3 30             	add    $0x30,%ebx
    11b6:	68 00 02 00 00       	push   $0x200
    11bb:	53                   	push   %ebx
    11bc:	bb 0c 00 00 00       	mov    $0xc,%ebx
    11c1:	68 80 86 00 00       	push   $0x8680
    11c6:	e8 e5 25 00 00       	call   37b0 <memset>
    11cb:	83 c4 10             	add    $0x10,%esp
        if((n = write(fd, buf, 500)) != 500){
    11ce:	83 ec 04             	sub    $0x4,%esp
    11d1:	68 f4 01 00 00       	push   $0x1f4
    11d6:	68 80 86 00 00       	push   $0x8680
    11db:	56                   	push   %esi
    11dc:	e8 91 27 00 00       	call   3972 <write>
    11e1:	83 c4 10             	add    $0x10,%esp
    11e4:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    11e9:	75 57                	jne    1242 <fourfiles+0x1f2>
      for(i = 0; i < 12; i++){
    11eb:	83 eb 01             	sub    $0x1,%ebx
    11ee:	75 de                	jne    11ce <fourfiles+0x17e>
      exit();
    11f0:	e8 5d 27 00 00       	call   3952 <exit>
          printf(1, "wrong char\n");
    11f5:	83 ec 08             	sub    $0x8,%esp
    11f8:	68 86 42 00 00       	push   $0x4286
    11fd:	6a 01                	push   $0x1
    11ff:	e8 9c 28 00 00       	call   3aa0 <printf>
          exit();
    1204:	e8 49 27 00 00       	call   3952 <exit>
        printf(1, "create failed\n");
    1209:	51                   	push   %ecx
    120a:	51                   	push   %ecx
    120b:	68 00 45 00 00       	push   $0x4500
    1210:	6a 01                	push   $0x1
    1212:	e8 89 28 00 00       	call   3aa0 <printf>
        exit();
    1217:	e8 36 27 00 00       	call   3952 <exit>
      printf(1, "fork failed\n");
    121c:	53                   	push   %ebx
    121d:	53                   	push   %ebx
    121e:	68 3a 4d 00 00       	push   $0x4d3a
    1223:	6a 01                	push   $0x1
    1225:	e8 76 28 00 00       	call   3aa0 <printf>
      exit();
    122a:	e8 23 27 00 00       	call   3952 <exit>
      printf(1, "wrong length %d\n", total);
    122f:	50                   	push   %eax
    1230:	53                   	push   %ebx
    1231:	68 92 42 00 00       	push   $0x4292
    1236:	6a 01                	push   $0x1
    1238:	e8 63 28 00 00       	call   3aa0 <printf>
      exit();
    123d:	e8 10 27 00 00       	call   3952 <exit>
          printf(1, "write failed %d\n", n);
    1242:	52                   	push   %edx
    1243:	50                   	push   %eax
    1244:	68 75 42 00 00       	push   $0x4275
    1249:	6a 01                	push   $0x1
    124b:	e8 50 28 00 00       	call   3aa0 <printf>
          exit();
    1250:	e8 fd 26 00 00       	call   3952 <exit>
    1255:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1259:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001260 <createdelete>:
{
    1260:	55                   	push   %ebp
    1261:	89 e5                	mov    %esp,%ebp
    1263:	57                   	push   %edi
    1264:	56                   	push   %esi
    1265:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    1266:	31 db                	xor    %ebx,%ebx
{
    1268:	83 ec 44             	sub    $0x44,%esp
  printf(1, "createdelete test\n");
    126b:	68 b1 42 00 00       	push   $0x42b1
    1270:	6a 01                	push   $0x1
    1272:	e8 29 28 00 00       	call   3aa0 <printf>
    1277:	83 c4 10             	add    $0x10,%esp
    pid = fork(0);
    127a:	83 ec 0c             	sub    $0xc,%esp
    127d:	6a 00                	push   $0x0
    127f:	e8 c6 26 00 00       	call   394a <fork>
    if(pid < 0){
    1284:	83 c4 10             	add    $0x10,%esp
    1287:	85 c0                	test   %eax,%eax
    1289:	0f 88 ae 01 00 00    	js     143d <createdelete+0x1dd>
    if(pid == 0){
    128f:	0f 84 fb 00 00 00    	je     1390 <createdelete+0x130>
  for(pi = 0; pi < 4; pi++){
    1295:	83 c3 01             	add    $0x1,%ebx
    1298:	83 fb 04             	cmp    $0x4,%ebx
    129b:	75 dd                	jne    127a <createdelete+0x1a>
    129d:	8d 7d c8             	lea    -0x38(%ebp),%edi
  name[0] = name[1] = name[2] = 0;
    12a0:	be ff ff ff ff       	mov    $0xffffffff,%esi
    wait();
    12a5:	e8 b0 26 00 00       	call   395a <wait>
    12aa:	e8 ab 26 00 00       	call   395a <wait>
    12af:	e8 a6 26 00 00       	call   395a <wait>
    12b4:	e8 a1 26 00 00       	call   395a <wait>
  name[0] = name[1] = name[2] = 0;
    12b9:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    12bd:	8d 76 00             	lea    0x0(%esi),%esi
    12c0:	8d 46 31             	lea    0x31(%esi),%eax
    12c3:	88 45 c7             	mov    %al,-0x39(%ebp)
    12c6:	8d 46 01             	lea    0x1(%esi),%eax
    12c9:	83 f8 09             	cmp    $0x9,%eax
    12cc:	89 45 c0             	mov    %eax,-0x40(%ebp)
    12cf:	0f 9f c3             	setg   %bl
    12d2:	85 c0                	test   %eax,%eax
    12d4:	0f 94 c0             	sete   %al
    12d7:	09 c3                	or     %eax,%ebx
    12d9:	88 5d c6             	mov    %bl,-0x3a(%ebp)
      name[2] = '\0';
    12dc:	bb 70 00 00 00       	mov    $0x70,%ebx
      name[1] = '0' + i;
    12e1:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
      fd = open(name, 0);
    12e5:	83 ec 08             	sub    $0x8,%esp
      name[0] = 'p' + pi;
    12e8:	88 5d c8             	mov    %bl,-0x38(%ebp)
      fd = open(name, 0);
    12eb:	6a 00                	push   $0x0
    12ed:	57                   	push   %edi
      name[1] = '0' + i;
    12ee:	88 45 c9             	mov    %al,-0x37(%ebp)
      fd = open(name, 0);
    12f1:	e8 9c 26 00 00       	call   3992 <open>
      if((i == 0 || i >= N/2) && fd < 0){
    12f6:	83 c4 10             	add    $0x10,%esp
    12f9:	80 7d c6 00          	cmpb   $0x0,-0x3a(%ebp)
    12fd:	0f 84 7d 00 00 00    	je     1380 <createdelete+0x120>
    1303:	85 c0                	test   %eax,%eax
    1305:	0f 88 0a 01 00 00    	js     1415 <createdelete+0x1b5>
      } else if((i >= 1 && i < N/2) && fd >= 0){
    130b:	83 fe 08             	cmp    $0x8,%esi
    130e:	0f 86 44 01 00 00    	jbe    1458 <createdelete+0x1f8>
        close(fd);
    1314:	83 ec 0c             	sub    $0xc,%esp
    1317:	50                   	push   %eax
    1318:	e8 5d 26 00 00       	call   397a <close>
    131d:	83 c4 10             	add    $0x10,%esp
    1320:	83 c3 01             	add    $0x1,%ebx
    for(pi = 0; pi < 4; pi++){
    1323:	80 fb 74             	cmp    $0x74,%bl
    1326:	75 b9                	jne    12e1 <createdelete+0x81>
    1328:	8b 75 c0             	mov    -0x40(%ebp),%esi
  for(i = 0; i < N; i++){
    132b:	83 fe 13             	cmp    $0x13,%esi
    132e:	75 90                	jne    12c0 <createdelete+0x60>
    1330:	be 70 00 00 00       	mov    $0x70,%esi
    1335:	8d 76 00             	lea    0x0(%esi),%esi
    1338:	8d 46 c0             	lea    -0x40(%esi),%eax
  name[0] = name[1] = name[2] = 0;
    133b:	bb 04 00 00 00       	mov    $0x4,%ebx
    1340:	88 45 c7             	mov    %al,-0x39(%ebp)
      name[0] = 'p' + i;
    1343:	89 f0                	mov    %esi,%eax
      unlink(name);
    1345:	83 ec 0c             	sub    $0xc,%esp
      name[0] = 'p' + i;
    1348:	88 45 c8             	mov    %al,-0x38(%ebp)
      name[1] = '0' + i;
    134b:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
      unlink(name);
    134f:	57                   	push   %edi
      name[1] = '0' + i;
    1350:	88 45 c9             	mov    %al,-0x37(%ebp)
      unlink(name);
    1353:	e8 4a 26 00 00       	call   39a2 <unlink>
    for(pi = 0; pi < 4; pi++){
    1358:	83 c4 10             	add    $0x10,%esp
    135b:	83 eb 01             	sub    $0x1,%ebx
    135e:	75 e3                	jne    1343 <createdelete+0xe3>
    1360:	83 c6 01             	add    $0x1,%esi
  for(i = 0; i < N; i++){
    1363:	89 f0                	mov    %esi,%eax
    1365:	3c 84                	cmp    $0x84,%al
    1367:	75 cf                	jne    1338 <createdelete+0xd8>
  printf(1, "createdelete ok\n");
    1369:	83 ec 08             	sub    $0x8,%esp
    136c:	68 c4 42 00 00       	push   $0x42c4
    1371:	6a 01                	push   $0x1
    1373:	e8 28 27 00 00       	call   3aa0 <printf>
}
    1378:	8d 65 f4             	lea    -0xc(%ebp),%esp
    137b:	5b                   	pop    %ebx
    137c:	5e                   	pop    %esi
    137d:	5f                   	pop    %edi
    137e:	5d                   	pop    %ebp
    137f:	c3                   	ret    
      } else if((i >= 1 && i < N/2) && fd >= 0){
    1380:	83 fe 08             	cmp    $0x8,%esi
    1383:	0f 86 c7 00 00 00    	jbe    1450 <createdelete+0x1f0>
      if(fd >= 0)
    1389:	85 c0                	test   %eax,%eax
    138b:	78 93                	js     1320 <createdelete+0xc0>
    138d:	eb 85                	jmp    1314 <createdelete+0xb4>
    138f:	90                   	nop
      name[0] = 'p' + pi;
    1390:	83 c3 70             	add    $0x70,%ebx
      name[2] = '\0';
    1393:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    1397:	8d 7d c8             	lea    -0x38(%ebp),%edi
      name[0] = 'p' + pi;
    139a:	88 5d c8             	mov    %bl,-0x38(%ebp)
      name[2] = '\0';
    139d:	31 db                	xor    %ebx,%ebx
    139f:	eb 0f                	jmp    13b0 <createdelete+0x150>
    13a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      for(i = 0; i < N; i++){
    13a8:	83 fb 13             	cmp    $0x13,%ebx
    13ab:	74 63                	je     1410 <createdelete+0x1b0>
    13ad:	83 c3 01             	add    $0x1,%ebx
        fd = open(name, O_CREATE | O_RDWR);
    13b0:	83 ec 08             	sub    $0x8,%esp
        name[1] = '0' + i;
    13b3:	8d 43 30             	lea    0x30(%ebx),%eax
        fd = open(name, O_CREATE | O_RDWR);
    13b6:	68 02 02 00 00       	push   $0x202
    13bb:	57                   	push   %edi
        name[1] = '0' + i;
    13bc:	88 45 c9             	mov    %al,-0x37(%ebp)
        fd = open(name, O_CREATE | O_RDWR);
    13bf:	e8 ce 25 00 00       	call   3992 <open>
        if(fd < 0){
    13c4:	83 c4 10             	add    $0x10,%esp
    13c7:	85 c0                	test   %eax,%eax
    13c9:	78 5f                	js     142a <createdelete+0x1ca>
        close(fd);
    13cb:	83 ec 0c             	sub    $0xc,%esp
    13ce:	50                   	push   %eax
    13cf:	e8 a6 25 00 00       	call   397a <close>
        if(i > 0 && (i % 2 ) == 0){
    13d4:	83 c4 10             	add    $0x10,%esp
    13d7:	85 db                	test   %ebx,%ebx
    13d9:	74 d2                	je     13ad <createdelete+0x14d>
    13db:	f6 c3 01             	test   $0x1,%bl
    13de:	75 c8                	jne    13a8 <createdelete+0x148>
          if(unlink(name) < 0){
    13e0:	83 ec 0c             	sub    $0xc,%esp
          name[1] = '0' + (i / 2);
    13e3:	89 d8                	mov    %ebx,%eax
    13e5:	d1 f8                	sar    %eax
          if(unlink(name) < 0){
    13e7:	57                   	push   %edi
          name[1] = '0' + (i / 2);
    13e8:	83 c0 30             	add    $0x30,%eax
    13eb:	88 45 c9             	mov    %al,-0x37(%ebp)
          if(unlink(name) < 0){
    13ee:	e8 af 25 00 00       	call   39a2 <unlink>
    13f3:	83 c4 10             	add    $0x10,%esp
    13f6:	85 c0                	test   %eax,%eax
    13f8:	79 ae                	jns    13a8 <createdelete+0x148>
            printf(1, "unlink failed\n");
    13fa:	52                   	push   %edx
    13fb:	52                   	push   %edx
    13fc:	68 b1 3e 00 00       	push   $0x3eb1
    1401:	6a 01                	push   $0x1
    1403:	e8 98 26 00 00       	call   3aa0 <printf>
            exit();
    1408:	e8 45 25 00 00       	call   3952 <exit>
    140d:	8d 76 00             	lea    0x0(%esi),%esi
      exit();
    1410:	e8 3d 25 00 00       	call   3952 <exit>
        printf(1, "oops createdelete %s didn't exist\n", name);
    1415:	83 ec 04             	sub    $0x4,%esp
    1418:	57                   	push   %edi
    1419:	68 70 4f 00 00       	push   $0x4f70
    141e:	6a 01                	push   $0x1
    1420:	e8 7b 26 00 00       	call   3aa0 <printf>
        exit();
    1425:	e8 28 25 00 00       	call   3952 <exit>
          printf(1, "create failed\n");
    142a:	51                   	push   %ecx
    142b:	51                   	push   %ecx
    142c:	68 00 45 00 00       	push   $0x4500
    1431:	6a 01                	push   $0x1
    1433:	e8 68 26 00 00       	call   3aa0 <printf>
          exit();
    1438:	e8 15 25 00 00       	call   3952 <exit>
      printf(1, "fork failed\n");
    143d:	53                   	push   %ebx
    143e:	53                   	push   %ebx
    143f:	68 3a 4d 00 00       	push   $0x4d3a
    1444:	6a 01                	push   $0x1
    1446:	e8 55 26 00 00       	call   3aa0 <printf>
      exit();
    144b:	e8 02 25 00 00       	call   3952 <exit>
      } else if((i >= 1 && i < N/2) && fd >= 0){
    1450:	85 c0                	test   %eax,%eax
    1452:	0f 88 c8 fe ff ff    	js     1320 <createdelete+0xc0>
        printf(1, "oops createdelete %s did exist\n", name);
    1458:	50                   	push   %eax
    1459:	57                   	push   %edi
    145a:	68 94 4f 00 00       	push   $0x4f94
    145f:	6a 01                	push   $0x1
    1461:	e8 3a 26 00 00       	call   3aa0 <printf>
        exit();
    1466:	e8 e7 24 00 00       	call   3952 <exit>
    146b:	90                   	nop
    146c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001470 <unlinkread>:
{
    1470:	55                   	push   %ebp
    1471:	89 e5                	mov    %esp,%ebp
    1473:	56                   	push   %esi
    1474:	53                   	push   %ebx
  printf(1, "unlinkread test\n");
    1475:	83 ec 08             	sub    $0x8,%esp
    1478:	68 d5 42 00 00       	push   $0x42d5
    147d:	6a 01                	push   $0x1
    147f:	e8 1c 26 00 00       	call   3aa0 <printf>
  fd = open("unlinkread", O_CREATE | O_RDWR);
    1484:	5b                   	pop    %ebx
    1485:	5e                   	pop    %esi
    1486:	68 02 02 00 00       	push   $0x202
    148b:	68 e6 42 00 00       	push   $0x42e6
    1490:	e8 fd 24 00 00       	call   3992 <open>
  if(fd < 0){
    1495:	83 c4 10             	add    $0x10,%esp
    1498:	85 c0                	test   %eax,%eax
    149a:	0f 88 e6 00 00 00    	js     1586 <unlinkread+0x116>
  write(fd, "hello", 5);
    14a0:	83 ec 04             	sub    $0x4,%esp
    14a3:	89 c3                	mov    %eax,%ebx
    14a5:	6a 05                	push   $0x5
    14a7:	68 0b 43 00 00       	push   $0x430b
    14ac:	50                   	push   %eax
    14ad:	e8 c0 24 00 00       	call   3972 <write>
  close(fd);
    14b2:	89 1c 24             	mov    %ebx,(%esp)
    14b5:	e8 c0 24 00 00       	call   397a <close>
  fd = open("unlinkread", O_RDWR);
    14ba:	58                   	pop    %eax
    14bb:	5a                   	pop    %edx
    14bc:	6a 02                	push   $0x2
    14be:	68 e6 42 00 00       	push   $0x42e6
    14c3:	e8 ca 24 00 00       	call   3992 <open>
  if(fd < 0){
    14c8:	83 c4 10             	add    $0x10,%esp
    14cb:	85 c0                	test   %eax,%eax
  fd = open("unlinkread", O_RDWR);
    14cd:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    14cf:	0f 88 10 01 00 00    	js     15e5 <unlinkread+0x175>
  if(unlink("unlinkread") != 0){
    14d5:	83 ec 0c             	sub    $0xc,%esp
    14d8:	68 e6 42 00 00       	push   $0x42e6
    14dd:	e8 c0 24 00 00       	call   39a2 <unlink>
    14e2:	83 c4 10             	add    $0x10,%esp
    14e5:	85 c0                	test   %eax,%eax
    14e7:	0f 85 e5 00 00 00    	jne    15d2 <unlinkread+0x162>
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    14ed:	83 ec 08             	sub    $0x8,%esp
    14f0:	68 02 02 00 00       	push   $0x202
    14f5:	68 e6 42 00 00       	push   $0x42e6
    14fa:	e8 93 24 00 00       	call   3992 <open>
  write(fd1, "yyy", 3);
    14ff:	83 c4 0c             	add    $0xc,%esp
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    1502:	89 c6                	mov    %eax,%esi
  write(fd1, "yyy", 3);
    1504:	6a 03                	push   $0x3
    1506:	68 43 43 00 00       	push   $0x4343
    150b:	50                   	push   %eax
    150c:	e8 61 24 00 00       	call   3972 <write>
  close(fd1);
    1511:	89 34 24             	mov    %esi,(%esp)
    1514:	e8 61 24 00 00       	call   397a <close>
  if(read(fd, buf, sizeof(buf)) != 5){
    1519:	83 c4 0c             	add    $0xc,%esp
    151c:	68 00 20 00 00       	push   $0x2000
    1521:	68 80 86 00 00       	push   $0x8680
    1526:	53                   	push   %ebx
    1527:	e8 3e 24 00 00       	call   396a <read>
    152c:	83 c4 10             	add    $0x10,%esp
    152f:	83 f8 05             	cmp    $0x5,%eax
    1532:	0f 85 87 00 00 00    	jne    15bf <unlinkread+0x14f>
  if(buf[0] != 'h'){
    1538:	80 3d 80 86 00 00 68 	cmpb   $0x68,0x8680
    153f:	75 6b                	jne    15ac <unlinkread+0x13c>
  if(write(fd, buf, 10) != 10){
    1541:	83 ec 04             	sub    $0x4,%esp
    1544:	6a 0a                	push   $0xa
    1546:	68 80 86 00 00       	push   $0x8680
    154b:	53                   	push   %ebx
    154c:	e8 21 24 00 00       	call   3972 <write>
    1551:	83 c4 10             	add    $0x10,%esp
    1554:	83 f8 0a             	cmp    $0xa,%eax
    1557:	75 40                	jne    1599 <unlinkread+0x129>
  close(fd);
    1559:	83 ec 0c             	sub    $0xc,%esp
    155c:	53                   	push   %ebx
    155d:	e8 18 24 00 00       	call   397a <close>
  unlink("unlinkread");
    1562:	c7 04 24 e6 42 00 00 	movl   $0x42e6,(%esp)
    1569:	e8 34 24 00 00       	call   39a2 <unlink>
  printf(1, "unlinkread ok\n");
    156e:	58                   	pop    %eax
    156f:	5a                   	pop    %edx
    1570:	68 8e 43 00 00       	push   $0x438e
    1575:	6a 01                	push   $0x1
    1577:	e8 24 25 00 00       	call   3aa0 <printf>
}
    157c:	83 c4 10             	add    $0x10,%esp
    157f:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1582:	5b                   	pop    %ebx
    1583:	5e                   	pop    %esi
    1584:	5d                   	pop    %ebp
    1585:	c3                   	ret    
    printf(1, "create unlinkread failed\n");
    1586:	51                   	push   %ecx
    1587:	51                   	push   %ecx
    1588:	68 f1 42 00 00       	push   $0x42f1
    158d:	6a 01                	push   $0x1
    158f:	e8 0c 25 00 00       	call   3aa0 <printf>
    exit();
    1594:	e8 b9 23 00 00       	call   3952 <exit>
    printf(1, "unlinkread write failed\n");
    1599:	51                   	push   %ecx
    159a:	51                   	push   %ecx
    159b:	68 75 43 00 00       	push   $0x4375
    15a0:	6a 01                	push   $0x1
    15a2:	e8 f9 24 00 00       	call   3aa0 <printf>
    exit();
    15a7:	e8 a6 23 00 00       	call   3952 <exit>
    printf(1, "unlinkread wrong data\n");
    15ac:	53                   	push   %ebx
    15ad:	53                   	push   %ebx
    15ae:	68 5e 43 00 00       	push   $0x435e
    15b3:	6a 01                	push   $0x1
    15b5:	e8 e6 24 00 00       	call   3aa0 <printf>
    exit();
    15ba:	e8 93 23 00 00       	call   3952 <exit>
    printf(1, "unlinkread read failed");
    15bf:	56                   	push   %esi
    15c0:	56                   	push   %esi
    15c1:	68 47 43 00 00       	push   $0x4347
    15c6:	6a 01                	push   $0x1
    15c8:	e8 d3 24 00 00       	call   3aa0 <printf>
    exit();
    15cd:	e8 80 23 00 00       	call   3952 <exit>
    printf(1, "unlink unlinkread failed\n");
    15d2:	50                   	push   %eax
    15d3:	50                   	push   %eax
    15d4:	68 29 43 00 00       	push   $0x4329
    15d9:	6a 01                	push   $0x1
    15db:	e8 c0 24 00 00       	call   3aa0 <printf>
    exit();
    15e0:	e8 6d 23 00 00       	call   3952 <exit>
    printf(1, "open unlinkread failed\n");
    15e5:	50                   	push   %eax
    15e6:	50                   	push   %eax
    15e7:	68 11 43 00 00       	push   $0x4311
    15ec:	6a 01                	push   $0x1
    15ee:	e8 ad 24 00 00       	call   3aa0 <printf>
    exit();
    15f3:	e8 5a 23 00 00       	call   3952 <exit>
    15f8:	90                   	nop
    15f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001600 <linktest>:
{
    1600:	55                   	push   %ebp
    1601:	89 e5                	mov    %esp,%ebp
    1603:	53                   	push   %ebx
    1604:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "linktest\n");
    1607:	68 9d 43 00 00       	push   $0x439d
    160c:	6a 01                	push   $0x1
    160e:	e8 8d 24 00 00       	call   3aa0 <printf>
  unlink("lf1");
    1613:	c7 04 24 a7 43 00 00 	movl   $0x43a7,(%esp)
    161a:	e8 83 23 00 00       	call   39a2 <unlink>
  unlink("lf2");
    161f:	c7 04 24 ab 43 00 00 	movl   $0x43ab,(%esp)
    1626:	e8 77 23 00 00       	call   39a2 <unlink>
  fd = open("lf1", O_CREATE|O_RDWR);
    162b:	58                   	pop    %eax
    162c:	5a                   	pop    %edx
    162d:	68 02 02 00 00       	push   $0x202
    1632:	68 a7 43 00 00       	push   $0x43a7
    1637:	e8 56 23 00 00       	call   3992 <open>
  if(fd < 0){
    163c:	83 c4 10             	add    $0x10,%esp
    163f:	85 c0                	test   %eax,%eax
    1641:	0f 88 1e 01 00 00    	js     1765 <linktest+0x165>
  if(write(fd, "hello", 5) != 5){
    1647:	83 ec 04             	sub    $0x4,%esp
    164a:	89 c3                	mov    %eax,%ebx
    164c:	6a 05                	push   $0x5
    164e:	68 0b 43 00 00       	push   $0x430b
    1653:	50                   	push   %eax
    1654:	e8 19 23 00 00       	call   3972 <write>
    1659:	83 c4 10             	add    $0x10,%esp
    165c:	83 f8 05             	cmp    $0x5,%eax
    165f:	0f 85 98 01 00 00    	jne    17fd <linktest+0x1fd>
  close(fd);
    1665:	83 ec 0c             	sub    $0xc,%esp
    1668:	53                   	push   %ebx
    1669:	e8 0c 23 00 00       	call   397a <close>
  if(link("lf1", "lf2") < 0){
    166e:	5b                   	pop    %ebx
    166f:	58                   	pop    %eax
    1670:	68 ab 43 00 00       	push   $0x43ab
    1675:	68 a7 43 00 00       	push   $0x43a7
    167a:	e8 33 23 00 00       	call   39b2 <link>
    167f:	83 c4 10             	add    $0x10,%esp
    1682:	85 c0                	test   %eax,%eax
    1684:	0f 88 60 01 00 00    	js     17ea <linktest+0x1ea>
  unlink("lf1");
    168a:	83 ec 0c             	sub    $0xc,%esp
    168d:	68 a7 43 00 00       	push   $0x43a7
    1692:	e8 0b 23 00 00       	call   39a2 <unlink>
  if(open("lf1", 0) >= 0){
    1697:	58                   	pop    %eax
    1698:	5a                   	pop    %edx
    1699:	6a 00                	push   $0x0
    169b:	68 a7 43 00 00       	push   $0x43a7
    16a0:	e8 ed 22 00 00       	call   3992 <open>
    16a5:	83 c4 10             	add    $0x10,%esp
    16a8:	85 c0                	test   %eax,%eax
    16aa:	0f 89 27 01 00 00    	jns    17d7 <linktest+0x1d7>
  fd = open("lf2", 0);
    16b0:	83 ec 08             	sub    $0x8,%esp
    16b3:	6a 00                	push   $0x0
    16b5:	68 ab 43 00 00       	push   $0x43ab
    16ba:	e8 d3 22 00 00       	call   3992 <open>
  if(fd < 0){
    16bf:	83 c4 10             	add    $0x10,%esp
    16c2:	85 c0                	test   %eax,%eax
  fd = open("lf2", 0);
    16c4:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    16c6:	0f 88 f8 00 00 00    	js     17c4 <linktest+0x1c4>
  if(read(fd, buf, sizeof(buf)) != 5){
    16cc:	83 ec 04             	sub    $0x4,%esp
    16cf:	68 00 20 00 00       	push   $0x2000
    16d4:	68 80 86 00 00       	push   $0x8680
    16d9:	50                   	push   %eax
    16da:	e8 8b 22 00 00       	call   396a <read>
    16df:	83 c4 10             	add    $0x10,%esp
    16e2:	83 f8 05             	cmp    $0x5,%eax
    16e5:	0f 85 c6 00 00 00    	jne    17b1 <linktest+0x1b1>
  close(fd);
    16eb:	83 ec 0c             	sub    $0xc,%esp
    16ee:	53                   	push   %ebx
    16ef:	e8 86 22 00 00       	call   397a <close>
  if(link("lf2", "lf2") >= 0){
    16f4:	58                   	pop    %eax
    16f5:	5a                   	pop    %edx
    16f6:	68 ab 43 00 00       	push   $0x43ab
    16fb:	68 ab 43 00 00       	push   $0x43ab
    1700:	e8 ad 22 00 00       	call   39b2 <link>
    1705:	83 c4 10             	add    $0x10,%esp
    1708:	85 c0                	test   %eax,%eax
    170a:	0f 89 8e 00 00 00    	jns    179e <linktest+0x19e>
  unlink("lf2");
    1710:	83 ec 0c             	sub    $0xc,%esp
    1713:	68 ab 43 00 00       	push   $0x43ab
    1718:	e8 85 22 00 00       	call   39a2 <unlink>
  if(link("lf2", "lf1") >= 0){
    171d:	59                   	pop    %ecx
    171e:	5b                   	pop    %ebx
    171f:	68 a7 43 00 00       	push   $0x43a7
    1724:	68 ab 43 00 00       	push   $0x43ab
    1729:	e8 84 22 00 00       	call   39b2 <link>
    172e:	83 c4 10             	add    $0x10,%esp
    1731:	85 c0                	test   %eax,%eax
    1733:	79 56                	jns    178b <linktest+0x18b>
  if(link(".", "lf1") >= 0){
    1735:	83 ec 08             	sub    $0x8,%esp
    1738:	68 a7 43 00 00       	push   $0x43a7
    173d:	68 6f 46 00 00       	push   $0x466f
    1742:	e8 6b 22 00 00       	call   39b2 <link>
    1747:	83 c4 10             	add    $0x10,%esp
    174a:	85 c0                	test   %eax,%eax
    174c:	79 2a                	jns    1778 <linktest+0x178>
  printf(1, "linktest ok\n");
    174e:	83 ec 08             	sub    $0x8,%esp
    1751:	68 45 44 00 00       	push   $0x4445
    1756:	6a 01                	push   $0x1
    1758:	e8 43 23 00 00       	call   3aa0 <printf>
}
    175d:	83 c4 10             	add    $0x10,%esp
    1760:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1763:	c9                   	leave  
    1764:	c3                   	ret    
    printf(1, "create lf1 failed\n");
    1765:	50                   	push   %eax
    1766:	50                   	push   %eax
    1767:	68 af 43 00 00       	push   $0x43af
    176c:	6a 01                	push   $0x1
    176e:	e8 2d 23 00 00       	call   3aa0 <printf>
    exit();
    1773:	e8 da 21 00 00       	call   3952 <exit>
    printf(1, "link . lf1 succeeded! oops\n");
    1778:	50                   	push   %eax
    1779:	50                   	push   %eax
    177a:	68 29 44 00 00       	push   $0x4429
    177f:	6a 01                	push   $0x1
    1781:	e8 1a 23 00 00       	call   3aa0 <printf>
    exit();
    1786:	e8 c7 21 00 00       	call   3952 <exit>
    printf(1, "link non-existant succeeded! oops\n");
    178b:	52                   	push   %edx
    178c:	52                   	push   %edx
    178d:	68 dc 4f 00 00       	push   $0x4fdc
    1792:	6a 01                	push   $0x1
    1794:	e8 07 23 00 00       	call   3aa0 <printf>
    exit();
    1799:	e8 b4 21 00 00       	call   3952 <exit>
    printf(1, "link lf2 lf2 succeeded! oops\n");
    179e:	50                   	push   %eax
    179f:	50                   	push   %eax
    17a0:	68 0b 44 00 00       	push   $0x440b
    17a5:	6a 01                	push   $0x1
    17a7:	e8 f4 22 00 00       	call   3aa0 <printf>
    exit();
    17ac:	e8 a1 21 00 00       	call   3952 <exit>
    printf(1, "read lf2 failed\n");
    17b1:	51                   	push   %ecx
    17b2:	51                   	push   %ecx
    17b3:	68 fa 43 00 00       	push   $0x43fa
    17b8:	6a 01                	push   $0x1
    17ba:	e8 e1 22 00 00       	call   3aa0 <printf>
    exit();
    17bf:	e8 8e 21 00 00       	call   3952 <exit>
    printf(1, "open lf2 failed\n");
    17c4:	53                   	push   %ebx
    17c5:	53                   	push   %ebx
    17c6:	68 e9 43 00 00       	push   $0x43e9
    17cb:	6a 01                	push   $0x1
    17cd:	e8 ce 22 00 00       	call   3aa0 <printf>
    exit();
    17d2:	e8 7b 21 00 00       	call   3952 <exit>
    printf(1, "unlinked lf1 but it is still there!\n");
    17d7:	50                   	push   %eax
    17d8:	50                   	push   %eax
    17d9:	68 b4 4f 00 00       	push   $0x4fb4
    17de:	6a 01                	push   $0x1
    17e0:	e8 bb 22 00 00       	call   3aa0 <printf>
    exit();
    17e5:	e8 68 21 00 00       	call   3952 <exit>
    printf(1, "link lf1 lf2 failed\n");
    17ea:	51                   	push   %ecx
    17eb:	51                   	push   %ecx
    17ec:	68 d4 43 00 00       	push   $0x43d4
    17f1:	6a 01                	push   $0x1
    17f3:	e8 a8 22 00 00       	call   3aa0 <printf>
    exit();
    17f8:	e8 55 21 00 00       	call   3952 <exit>
    printf(1, "write lf1 failed\n");
    17fd:	50                   	push   %eax
    17fe:	50                   	push   %eax
    17ff:	68 c2 43 00 00       	push   $0x43c2
    1804:	6a 01                	push   $0x1
    1806:	e8 95 22 00 00       	call   3aa0 <printf>
    exit();
    180b:	e8 42 21 00 00       	call   3952 <exit>

00001810 <concreate>:
{
    1810:	55                   	push   %ebp
    1811:	89 e5                	mov    %esp,%ebp
    1813:	57                   	push   %edi
    1814:	56                   	push   %esi
    1815:	53                   	push   %ebx
  for(i = 0; i < 40; i++){
    1816:	31 f6                	xor    %esi,%esi
    1818:	8d 5d ad             	lea    -0x53(%ebp),%ebx
    if(pid && (i % 3) == 1){
    181b:	bf ab aa aa aa       	mov    $0xaaaaaaab,%edi
{
    1820:	83 ec 64             	sub    $0x64,%esp
  printf(1, "concreate test\n");
    1823:	68 52 44 00 00       	push   $0x4452
    1828:	6a 01                	push   $0x1
    182a:	e8 71 22 00 00       	call   3aa0 <printf>
  file[0] = 'C';
    182f:	c6 45 ad 43          	movb   $0x43,-0x53(%ebp)
  file[2] = '\0';
    1833:	c6 45 af 00          	movb   $0x0,-0x51(%ebp)
    1837:	83 c4 10             	add    $0x10,%esp
    183a:	eb 4c                	jmp    1888 <concreate+0x78>
    183c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid && (i % 3) == 1){
    1840:	89 f0                	mov    %esi,%eax
    1842:	89 f1                	mov    %esi,%ecx
    1844:	f7 e7                	mul    %edi
    1846:	d1 ea                	shr    %edx
    1848:	8d 04 52             	lea    (%edx,%edx,2),%eax
    184b:	29 c1                	sub    %eax,%ecx
    184d:	83 f9 01             	cmp    $0x1,%ecx
    1850:	0f 84 ba 00 00 00    	je     1910 <concreate+0x100>
      fd = open(file, O_CREATE | O_RDWR);
    1856:	83 ec 08             	sub    $0x8,%esp
    1859:	68 02 02 00 00       	push   $0x202
    185e:	53                   	push   %ebx
    185f:	e8 2e 21 00 00       	call   3992 <open>
      if(fd < 0){
    1864:	83 c4 10             	add    $0x10,%esp
    1867:	85 c0                	test   %eax,%eax
    1869:	78 6e                	js     18d9 <concreate+0xc9>
      close(fd);
    186b:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 40; i++){
    186e:	83 c6 01             	add    $0x1,%esi
      close(fd);
    1871:	50                   	push   %eax
    1872:	e8 03 21 00 00       	call   397a <close>
    1877:	83 c4 10             	add    $0x10,%esp
      wait();
    187a:	e8 db 20 00 00       	call   395a <wait>
  for(i = 0; i < 40; i++){
    187f:	83 fe 28             	cmp    $0x28,%esi
    1882:	0f 84 aa 00 00 00    	je     1932 <concreate+0x122>
    unlink(file);
    1888:	83 ec 0c             	sub    $0xc,%esp
    file[1] = '0' + i;
    188b:	8d 46 30             	lea    0x30(%esi),%eax
    unlink(file);
    188e:	53                   	push   %ebx
    file[1] = '0' + i;
    188f:	88 45 ae             	mov    %al,-0x52(%ebp)
    unlink(file);
    1892:	e8 0b 21 00 00       	call   39a2 <unlink>
    pid = fork(0);
    1897:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    189e:	e8 a7 20 00 00       	call   394a <fork>
    if(pid && (i % 3) == 1){
    18a3:	83 c4 10             	add    $0x10,%esp
    18a6:	85 c0                	test   %eax,%eax
    18a8:	75 96                	jne    1840 <concreate+0x30>
    } else if(pid == 0 && (i % 5) == 1){
    18aa:	89 f0                	mov    %esi,%eax
    18ac:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
    18b1:	f7 e2                	mul    %edx
    18b3:	c1 ea 02             	shr    $0x2,%edx
    18b6:	8d 04 92             	lea    (%edx,%edx,4),%eax
    18b9:	29 c6                	sub    %eax,%esi
    18bb:	83 fe 01             	cmp    $0x1,%esi
    18be:	74 30                	je     18f0 <concreate+0xe0>
      fd = open(file, O_CREATE | O_RDWR);
    18c0:	83 ec 08             	sub    $0x8,%esp
    18c3:	68 02 02 00 00       	push   $0x202
    18c8:	53                   	push   %ebx
    18c9:	e8 c4 20 00 00       	call   3992 <open>
      if(fd < 0){
    18ce:	83 c4 10             	add    $0x10,%esp
    18d1:	85 c0                	test   %eax,%eax
    18d3:	0f 89 31 02 00 00    	jns    1b0a <concreate+0x2fa>
        printf(1, "concreate create %s failed\n", file);
    18d9:	83 ec 04             	sub    $0x4,%esp
    18dc:	53                   	push   %ebx
    18dd:	68 65 44 00 00       	push   $0x4465
    18e2:	6a 01                	push   $0x1
    18e4:	e8 b7 21 00 00       	call   3aa0 <printf>
        exit();
    18e9:	e8 64 20 00 00       	call   3952 <exit>
    18ee:	66 90                	xchg   %ax,%ax
      link("C0", file);
    18f0:	83 ec 08             	sub    $0x8,%esp
    18f3:	53                   	push   %ebx
    18f4:	68 62 44 00 00       	push   $0x4462
    18f9:	e8 b4 20 00 00       	call   39b2 <link>
    18fe:	83 c4 10             	add    $0x10,%esp
      exit();
    1901:	e8 4c 20 00 00       	call   3952 <exit>
    1906:	8d 76 00             	lea    0x0(%esi),%esi
    1909:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      link("C0", file);
    1910:	83 ec 08             	sub    $0x8,%esp
  for(i = 0; i < 40; i++){
    1913:	83 c6 01             	add    $0x1,%esi
      link("C0", file);
    1916:	53                   	push   %ebx
    1917:	68 62 44 00 00       	push   $0x4462
    191c:	e8 91 20 00 00       	call   39b2 <link>
    1921:	83 c4 10             	add    $0x10,%esp
      wait();
    1924:	e8 31 20 00 00       	call   395a <wait>
  for(i = 0; i < 40; i++){
    1929:	83 fe 28             	cmp    $0x28,%esi
    192c:	0f 85 56 ff ff ff    	jne    1888 <concreate+0x78>
  memset(fa, 0, sizeof(fa));
    1932:	8d 45 c0             	lea    -0x40(%ebp),%eax
    1935:	83 ec 04             	sub    $0x4,%esp
    1938:	6a 28                	push   $0x28
    193a:	6a 00                	push   $0x0
    193c:	50                   	push   %eax
    193d:	e8 6e 1e 00 00       	call   37b0 <memset>
  fd = open(".", 0);
    1942:	5f                   	pop    %edi
    1943:	58                   	pop    %eax
    1944:	6a 00                	push   $0x0
    1946:	68 6f 46 00 00       	push   $0x466f
    194b:	8d 7d b0             	lea    -0x50(%ebp),%edi
    194e:	e8 3f 20 00 00       	call   3992 <open>
  while(read(fd, &de, sizeof(de)) > 0){
    1953:	83 c4 10             	add    $0x10,%esp
  fd = open(".", 0);
    1956:	89 c6                	mov    %eax,%esi
  n = 0;
    1958:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
    195f:	90                   	nop
  while(read(fd, &de, sizeof(de)) > 0){
    1960:	83 ec 04             	sub    $0x4,%esp
    1963:	6a 10                	push   $0x10
    1965:	57                   	push   %edi
    1966:	56                   	push   %esi
    1967:	e8 fe 1f 00 00       	call   396a <read>
    196c:	83 c4 10             	add    $0x10,%esp
    196f:	85 c0                	test   %eax,%eax
    1971:	7e 3d                	jle    19b0 <concreate+0x1a0>
    if(de.inum == 0)
    1973:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
    1978:	74 e6                	je     1960 <concreate+0x150>
    if(de.name[0] == 'C' && de.name[2] == '\0'){
    197a:	80 7d b2 43          	cmpb   $0x43,-0x4e(%ebp)
    197e:	75 e0                	jne    1960 <concreate+0x150>
    1980:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
    1984:	75 da                	jne    1960 <concreate+0x150>
      i = de.name[1] - '0';
    1986:	0f be 45 b3          	movsbl -0x4d(%ebp),%eax
    198a:	83 e8 30             	sub    $0x30,%eax
      if(i < 0 || i >= sizeof(fa)){
    198d:	83 f8 27             	cmp    $0x27,%eax
    1990:	0f 87 5e 01 00 00    	ja     1af4 <concreate+0x2e4>
      if(fa[i]){
    1996:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    199b:	0f 85 3d 01 00 00    	jne    1ade <concreate+0x2ce>
      fa[i] = 1;
    19a1:	c6 44 05 c0 01       	movb   $0x1,-0x40(%ebp,%eax,1)
      n++;
    19a6:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
    19aa:	eb b4                	jmp    1960 <concreate+0x150>
    19ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  close(fd);
    19b0:	83 ec 0c             	sub    $0xc,%esp
    19b3:	56                   	push   %esi
    19b4:	e8 c1 1f 00 00       	call   397a <close>
  if(n != 40){
    19b9:	83 c4 10             	add    $0x10,%esp
    19bc:	83 7d a4 28          	cmpl   $0x28,-0x5c(%ebp)
    19c0:	0f 85 05 01 00 00    	jne    1acb <concreate+0x2bb>
  for(i = 0; i < 40; i++){
    19c6:	31 f6                	xor    %esi,%esi
    19c8:	eb 4c                	jmp    1a16 <concreate+0x206>
    19ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
       ((i % 3) == 1 && pid != 0)){
    19d0:	85 ff                	test   %edi,%edi
    19d2:	74 05                	je     19d9 <concreate+0x1c9>
    19d4:	83 fa 01             	cmp    $0x1,%edx
    19d7:	74 70                	je     1a49 <concreate+0x239>
      unlink(file);
    19d9:	83 ec 0c             	sub    $0xc,%esp
    19dc:	53                   	push   %ebx
    19dd:	e8 c0 1f 00 00       	call   39a2 <unlink>
      unlink(file);
    19e2:	89 1c 24             	mov    %ebx,(%esp)
    19e5:	e8 b8 1f 00 00       	call   39a2 <unlink>
      unlink(file);
    19ea:	89 1c 24             	mov    %ebx,(%esp)
    19ed:	e8 b0 1f 00 00       	call   39a2 <unlink>
      unlink(file);
    19f2:	89 1c 24             	mov    %ebx,(%esp)
    19f5:	e8 a8 1f 00 00       	call   39a2 <unlink>
    19fa:	83 c4 10             	add    $0x10,%esp
    if(pid == 0)
    19fd:	85 ff                	test   %edi,%edi
    19ff:	0f 84 fc fe ff ff    	je     1901 <concreate+0xf1>
  for(i = 0; i < 40; i++){
    1a05:	83 c6 01             	add    $0x1,%esi
      wait();
    1a08:	e8 4d 1f 00 00       	call   395a <wait>
  for(i = 0; i < 40; i++){
    1a0d:	83 fe 28             	cmp    $0x28,%esi
    1a10:	0f 84 8a 00 00 00    	je     1aa0 <concreate+0x290>
    pid = fork(0);
    1a16:	83 ec 0c             	sub    $0xc,%esp
    file[1] = '0' + i;
    1a19:	8d 46 30             	lea    0x30(%esi),%eax
    pid = fork(0);
    1a1c:	6a 00                	push   $0x0
    file[1] = '0' + i;
    1a1e:	88 45 ae             	mov    %al,-0x52(%ebp)
    pid = fork(0);
    1a21:	e8 24 1f 00 00       	call   394a <fork>
    if(pid < 0){
    1a26:	83 c4 10             	add    $0x10,%esp
    1a29:	85 c0                	test   %eax,%eax
    pid = fork(0);
    1a2b:	89 c7                	mov    %eax,%edi
    if(pid < 0){
    1a2d:	0f 88 84 00 00 00    	js     1ab7 <concreate+0x2a7>
    if(((i % 3) == 0 && pid == 0) ||
    1a33:	b8 ab aa aa aa       	mov    $0xaaaaaaab,%eax
    1a38:	f7 e6                	mul    %esi
    1a3a:	d1 ea                	shr    %edx
    1a3c:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1a3f:	89 f2                	mov    %esi,%edx
    1a41:	29 c2                	sub    %eax,%edx
    1a43:	89 d0                	mov    %edx,%eax
    1a45:	09 f8                	or     %edi,%eax
    1a47:	75 87                	jne    19d0 <concreate+0x1c0>
      close(open(file, 0));
    1a49:	83 ec 08             	sub    $0x8,%esp
    1a4c:	6a 00                	push   $0x0
    1a4e:	53                   	push   %ebx
    1a4f:	e8 3e 1f 00 00       	call   3992 <open>
    1a54:	89 04 24             	mov    %eax,(%esp)
    1a57:	e8 1e 1f 00 00       	call   397a <close>
      close(open(file, 0));
    1a5c:	58                   	pop    %eax
    1a5d:	5a                   	pop    %edx
    1a5e:	6a 00                	push   $0x0
    1a60:	53                   	push   %ebx
    1a61:	e8 2c 1f 00 00       	call   3992 <open>
    1a66:	89 04 24             	mov    %eax,(%esp)
    1a69:	e8 0c 1f 00 00       	call   397a <close>
      close(open(file, 0));
    1a6e:	59                   	pop    %ecx
    1a6f:	58                   	pop    %eax
    1a70:	6a 00                	push   $0x0
    1a72:	53                   	push   %ebx
    1a73:	e8 1a 1f 00 00       	call   3992 <open>
    1a78:	89 04 24             	mov    %eax,(%esp)
    1a7b:	e8 fa 1e 00 00       	call   397a <close>
      close(open(file, 0));
    1a80:	58                   	pop    %eax
    1a81:	5a                   	pop    %edx
    1a82:	6a 00                	push   $0x0
    1a84:	53                   	push   %ebx
    1a85:	e8 08 1f 00 00       	call   3992 <open>
    1a8a:	89 04 24             	mov    %eax,(%esp)
    1a8d:	e8 e8 1e 00 00       	call   397a <close>
    1a92:	83 c4 10             	add    $0x10,%esp
    1a95:	e9 63 ff ff ff       	jmp    19fd <concreate+0x1ed>
    1a9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  printf(1, "concreate ok\n");
    1aa0:	83 ec 08             	sub    $0x8,%esp
    1aa3:	68 b7 44 00 00       	push   $0x44b7
    1aa8:	6a 01                	push   $0x1
    1aaa:	e8 f1 1f 00 00       	call   3aa0 <printf>
}
    1aaf:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1ab2:	5b                   	pop    %ebx
    1ab3:	5e                   	pop    %esi
    1ab4:	5f                   	pop    %edi
    1ab5:	5d                   	pop    %ebp
    1ab6:	c3                   	ret    
      printf(1, "fork failed\n");
    1ab7:	83 ec 08             	sub    $0x8,%esp
    1aba:	68 3a 4d 00 00       	push   $0x4d3a
    1abf:	6a 01                	push   $0x1
    1ac1:	e8 da 1f 00 00       	call   3aa0 <printf>
      exit();
    1ac6:	e8 87 1e 00 00       	call   3952 <exit>
    printf(1, "concreate not enough files in directory listing\n");
    1acb:	51                   	push   %ecx
    1acc:	51                   	push   %ecx
    1acd:	68 00 50 00 00       	push   $0x5000
    1ad2:	6a 01                	push   $0x1
    1ad4:	e8 c7 1f 00 00       	call   3aa0 <printf>
    exit();
    1ad9:	e8 74 1e 00 00       	call   3952 <exit>
        printf(1, "concreate duplicate file %s\n", de.name);
    1ade:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1ae1:	53                   	push   %ebx
    1ae2:	50                   	push   %eax
    1ae3:	68 9a 44 00 00       	push   $0x449a
    1ae8:	6a 01                	push   $0x1
    1aea:	e8 b1 1f 00 00       	call   3aa0 <printf>
        exit();
    1aef:	e8 5e 1e 00 00       	call   3952 <exit>
        printf(1, "concreate weird file %s\n", de.name);
    1af4:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1af7:	56                   	push   %esi
    1af8:	50                   	push   %eax
    1af9:	68 81 44 00 00       	push   $0x4481
    1afe:	6a 01                	push   $0x1
    1b00:	e8 9b 1f 00 00       	call   3aa0 <printf>
        exit();
    1b05:	e8 48 1e 00 00       	call   3952 <exit>
      close(fd);
    1b0a:	83 ec 0c             	sub    $0xc,%esp
    1b0d:	50                   	push   %eax
    1b0e:	e8 67 1e 00 00       	call   397a <close>
    1b13:	83 c4 10             	add    $0x10,%esp
    1b16:	e9 e6 fd ff ff       	jmp    1901 <concreate+0xf1>
    1b1b:	90                   	nop
    1b1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001b20 <linkunlink>:
{
    1b20:	55                   	push   %ebp
    1b21:	89 e5                	mov    %esp,%ebp
    1b23:	57                   	push   %edi
    1b24:	56                   	push   %esi
    1b25:	53                   	push   %ebx
    1b26:	83 ec 24             	sub    $0x24,%esp
  printf(1, "linkunlink test\n");
    1b29:	68 c5 44 00 00       	push   $0x44c5
    1b2e:	6a 01                	push   $0x1
    1b30:	e8 6b 1f 00 00       	call   3aa0 <printf>
  unlink("x");
    1b35:	c7 04 24 52 47 00 00 	movl   $0x4752,(%esp)
    1b3c:	e8 61 1e 00 00       	call   39a2 <unlink>
  pid = fork(0);
    1b41:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1b48:	e8 fd 1d 00 00       	call   394a <fork>
  if(pid < 0){
    1b4d:	83 c4 10             	add    $0x10,%esp
    1b50:	85 c0                	test   %eax,%eax
  pid = fork(0);
    1b52:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(pid < 0){
    1b55:	0f 88 b7 00 00 00    	js     1c12 <linkunlink+0xf2>
  unsigned int x = (pid ? 1 : 97);
    1b5b:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    1b5f:	bb 64 00 00 00       	mov    $0x64,%ebx
    if((x % 3) == 0){
    1b64:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
  unsigned int x = (pid ? 1 : 97);
    1b69:	19 ff                	sbb    %edi,%edi
    1b6b:	83 e7 60             	and    $0x60,%edi
    1b6e:	83 c7 01             	add    $0x1,%edi
    1b71:	eb 1f                	jmp    1b92 <linkunlink+0x72>
    1b73:	90                   	nop
    1b74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if((x % 3) == 1){
    1b78:	83 fa 01             	cmp    $0x1,%edx
    1b7b:	74 7b                	je     1bf8 <linkunlink+0xd8>
      unlink("x");
    1b7d:	83 ec 0c             	sub    $0xc,%esp
    1b80:	68 52 47 00 00       	push   $0x4752
    1b85:	e8 18 1e 00 00       	call   39a2 <unlink>
    1b8a:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    1b8d:	83 eb 01             	sub    $0x1,%ebx
    1b90:	74 3d                	je     1bcf <linkunlink+0xaf>
    x = x * 1103515245 + 12345;
    1b92:	69 cf 6d 4e c6 41    	imul   $0x41c64e6d,%edi,%ecx
    1b98:	8d b9 39 30 00 00    	lea    0x3039(%ecx),%edi
    if((x % 3) == 0){
    1b9e:	89 f8                	mov    %edi,%eax
    1ba0:	f7 e6                	mul    %esi
    1ba2:	d1 ea                	shr    %edx
    1ba4:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1ba7:	89 fa                	mov    %edi,%edx
    1ba9:	29 c2                	sub    %eax,%edx
    1bab:	75 cb                	jne    1b78 <linkunlink+0x58>
      close(open("x", O_RDWR | O_CREATE));
    1bad:	83 ec 08             	sub    $0x8,%esp
    1bb0:	68 02 02 00 00       	push   $0x202
    1bb5:	68 52 47 00 00       	push   $0x4752
    1bba:	e8 d3 1d 00 00       	call   3992 <open>
    1bbf:	89 04 24             	mov    %eax,(%esp)
    1bc2:	e8 b3 1d 00 00       	call   397a <close>
    1bc7:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    1bca:	83 eb 01             	sub    $0x1,%ebx
    1bcd:	75 c3                	jne    1b92 <linkunlink+0x72>
  if(pid)
    1bcf:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    1bd2:	85 c0                	test   %eax,%eax
    1bd4:	74 4f                	je     1c25 <linkunlink+0x105>
    wait();
    1bd6:	e8 7f 1d 00 00       	call   395a <wait>
  printf(1, "linkunlink ok\n");
    1bdb:	83 ec 08             	sub    $0x8,%esp
    1bde:	68 da 44 00 00       	push   $0x44da
    1be3:	6a 01                	push   $0x1
    1be5:	e8 b6 1e 00 00       	call   3aa0 <printf>
}
    1bea:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1bed:	5b                   	pop    %ebx
    1bee:	5e                   	pop    %esi
    1bef:	5f                   	pop    %edi
    1bf0:	5d                   	pop    %ebp
    1bf1:	c3                   	ret    
    1bf2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      link("cat", "x");
    1bf8:	83 ec 08             	sub    $0x8,%esp
    1bfb:	68 52 47 00 00       	push   $0x4752
    1c00:	68 d6 44 00 00       	push   $0x44d6
    1c05:	e8 a8 1d 00 00       	call   39b2 <link>
    1c0a:	83 c4 10             	add    $0x10,%esp
    1c0d:	e9 7b ff ff ff       	jmp    1b8d <linkunlink+0x6d>
    printf(1, "fork failed\n");
    1c12:	52                   	push   %edx
    1c13:	52                   	push   %edx
    1c14:	68 3a 4d 00 00       	push   $0x4d3a
    1c19:	6a 01                	push   $0x1
    1c1b:	e8 80 1e 00 00       	call   3aa0 <printf>
    exit();
    1c20:	e8 2d 1d 00 00       	call   3952 <exit>
    exit();
    1c25:	e8 28 1d 00 00       	call   3952 <exit>
    1c2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001c30 <bigdir>:
{
    1c30:	55                   	push   %ebp
    1c31:	89 e5                	mov    %esp,%ebp
    1c33:	57                   	push   %edi
    1c34:	56                   	push   %esi
    1c35:	53                   	push   %ebx
    1c36:	83 ec 24             	sub    $0x24,%esp
  printf(1, "bigdir test\n");
    1c39:	68 e9 44 00 00       	push   $0x44e9
    1c3e:	6a 01                	push   $0x1
    1c40:	e8 5b 1e 00 00       	call   3aa0 <printf>
  unlink("bd");
    1c45:	c7 04 24 f6 44 00 00 	movl   $0x44f6,(%esp)
    1c4c:	e8 51 1d 00 00       	call   39a2 <unlink>
  fd = open("bd", O_CREATE);
    1c51:	5a                   	pop    %edx
    1c52:	59                   	pop    %ecx
    1c53:	68 00 02 00 00       	push   $0x200
    1c58:	68 f6 44 00 00       	push   $0x44f6
    1c5d:	e8 30 1d 00 00       	call   3992 <open>
  if(fd < 0){
    1c62:	83 c4 10             	add    $0x10,%esp
    1c65:	85 c0                	test   %eax,%eax
    1c67:	0f 88 de 00 00 00    	js     1d4b <bigdir+0x11b>
  close(fd);
    1c6d:	83 ec 0c             	sub    $0xc,%esp
    1c70:	8d 7d de             	lea    -0x22(%ebp),%edi
  for(i = 0; i < 500; i++){
    1c73:	31 f6                	xor    %esi,%esi
  close(fd);
    1c75:	50                   	push   %eax
    1c76:	e8 ff 1c 00 00       	call   397a <close>
    1c7b:	83 c4 10             	add    $0x10,%esp
    1c7e:	66 90                	xchg   %ax,%ax
    name[1] = '0' + (i / 64);
    1c80:	89 f0                	mov    %esi,%eax
    if(link("bd", name) != 0){
    1c82:	83 ec 08             	sub    $0x8,%esp
    name[0] = 'x';
    1c85:	c6 45 de 78          	movb   $0x78,-0x22(%ebp)
    name[1] = '0' + (i / 64);
    1c89:	c1 f8 06             	sar    $0x6,%eax
    if(link("bd", name) != 0){
    1c8c:	57                   	push   %edi
    1c8d:	68 f6 44 00 00       	push   $0x44f6
    name[1] = '0' + (i / 64);
    1c92:	83 c0 30             	add    $0x30,%eax
    name[3] = '\0';
    1c95:	c6 45 e1 00          	movb   $0x0,-0x1f(%ebp)
    name[1] = '0' + (i / 64);
    1c99:	88 45 df             	mov    %al,-0x21(%ebp)
    name[2] = '0' + (i % 64);
    1c9c:	89 f0                	mov    %esi,%eax
    1c9e:	83 e0 3f             	and    $0x3f,%eax
    1ca1:	83 c0 30             	add    $0x30,%eax
    1ca4:	88 45 e0             	mov    %al,-0x20(%ebp)
    if(link("bd", name) != 0){
    1ca7:	e8 06 1d 00 00       	call   39b2 <link>
    1cac:	83 c4 10             	add    $0x10,%esp
    1caf:	85 c0                	test   %eax,%eax
    1cb1:	89 c3                	mov    %eax,%ebx
    1cb3:	75 6e                	jne    1d23 <bigdir+0xf3>
  for(i = 0; i < 500; i++){
    1cb5:	83 c6 01             	add    $0x1,%esi
    1cb8:	81 fe f4 01 00 00    	cmp    $0x1f4,%esi
    1cbe:	75 c0                	jne    1c80 <bigdir+0x50>
  unlink("bd");
    1cc0:	83 ec 0c             	sub    $0xc,%esp
    1cc3:	68 f6 44 00 00       	push   $0x44f6
    1cc8:	e8 d5 1c 00 00       	call   39a2 <unlink>
    1ccd:	83 c4 10             	add    $0x10,%esp
    name[1] = '0' + (i / 64);
    1cd0:	89 d8                	mov    %ebx,%eax
    if(unlink(name) != 0){
    1cd2:	83 ec 0c             	sub    $0xc,%esp
    name[0] = 'x';
    1cd5:	c6 45 de 78          	movb   $0x78,-0x22(%ebp)
    name[1] = '0' + (i / 64);
    1cd9:	c1 f8 06             	sar    $0x6,%eax
    if(unlink(name) != 0){
    1cdc:	57                   	push   %edi
    name[3] = '\0';
    1cdd:	c6 45 e1 00          	movb   $0x0,-0x1f(%ebp)
    name[1] = '0' + (i / 64);
    1ce1:	83 c0 30             	add    $0x30,%eax
    1ce4:	88 45 df             	mov    %al,-0x21(%ebp)
    name[2] = '0' + (i % 64);
    1ce7:	89 d8                	mov    %ebx,%eax
    1ce9:	83 e0 3f             	and    $0x3f,%eax
    1cec:	83 c0 30             	add    $0x30,%eax
    1cef:	88 45 e0             	mov    %al,-0x20(%ebp)
    if(unlink(name) != 0){
    1cf2:	e8 ab 1c 00 00       	call   39a2 <unlink>
    1cf7:	83 c4 10             	add    $0x10,%esp
    1cfa:	85 c0                	test   %eax,%eax
    1cfc:	75 39                	jne    1d37 <bigdir+0x107>
  for(i = 0; i < 500; i++){
    1cfe:	83 c3 01             	add    $0x1,%ebx
    1d01:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1d07:	75 c7                	jne    1cd0 <bigdir+0xa0>
  printf(1, "bigdir ok\n");
    1d09:	83 ec 08             	sub    $0x8,%esp
    1d0c:	68 38 45 00 00       	push   $0x4538
    1d11:	6a 01                	push   $0x1
    1d13:	e8 88 1d 00 00       	call   3aa0 <printf>
}
    1d18:	83 c4 10             	add    $0x10,%esp
    1d1b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1d1e:	5b                   	pop    %ebx
    1d1f:	5e                   	pop    %esi
    1d20:	5f                   	pop    %edi
    1d21:	5d                   	pop    %ebp
    1d22:	c3                   	ret    
      printf(1, "bigdir link failed\n");
    1d23:	83 ec 08             	sub    $0x8,%esp
    1d26:	68 0f 45 00 00       	push   $0x450f
    1d2b:	6a 01                	push   $0x1
    1d2d:	e8 6e 1d 00 00       	call   3aa0 <printf>
      exit();
    1d32:	e8 1b 1c 00 00       	call   3952 <exit>
      printf(1, "bigdir unlink failed");
    1d37:	83 ec 08             	sub    $0x8,%esp
    1d3a:	68 23 45 00 00       	push   $0x4523
    1d3f:	6a 01                	push   $0x1
    1d41:	e8 5a 1d 00 00       	call   3aa0 <printf>
      exit();
    1d46:	e8 07 1c 00 00       	call   3952 <exit>
    printf(1, "bigdir create failed\n");
    1d4b:	50                   	push   %eax
    1d4c:	50                   	push   %eax
    1d4d:	68 f9 44 00 00       	push   $0x44f9
    1d52:	6a 01                	push   $0x1
    1d54:	e8 47 1d 00 00       	call   3aa0 <printf>
    exit();
    1d59:	e8 f4 1b 00 00       	call   3952 <exit>
    1d5e:	66 90                	xchg   %ax,%ax

00001d60 <subdir>:
{
    1d60:	55                   	push   %ebp
    1d61:	89 e5                	mov    %esp,%ebp
    1d63:	53                   	push   %ebx
    1d64:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "subdir test\n");
    1d67:	68 43 45 00 00       	push   $0x4543
    1d6c:	6a 01                	push   $0x1
    1d6e:	e8 2d 1d 00 00       	call   3aa0 <printf>
  unlink("ff");
    1d73:	c7 04 24 cc 45 00 00 	movl   $0x45cc,(%esp)
    1d7a:	e8 23 1c 00 00       	call   39a2 <unlink>
  if(mkdir("dd") != 0){
    1d7f:	c7 04 24 69 46 00 00 	movl   $0x4669,(%esp)
    1d86:	e8 2f 1c 00 00       	call   39ba <mkdir>
    1d8b:	83 c4 10             	add    $0x10,%esp
    1d8e:	85 c0                	test   %eax,%eax
    1d90:	0f 85 b3 05 00 00    	jne    2349 <subdir+0x5e9>
  fd = open("dd/ff", O_CREATE | O_RDWR);
    1d96:	83 ec 08             	sub    $0x8,%esp
    1d99:	68 02 02 00 00       	push   $0x202
    1d9e:	68 a2 45 00 00       	push   $0x45a2
    1da3:	e8 ea 1b 00 00       	call   3992 <open>
  if(fd < 0){
    1da8:	83 c4 10             	add    $0x10,%esp
    1dab:	85 c0                	test   %eax,%eax
  fd = open("dd/ff", O_CREATE | O_RDWR);
    1dad:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1daf:	0f 88 81 05 00 00    	js     2336 <subdir+0x5d6>
  write(fd, "ff", 2);
    1db5:	83 ec 04             	sub    $0x4,%esp
    1db8:	6a 02                	push   $0x2
    1dba:	68 cc 45 00 00       	push   $0x45cc
    1dbf:	50                   	push   %eax
    1dc0:	e8 ad 1b 00 00       	call   3972 <write>
  close(fd);
    1dc5:	89 1c 24             	mov    %ebx,(%esp)
    1dc8:	e8 ad 1b 00 00       	call   397a <close>
  if(unlink("dd") >= 0){
    1dcd:	c7 04 24 69 46 00 00 	movl   $0x4669,(%esp)
    1dd4:	e8 c9 1b 00 00       	call   39a2 <unlink>
    1dd9:	83 c4 10             	add    $0x10,%esp
    1ddc:	85 c0                	test   %eax,%eax
    1dde:	0f 89 3f 05 00 00    	jns    2323 <subdir+0x5c3>
  if(mkdir("/dd/dd") != 0){
    1de4:	83 ec 0c             	sub    $0xc,%esp
    1de7:	68 7d 45 00 00       	push   $0x457d
    1dec:	e8 c9 1b 00 00       	call   39ba <mkdir>
    1df1:	83 c4 10             	add    $0x10,%esp
    1df4:	85 c0                	test   %eax,%eax
    1df6:	0f 85 14 05 00 00    	jne    2310 <subdir+0x5b0>
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    1dfc:	83 ec 08             	sub    $0x8,%esp
    1dff:	68 02 02 00 00       	push   $0x202
    1e04:	68 9f 45 00 00       	push   $0x459f
    1e09:	e8 84 1b 00 00       	call   3992 <open>
  if(fd < 0){
    1e0e:	83 c4 10             	add    $0x10,%esp
    1e11:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    1e13:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1e15:	0f 88 24 04 00 00    	js     223f <subdir+0x4df>
  write(fd, "FF", 2);
    1e1b:	83 ec 04             	sub    $0x4,%esp
    1e1e:	6a 02                	push   $0x2
    1e20:	68 c0 45 00 00       	push   $0x45c0
    1e25:	50                   	push   %eax
    1e26:	e8 47 1b 00 00       	call   3972 <write>
  close(fd);
    1e2b:	89 1c 24             	mov    %ebx,(%esp)
    1e2e:	e8 47 1b 00 00       	call   397a <close>
  fd = open("dd/dd/../ff", 0);
    1e33:	58                   	pop    %eax
    1e34:	5a                   	pop    %edx
    1e35:	6a 00                	push   $0x0
    1e37:	68 c3 45 00 00       	push   $0x45c3
    1e3c:	e8 51 1b 00 00       	call   3992 <open>
  if(fd < 0){
    1e41:	83 c4 10             	add    $0x10,%esp
    1e44:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/../ff", 0);
    1e46:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1e48:	0f 88 de 03 00 00    	js     222c <subdir+0x4cc>
  cc = read(fd, buf, sizeof(buf));
    1e4e:	83 ec 04             	sub    $0x4,%esp
    1e51:	68 00 20 00 00       	push   $0x2000
    1e56:	68 80 86 00 00       	push   $0x8680
    1e5b:	50                   	push   %eax
    1e5c:	e8 09 1b 00 00       	call   396a <read>
  if(cc != 2 || buf[0] != 'f'){
    1e61:	83 c4 10             	add    $0x10,%esp
    1e64:	83 f8 02             	cmp    $0x2,%eax
    1e67:	0f 85 3a 03 00 00    	jne    21a7 <subdir+0x447>
    1e6d:	80 3d 80 86 00 00 66 	cmpb   $0x66,0x8680
    1e74:	0f 85 2d 03 00 00    	jne    21a7 <subdir+0x447>
  close(fd);
    1e7a:	83 ec 0c             	sub    $0xc,%esp
    1e7d:	53                   	push   %ebx
    1e7e:	e8 f7 1a 00 00       	call   397a <close>
  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    1e83:	5b                   	pop    %ebx
    1e84:	58                   	pop    %eax
    1e85:	68 03 46 00 00       	push   $0x4603
    1e8a:	68 9f 45 00 00       	push   $0x459f
    1e8f:	e8 1e 1b 00 00       	call   39b2 <link>
    1e94:	83 c4 10             	add    $0x10,%esp
    1e97:	85 c0                	test   %eax,%eax
    1e99:	0f 85 c6 03 00 00    	jne    2265 <subdir+0x505>
  if(unlink("dd/dd/ff") != 0){
    1e9f:	83 ec 0c             	sub    $0xc,%esp
    1ea2:	68 9f 45 00 00       	push   $0x459f
    1ea7:	e8 f6 1a 00 00       	call   39a2 <unlink>
    1eac:	83 c4 10             	add    $0x10,%esp
    1eaf:	85 c0                	test   %eax,%eax
    1eb1:	0f 85 16 03 00 00    	jne    21cd <subdir+0x46d>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    1eb7:	83 ec 08             	sub    $0x8,%esp
    1eba:	6a 00                	push   $0x0
    1ebc:	68 9f 45 00 00       	push   $0x459f
    1ec1:	e8 cc 1a 00 00       	call   3992 <open>
    1ec6:	83 c4 10             	add    $0x10,%esp
    1ec9:	85 c0                	test   %eax,%eax
    1ecb:	0f 89 2c 04 00 00    	jns    22fd <subdir+0x59d>
  if(chdir("dd") != 0){
    1ed1:	83 ec 0c             	sub    $0xc,%esp
    1ed4:	68 69 46 00 00       	push   $0x4669
    1ed9:	e8 e4 1a 00 00       	call   39c2 <chdir>
    1ede:	83 c4 10             	add    $0x10,%esp
    1ee1:	85 c0                	test   %eax,%eax
    1ee3:	0f 85 01 04 00 00    	jne    22ea <subdir+0x58a>
  if(chdir("dd/../../dd") != 0){
    1ee9:	83 ec 0c             	sub    $0xc,%esp
    1eec:	68 37 46 00 00       	push   $0x4637
    1ef1:	e8 cc 1a 00 00       	call   39c2 <chdir>
    1ef6:	83 c4 10             	add    $0x10,%esp
    1ef9:	85 c0                	test   %eax,%eax
    1efb:	0f 85 b9 02 00 00    	jne    21ba <subdir+0x45a>
  if(chdir("dd/../../../dd") != 0){
    1f01:	83 ec 0c             	sub    $0xc,%esp
    1f04:	68 5d 46 00 00       	push   $0x465d
    1f09:	e8 b4 1a 00 00       	call   39c2 <chdir>
    1f0e:	83 c4 10             	add    $0x10,%esp
    1f11:	85 c0                	test   %eax,%eax
    1f13:	0f 85 a1 02 00 00    	jne    21ba <subdir+0x45a>
  if(chdir("./..") != 0){
    1f19:	83 ec 0c             	sub    $0xc,%esp
    1f1c:	68 6c 46 00 00       	push   $0x466c
    1f21:	e8 9c 1a 00 00       	call   39c2 <chdir>
    1f26:	83 c4 10             	add    $0x10,%esp
    1f29:	85 c0                	test   %eax,%eax
    1f2b:	0f 85 21 03 00 00    	jne    2252 <subdir+0x4f2>
  fd = open("dd/dd/ffff", 0);
    1f31:	83 ec 08             	sub    $0x8,%esp
    1f34:	6a 00                	push   $0x0
    1f36:	68 03 46 00 00       	push   $0x4603
    1f3b:	e8 52 1a 00 00       	call   3992 <open>
  if(fd < 0){
    1f40:	83 c4 10             	add    $0x10,%esp
    1f43:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/ffff", 0);
    1f45:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1f47:	0f 88 e0 04 00 00    	js     242d <subdir+0x6cd>
  if(read(fd, buf, sizeof(buf)) != 2){
    1f4d:	83 ec 04             	sub    $0x4,%esp
    1f50:	68 00 20 00 00       	push   $0x2000
    1f55:	68 80 86 00 00       	push   $0x8680
    1f5a:	50                   	push   %eax
    1f5b:	e8 0a 1a 00 00       	call   396a <read>
    1f60:	83 c4 10             	add    $0x10,%esp
    1f63:	83 f8 02             	cmp    $0x2,%eax
    1f66:	0f 85 ae 04 00 00    	jne    241a <subdir+0x6ba>
  close(fd);
    1f6c:	83 ec 0c             	sub    $0xc,%esp
    1f6f:	53                   	push   %ebx
    1f70:	e8 05 1a 00 00       	call   397a <close>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    1f75:	59                   	pop    %ecx
    1f76:	5b                   	pop    %ebx
    1f77:	6a 00                	push   $0x0
    1f79:	68 9f 45 00 00       	push   $0x459f
    1f7e:	e8 0f 1a 00 00       	call   3992 <open>
    1f83:	83 c4 10             	add    $0x10,%esp
    1f86:	85 c0                	test   %eax,%eax
    1f88:	0f 89 65 02 00 00    	jns    21f3 <subdir+0x493>
  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    1f8e:	83 ec 08             	sub    $0x8,%esp
    1f91:	68 02 02 00 00       	push   $0x202
    1f96:	68 b7 46 00 00       	push   $0x46b7
    1f9b:	e8 f2 19 00 00       	call   3992 <open>
    1fa0:	83 c4 10             	add    $0x10,%esp
    1fa3:	85 c0                	test   %eax,%eax
    1fa5:	0f 89 35 02 00 00    	jns    21e0 <subdir+0x480>
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    1fab:	83 ec 08             	sub    $0x8,%esp
    1fae:	68 02 02 00 00       	push   $0x202
    1fb3:	68 dc 46 00 00       	push   $0x46dc
    1fb8:	e8 d5 19 00 00       	call   3992 <open>
    1fbd:	83 c4 10             	add    $0x10,%esp
    1fc0:	85 c0                	test   %eax,%eax
    1fc2:	0f 89 0f 03 00 00    	jns    22d7 <subdir+0x577>
  if(open("dd", O_CREATE) >= 0){
    1fc8:	83 ec 08             	sub    $0x8,%esp
    1fcb:	68 00 02 00 00       	push   $0x200
    1fd0:	68 69 46 00 00       	push   $0x4669
    1fd5:	e8 b8 19 00 00       	call   3992 <open>
    1fda:	83 c4 10             	add    $0x10,%esp
    1fdd:	85 c0                	test   %eax,%eax
    1fdf:	0f 89 df 02 00 00    	jns    22c4 <subdir+0x564>
  if(open("dd", O_RDWR) >= 0){
    1fe5:	83 ec 08             	sub    $0x8,%esp
    1fe8:	6a 02                	push   $0x2
    1fea:	68 69 46 00 00       	push   $0x4669
    1fef:	e8 9e 19 00 00       	call   3992 <open>
    1ff4:	83 c4 10             	add    $0x10,%esp
    1ff7:	85 c0                	test   %eax,%eax
    1ff9:	0f 89 b2 02 00 00    	jns    22b1 <subdir+0x551>
  if(open("dd", O_WRONLY) >= 0){
    1fff:	83 ec 08             	sub    $0x8,%esp
    2002:	6a 01                	push   $0x1
    2004:	68 69 46 00 00       	push   $0x4669
    2009:	e8 84 19 00 00       	call   3992 <open>
    200e:	83 c4 10             	add    $0x10,%esp
    2011:	85 c0                	test   %eax,%eax
    2013:	0f 89 85 02 00 00    	jns    229e <subdir+0x53e>
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    2019:	83 ec 08             	sub    $0x8,%esp
    201c:	68 4b 47 00 00       	push   $0x474b
    2021:	68 b7 46 00 00       	push   $0x46b7
    2026:	e8 87 19 00 00       	call   39b2 <link>
    202b:	83 c4 10             	add    $0x10,%esp
    202e:	85 c0                	test   %eax,%eax
    2030:	0f 84 55 02 00 00    	je     228b <subdir+0x52b>
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    2036:	83 ec 08             	sub    $0x8,%esp
    2039:	68 4b 47 00 00       	push   $0x474b
    203e:	68 dc 46 00 00       	push   $0x46dc
    2043:	e8 6a 19 00 00       	call   39b2 <link>
    2048:	83 c4 10             	add    $0x10,%esp
    204b:	85 c0                	test   %eax,%eax
    204d:	0f 84 25 02 00 00    	je     2278 <subdir+0x518>
  if(link("dd/ff", "dd/dd/ffff") == 0){
    2053:	83 ec 08             	sub    $0x8,%esp
    2056:	68 03 46 00 00       	push   $0x4603
    205b:	68 a2 45 00 00       	push   $0x45a2
    2060:	e8 4d 19 00 00       	call   39b2 <link>
    2065:	83 c4 10             	add    $0x10,%esp
    2068:	85 c0                	test   %eax,%eax
    206a:	0f 84 a9 01 00 00    	je     2219 <subdir+0x4b9>
  if(mkdir("dd/ff/ff") == 0){
    2070:	83 ec 0c             	sub    $0xc,%esp
    2073:	68 b7 46 00 00       	push   $0x46b7
    2078:	e8 3d 19 00 00       	call   39ba <mkdir>
    207d:	83 c4 10             	add    $0x10,%esp
    2080:	85 c0                	test   %eax,%eax
    2082:	0f 84 7e 01 00 00    	je     2206 <subdir+0x4a6>
  if(mkdir("dd/xx/ff") == 0){
    2088:	83 ec 0c             	sub    $0xc,%esp
    208b:	68 dc 46 00 00       	push   $0x46dc
    2090:	e8 25 19 00 00       	call   39ba <mkdir>
    2095:	83 c4 10             	add    $0x10,%esp
    2098:	85 c0                	test   %eax,%eax
    209a:	0f 84 67 03 00 00    	je     2407 <subdir+0x6a7>
  if(mkdir("dd/dd/ffff") == 0){
    20a0:	83 ec 0c             	sub    $0xc,%esp
    20a3:	68 03 46 00 00       	push   $0x4603
    20a8:	e8 0d 19 00 00       	call   39ba <mkdir>
    20ad:	83 c4 10             	add    $0x10,%esp
    20b0:	85 c0                	test   %eax,%eax
    20b2:	0f 84 3c 03 00 00    	je     23f4 <subdir+0x694>
  if(unlink("dd/xx/ff") == 0){
    20b8:	83 ec 0c             	sub    $0xc,%esp
    20bb:	68 dc 46 00 00       	push   $0x46dc
    20c0:	e8 dd 18 00 00       	call   39a2 <unlink>
    20c5:	83 c4 10             	add    $0x10,%esp
    20c8:	85 c0                	test   %eax,%eax
    20ca:	0f 84 11 03 00 00    	je     23e1 <subdir+0x681>
  if(unlink("dd/ff/ff") == 0){
    20d0:	83 ec 0c             	sub    $0xc,%esp
    20d3:	68 b7 46 00 00       	push   $0x46b7
    20d8:	e8 c5 18 00 00       	call   39a2 <unlink>
    20dd:	83 c4 10             	add    $0x10,%esp
    20e0:	85 c0                	test   %eax,%eax
    20e2:	0f 84 e6 02 00 00    	je     23ce <subdir+0x66e>
  if(chdir("dd/ff") == 0){
    20e8:	83 ec 0c             	sub    $0xc,%esp
    20eb:	68 a2 45 00 00       	push   $0x45a2
    20f0:	e8 cd 18 00 00       	call   39c2 <chdir>
    20f5:	83 c4 10             	add    $0x10,%esp
    20f8:	85 c0                	test   %eax,%eax
    20fa:	0f 84 bb 02 00 00    	je     23bb <subdir+0x65b>
  if(chdir("dd/xx") == 0){
    2100:	83 ec 0c             	sub    $0xc,%esp
    2103:	68 4e 47 00 00       	push   $0x474e
    2108:	e8 b5 18 00 00       	call   39c2 <chdir>
    210d:	83 c4 10             	add    $0x10,%esp
    2110:	85 c0                	test   %eax,%eax
    2112:	0f 84 90 02 00 00    	je     23a8 <subdir+0x648>
  if(unlink("dd/dd/ffff") != 0){
    2118:	83 ec 0c             	sub    $0xc,%esp
    211b:	68 03 46 00 00       	push   $0x4603
    2120:	e8 7d 18 00 00       	call   39a2 <unlink>
    2125:	83 c4 10             	add    $0x10,%esp
    2128:	85 c0                	test   %eax,%eax
    212a:	0f 85 9d 00 00 00    	jne    21cd <subdir+0x46d>
  if(unlink("dd/ff") != 0){
    2130:	83 ec 0c             	sub    $0xc,%esp
    2133:	68 a2 45 00 00       	push   $0x45a2
    2138:	e8 65 18 00 00       	call   39a2 <unlink>
    213d:	83 c4 10             	add    $0x10,%esp
    2140:	85 c0                	test   %eax,%eax
    2142:	0f 85 4d 02 00 00    	jne    2395 <subdir+0x635>
  if(unlink("dd") == 0){
    2148:	83 ec 0c             	sub    $0xc,%esp
    214b:	68 69 46 00 00       	push   $0x4669
    2150:	e8 4d 18 00 00       	call   39a2 <unlink>
    2155:	83 c4 10             	add    $0x10,%esp
    2158:	85 c0                	test   %eax,%eax
    215a:	0f 84 22 02 00 00    	je     2382 <subdir+0x622>
  if(unlink("dd/dd") < 0){
    2160:	83 ec 0c             	sub    $0xc,%esp
    2163:	68 7e 45 00 00       	push   $0x457e
    2168:	e8 35 18 00 00       	call   39a2 <unlink>
    216d:	83 c4 10             	add    $0x10,%esp
    2170:	85 c0                	test   %eax,%eax
    2172:	0f 88 f7 01 00 00    	js     236f <subdir+0x60f>
  if(unlink("dd") < 0){
    2178:	83 ec 0c             	sub    $0xc,%esp
    217b:	68 69 46 00 00       	push   $0x4669
    2180:	e8 1d 18 00 00       	call   39a2 <unlink>
    2185:	83 c4 10             	add    $0x10,%esp
    2188:	85 c0                	test   %eax,%eax
    218a:	0f 88 cc 01 00 00    	js     235c <subdir+0x5fc>
  printf(1, "subdir ok\n");
    2190:	83 ec 08             	sub    $0x8,%esp
    2193:	68 4b 48 00 00       	push   $0x484b
    2198:	6a 01                	push   $0x1
    219a:	e8 01 19 00 00       	call   3aa0 <printf>
}
    219f:	83 c4 10             	add    $0x10,%esp
    21a2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    21a5:	c9                   	leave  
    21a6:	c3                   	ret    
    printf(1, "dd/dd/../ff wrong content\n");
    21a7:	50                   	push   %eax
    21a8:	50                   	push   %eax
    21a9:	68 e8 45 00 00       	push   $0x45e8
    21ae:	6a 01                	push   $0x1
    21b0:	e8 eb 18 00 00       	call   3aa0 <printf>
    exit();
    21b5:	e8 98 17 00 00       	call   3952 <exit>
    printf(1, "chdir dd/../../dd failed\n");
    21ba:	50                   	push   %eax
    21bb:	50                   	push   %eax
    21bc:	68 43 46 00 00       	push   $0x4643
    21c1:	6a 01                	push   $0x1
    21c3:	e8 d8 18 00 00       	call   3aa0 <printf>
    exit();
    21c8:	e8 85 17 00 00       	call   3952 <exit>
    printf(1, "unlink dd/dd/ff failed\n");
    21cd:	52                   	push   %edx
    21ce:	52                   	push   %edx
    21cf:	68 0e 46 00 00       	push   $0x460e
    21d4:	6a 01                	push   $0x1
    21d6:	e8 c5 18 00 00       	call   3aa0 <printf>
    exit();
    21db:	e8 72 17 00 00       	call   3952 <exit>
    printf(1, "create dd/ff/ff succeeded!\n");
    21e0:	50                   	push   %eax
    21e1:	50                   	push   %eax
    21e2:	68 c0 46 00 00       	push   $0x46c0
    21e7:	6a 01                	push   $0x1
    21e9:	e8 b2 18 00 00       	call   3aa0 <printf>
    exit();
    21ee:	e8 5f 17 00 00       	call   3952 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    21f3:	52                   	push   %edx
    21f4:	52                   	push   %edx
    21f5:	68 a4 50 00 00       	push   $0x50a4
    21fa:	6a 01                	push   $0x1
    21fc:	e8 9f 18 00 00       	call   3aa0 <printf>
    exit();
    2201:	e8 4c 17 00 00       	call   3952 <exit>
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    2206:	52                   	push   %edx
    2207:	52                   	push   %edx
    2208:	68 54 47 00 00       	push   $0x4754
    220d:	6a 01                	push   $0x1
    220f:	e8 8c 18 00 00       	call   3aa0 <printf>
    exit();
    2214:	e8 39 17 00 00       	call   3952 <exit>
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    2219:	51                   	push   %ecx
    221a:	51                   	push   %ecx
    221b:	68 14 51 00 00       	push   $0x5114
    2220:	6a 01                	push   $0x1
    2222:	e8 79 18 00 00       	call   3aa0 <printf>
    exit();
    2227:	e8 26 17 00 00       	call   3952 <exit>
    printf(1, "open dd/dd/../ff failed\n");
    222c:	50                   	push   %eax
    222d:	50                   	push   %eax
    222e:	68 cf 45 00 00       	push   $0x45cf
    2233:	6a 01                	push   $0x1
    2235:	e8 66 18 00 00       	call   3aa0 <printf>
    exit();
    223a:	e8 13 17 00 00       	call   3952 <exit>
    printf(1, "create dd/dd/ff failed\n");
    223f:	51                   	push   %ecx
    2240:	51                   	push   %ecx
    2241:	68 a8 45 00 00       	push   $0x45a8
    2246:	6a 01                	push   $0x1
    2248:	e8 53 18 00 00       	call   3aa0 <printf>
    exit();
    224d:	e8 00 17 00 00       	call   3952 <exit>
    printf(1, "chdir ./.. failed\n");
    2252:	50                   	push   %eax
    2253:	50                   	push   %eax
    2254:	68 71 46 00 00       	push   $0x4671
    2259:	6a 01                	push   $0x1
    225b:	e8 40 18 00 00       	call   3aa0 <printf>
    exit();
    2260:	e8 ed 16 00 00       	call   3952 <exit>
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    2265:	51                   	push   %ecx
    2266:	51                   	push   %ecx
    2267:	68 5c 50 00 00       	push   $0x505c
    226c:	6a 01                	push   $0x1
    226e:	e8 2d 18 00 00       	call   3aa0 <printf>
    exit();
    2273:	e8 da 16 00 00       	call   3952 <exit>
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    2278:	53                   	push   %ebx
    2279:	53                   	push   %ebx
    227a:	68 f0 50 00 00       	push   $0x50f0
    227f:	6a 01                	push   $0x1
    2281:	e8 1a 18 00 00       	call   3aa0 <printf>
    exit();
    2286:	e8 c7 16 00 00       	call   3952 <exit>
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    228b:	50                   	push   %eax
    228c:	50                   	push   %eax
    228d:	68 cc 50 00 00       	push   $0x50cc
    2292:	6a 01                	push   $0x1
    2294:	e8 07 18 00 00       	call   3aa0 <printf>
    exit();
    2299:	e8 b4 16 00 00       	call   3952 <exit>
    printf(1, "open dd wronly succeeded!\n");
    229e:	50                   	push   %eax
    229f:	50                   	push   %eax
    22a0:	68 30 47 00 00       	push   $0x4730
    22a5:	6a 01                	push   $0x1
    22a7:	e8 f4 17 00 00       	call   3aa0 <printf>
    exit();
    22ac:	e8 a1 16 00 00       	call   3952 <exit>
    printf(1, "open dd rdwr succeeded!\n");
    22b1:	50                   	push   %eax
    22b2:	50                   	push   %eax
    22b3:	68 17 47 00 00       	push   $0x4717
    22b8:	6a 01                	push   $0x1
    22ba:	e8 e1 17 00 00       	call   3aa0 <printf>
    exit();
    22bf:	e8 8e 16 00 00       	call   3952 <exit>
    printf(1, "create dd succeeded!\n");
    22c4:	50                   	push   %eax
    22c5:	50                   	push   %eax
    22c6:	68 01 47 00 00       	push   $0x4701
    22cb:	6a 01                	push   $0x1
    22cd:	e8 ce 17 00 00       	call   3aa0 <printf>
    exit();
    22d2:	e8 7b 16 00 00       	call   3952 <exit>
    printf(1, "create dd/xx/ff succeeded!\n");
    22d7:	50                   	push   %eax
    22d8:	50                   	push   %eax
    22d9:	68 e5 46 00 00       	push   $0x46e5
    22de:	6a 01                	push   $0x1
    22e0:	e8 bb 17 00 00       	call   3aa0 <printf>
    exit();
    22e5:	e8 68 16 00 00       	call   3952 <exit>
    printf(1, "chdir dd failed\n");
    22ea:	50                   	push   %eax
    22eb:	50                   	push   %eax
    22ec:	68 26 46 00 00       	push   $0x4626
    22f1:	6a 01                	push   $0x1
    22f3:	e8 a8 17 00 00       	call   3aa0 <printf>
    exit();
    22f8:	e8 55 16 00 00       	call   3952 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    22fd:	50                   	push   %eax
    22fe:	50                   	push   %eax
    22ff:	68 80 50 00 00       	push   $0x5080
    2304:	6a 01                	push   $0x1
    2306:	e8 95 17 00 00       	call   3aa0 <printf>
    exit();
    230b:	e8 42 16 00 00       	call   3952 <exit>
    printf(1, "subdir mkdir dd/dd failed\n");
    2310:	53                   	push   %ebx
    2311:	53                   	push   %ebx
    2312:	68 84 45 00 00       	push   $0x4584
    2317:	6a 01                	push   $0x1
    2319:	e8 82 17 00 00       	call   3aa0 <printf>
    exit();
    231e:	e8 2f 16 00 00       	call   3952 <exit>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    2323:	50                   	push   %eax
    2324:	50                   	push   %eax
    2325:	68 34 50 00 00       	push   $0x5034
    232a:	6a 01                	push   $0x1
    232c:	e8 6f 17 00 00       	call   3aa0 <printf>
    exit();
    2331:	e8 1c 16 00 00       	call   3952 <exit>
    printf(1, "create dd/ff failed\n");
    2336:	50                   	push   %eax
    2337:	50                   	push   %eax
    2338:	68 68 45 00 00       	push   $0x4568
    233d:	6a 01                	push   $0x1
    233f:	e8 5c 17 00 00       	call   3aa0 <printf>
    exit();
    2344:	e8 09 16 00 00       	call   3952 <exit>
    printf(1, "subdir mkdir dd failed\n");
    2349:	50                   	push   %eax
    234a:	50                   	push   %eax
    234b:	68 50 45 00 00       	push   $0x4550
    2350:	6a 01                	push   $0x1
    2352:	e8 49 17 00 00       	call   3aa0 <printf>
    exit();
    2357:	e8 f6 15 00 00       	call   3952 <exit>
    printf(1, "unlink dd failed\n");
    235c:	50                   	push   %eax
    235d:	50                   	push   %eax
    235e:	68 39 48 00 00       	push   $0x4839
    2363:	6a 01                	push   $0x1
    2365:	e8 36 17 00 00       	call   3aa0 <printf>
    exit();
    236a:	e8 e3 15 00 00       	call   3952 <exit>
    printf(1, "unlink dd/dd failed\n");
    236f:	52                   	push   %edx
    2370:	52                   	push   %edx
    2371:	68 24 48 00 00       	push   $0x4824
    2376:	6a 01                	push   $0x1
    2378:	e8 23 17 00 00       	call   3aa0 <printf>
    exit();
    237d:	e8 d0 15 00 00       	call   3952 <exit>
    printf(1, "unlink non-empty dd succeeded!\n");
    2382:	51                   	push   %ecx
    2383:	51                   	push   %ecx
    2384:	68 38 51 00 00       	push   $0x5138
    2389:	6a 01                	push   $0x1
    238b:	e8 10 17 00 00       	call   3aa0 <printf>
    exit();
    2390:	e8 bd 15 00 00       	call   3952 <exit>
    printf(1, "unlink dd/ff failed\n");
    2395:	53                   	push   %ebx
    2396:	53                   	push   %ebx
    2397:	68 0f 48 00 00       	push   $0x480f
    239c:	6a 01                	push   $0x1
    239e:	e8 fd 16 00 00       	call   3aa0 <printf>
    exit();
    23a3:	e8 aa 15 00 00       	call   3952 <exit>
    printf(1, "chdir dd/xx succeeded!\n");
    23a8:	50                   	push   %eax
    23a9:	50                   	push   %eax
    23aa:	68 f7 47 00 00       	push   $0x47f7
    23af:	6a 01                	push   $0x1
    23b1:	e8 ea 16 00 00       	call   3aa0 <printf>
    exit();
    23b6:	e8 97 15 00 00       	call   3952 <exit>
    printf(1, "chdir dd/ff succeeded!\n");
    23bb:	50                   	push   %eax
    23bc:	50                   	push   %eax
    23bd:	68 df 47 00 00       	push   $0x47df
    23c2:	6a 01                	push   $0x1
    23c4:	e8 d7 16 00 00       	call   3aa0 <printf>
    exit();
    23c9:	e8 84 15 00 00       	call   3952 <exit>
    printf(1, "unlink dd/ff/ff succeeded!\n");
    23ce:	50                   	push   %eax
    23cf:	50                   	push   %eax
    23d0:	68 c3 47 00 00       	push   $0x47c3
    23d5:	6a 01                	push   $0x1
    23d7:	e8 c4 16 00 00       	call   3aa0 <printf>
    exit();
    23dc:	e8 71 15 00 00       	call   3952 <exit>
    printf(1, "unlink dd/xx/ff succeeded!\n");
    23e1:	50                   	push   %eax
    23e2:	50                   	push   %eax
    23e3:	68 a7 47 00 00       	push   $0x47a7
    23e8:	6a 01                	push   $0x1
    23ea:	e8 b1 16 00 00       	call   3aa0 <printf>
    exit();
    23ef:	e8 5e 15 00 00       	call   3952 <exit>
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    23f4:	50                   	push   %eax
    23f5:	50                   	push   %eax
    23f6:	68 8a 47 00 00       	push   $0x478a
    23fb:	6a 01                	push   $0x1
    23fd:	e8 9e 16 00 00       	call   3aa0 <printf>
    exit();
    2402:	e8 4b 15 00 00       	call   3952 <exit>
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    2407:	50                   	push   %eax
    2408:	50                   	push   %eax
    2409:	68 6f 47 00 00       	push   $0x476f
    240e:	6a 01                	push   $0x1
    2410:	e8 8b 16 00 00       	call   3aa0 <printf>
    exit();
    2415:	e8 38 15 00 00       	call   3952 <exit>
    printf(1, "read dd/dd/ffff wrong len\n");
    241a:	50                   	push   %eax
    241b:	50                   	push   %eax
    241c:	68 9c 46 00 00       	push   $0x469c
    2421:	6a 01                	push   $0x1
    2423:	e8 78 16 00 00       	call   3aa0 <printf>
    exit();
    2428:	e8 25 15 00 00       	call   3952 <exit>
    printf(1, "open dd/dd/ffff failed\n");
    242d:	50                   	push   %eax
    242e:	50                   	push   %eax
    242f:	68 84 46 00 00       	push   $0x4684
    2434:	6a 01                	push   $0x1
    2436:	e8 65 16 00 00       	call   3aa0 <printf>
    exit();
    243b:	e8 12 15 00 00       	call   3952 <exit>

00002440 <bigwrite>:
{
    2440:	55                   	push   %ebp
    2441:	89 e5                	mov    %esp,%ebp
    2443:	56                   	push   %esi
    2444:	53                   	push   %ebx
  for(sz = 499; sz < 12*512; sz += 471){
    2445:	bb f3 01 00 00       	mov    $0x1f3,%ebx
  printf(1, "bigwrite test\n");
    244a:	83 ec 08             	sub    $0x8,%esp
    244d:	68 56 48 00 00       	push   $0x4856
    2452:	6a 01                	push   $0x1
    2454:	e8 47 16 00 00       	call   3aa0 <printf>
  unlink("bigwrite");
    2459:	c7 04 24 65 48 00 00 	movl   $0x4865,(%esp)
    2460:	e8 3d 15 00 00       	call   39a2 <unlink>
    2465:	83 c4 10             	add    $0x10,%esp
    2468:	90                   	nop
    2469:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2470:	83 ec 08             	sub    $0x8,%esp
    2473:	68 02 02 00 00       	push   $0x202
    2478:	68 65 48 00 00       	push   $0x4865
    247d:	e8 10 15 00 00       	call   3992 <open>
    if(fd < 0){
    2482:	83 c4 10             	add    $0x10,%esp
    2485:	85 c0                	test   %eax,%eax
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2487:	89 c6                	mov    %eax,%esi
    if(fd < 0){
    2489:	78 7e                	js     2509 <bigwrite+0xc9>
      int cc = write(fd, buf, sz);
    248b:	83 ec 04             	sub    $0x4,%esp
    248e:	53                   	push   %ebx
    248f:	68 80 86 00 00       	push   $0x8680
    2494:	50                   	push   %eax
    2495:	e8 d8 14 00 00       	call   3972 <write>
      if(cc != sz){
    249a:	83 c4 10             	add    $0x10,%esp
    249d:	39 d8                	cmp    %ebx,%eax
    249f:	75 55                	jne    24f6 <bigwrite+0xb6>
      int cc = write(fd, buf, sz);
    24a1:	83 ec 04             	sub    $0x4,%esp
    24a4:	53                   	push   %ebx
    24a5:	68 80 86 00 00       	push   $0x8680
    24aa:	56                   	push   %esi
    24ab:	e8 c2 14 00 00       	call   3972 <write>
      if(cc != sz){
    24b0:	83 c4 10             	add    $0x10,%esp
    24b3:	39 d8                	cmp    %ebx,%eax
    24b5:	75 3f                	jne    24f6 <bigwrite+0xb6>
    close(fd);
    24b7:	83 ec 0c             	sub    $0xc,%esp
  for(sz = 499; sz < 12*512; sz += 471){
    24ba:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
    close(fd);
    24c0:	56                   	push   %esi
    24c1:	e8 b4 14 00 00       	call   397a <close>
    unlink("bigwrite");
    24c6:	c7 04 24 65 48 00 00 	movl   $0x4865,(%esp)
    24cd:	e8 d0 14 00 00       	call   39a2 <unlink>
  for(sz = 499; sz < 12*512; sz += 471){
    24d2:	83 c4 10             	add    $0x10,%esp
    24d5:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    24db:	75 93                	jne    2470 <bigwrite+0x30>
  printf(1, "bigwrite ok\n");
    24dd:	83 ec 08             	sub    $0x8,%esp
    24e0:	68 98 48 00 00       	push   $0x4898
    24e5:	6a 01                	push   $0x1
    24e7:	e8 b4 15 00 00       	call   3aa0 <printf>
}
    24ec:	83 c4 10             	add    $0x10,%esp
    24ef:	8d 65 f8             	lea    -0x8(%ebp),%esp
    24f2:	5b                   	pop    %ebx
    24f3:	5e                   	pop    %esi
    24f4:	5d                   	pop    %ebp
    24f5:	c3                   	ret    
        printf(1, "write(%d) ret %d\n", sz, cc);
    24f6:	50                   	push   %eax
    24f7:	53                   	push   %ebx
    24f8:	68 86 48 00 00       	push   $0x4886
    24fd:	6a 01                	push   $0x1
    24ff:	e8 9c 15 00 00       	call   3aa0 <printf>
        exit();
    2504:	e8 49 14 00 00       	call   3952 <exit>
      printf(1, "cannot create bigwrite\n");
    2509:	83 ec 08             	sub    $0x8,%esp
    250c:	68 6e 48 00 00       	push   $0x486e
    2511:	6a 01                	push   $0x1
    2513:	e8 88 15 00 00       	call   3aa0 <printf>
      exit();
    2518:	e8 35 14 00 00       	call   3952 <exit>
    251d:	8d 76 00             	lea    0x0(%esi),%esi

00002520 <bigfile>:
{
    2520:	55                   	push   %ebp
    2521:	89 e5                	mov    %esp,%ebp
    2523:	57                   	push   %edi
    2524:	56                   	push   %esi
    2525:	53                   	push   %ebx
    2526:	83 ec 14             	sub    $0x14,%esp
  printf(1, "bigfile test\n");
    2529:	68 a5 48 00 00       	push   $0x48a5
    252e:	6a 01                	push   $0x1
    2530:	e8 6b 15 00 00       	call   3aa0 <printf>
  unlink("bigfile");
    2535:	c7 04 24 c1 48 00 00 	movl   $0x48c1,(%esp)
    253c:	e8 61 14 00 00       	call   39a2 <unlink>
  fd = open("bigfile", O_CREATE | O_RDWR);
    2541:	58                   	pop    %eax
    2542:	5a                   	pop    %edx
    2543:	68 02 02 00 00       	push   $0x202
    2548:	68 c1 48 00 00       	push   $0x48c1
    254d:	e8 40 14 00 00       	call   3992 <open>
  if(fd < 0){
    2552:	83 c4 10             	add    $0x10,%esp
    2555:	85 c0                	test   %eax,%eax
    2557:	0f 88 5e 01 00 00    	js     26bb <bigfile+0x19b>
    255d:	89 c6                	mov    %eax,%esi
  for(i = 0; i < 20; i++){
    255f:	31 db                	xor    %ebx,%ebx
    2561:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    memset(buf, i, 600);
    2568:	83 ec 04             	sub    $0x4,%esp
    256b:	68 58 02 00 00       	push   $0x258
    2570:	53                   	push   %ebx
    2571:	68 80 86 00 00       	push   $0x8680
    2576:	e8 35 12 00 00       	call   37b0 <memset>
    if(write(fd, buf, 600) != 600){
    257b:	83 c4 0c             	add    $0xc,%esp
    257e:	68 58 02 00 00       	push   $0x258
    2583:	68 80 86 00 00       	push   $0x8680
    2588:	56                   	push   %esi
    2589:	e8 e4 13 00 00       	call   3972 <write>
    258e:	83 c4 10             	add    $0x10,%esp
    2591:	3d 58 02 00 00       	cmp    $0x258,%eax
    2596:	0f 85 f8 00 00 00    	jne    2694 <bigfile+0x174>
  for(i = 0; i < 20; i++){
    259c:	83 c3 01             	add    $0x1,%ebx
    259f:	83 fb 14             	cmp    $0x14,%ebx
    25a2:	75 c4                	jne    2568 <bigfile+0x48>
  close(fd);
    25a4:	83 ec 0c             	sub    $0xc,%esp
    25a7:	56                   	push   %esi
    25a8:	e8 cd 13 00 00       	call   397a <close>
  fd = open("bigfile", 0);
    25ad:	5e                   	pop    %esi
    25ae:	5f                   	pop    %edi
    25af:	6a 00                	push   $0x0
    25b1:	68 c1 48 00 00       	push   $0x48c1
    25b6:	e8 d7 13 00 00       	call   3992 <open>
  if(fd < 0){
    25bb:	83 c4 10             	add    $0x10,%esp
    25be:	85 c0                	test   %eax,%eax
  fd = open("bigfile", 0);
    25c0:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    25c2:	0f 88 e0 00 00 00    	js     26a8 <bigfile+0x188>
  total = 0;
    25c8:	31 db                	xor    %ebx,%ebx
  for(i = 0; ; i++){
    25ca:	31 ff                	xor    %edi,%edi
    25cc:	eb 30                	jmp    25fe <bigfile+0xde>
    25ce:	66 90                	xchg   %ax,%ax
    if(cc != 300){
    25d0:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    25d5:	0f 85 91 00 00 00    	jne    266c <bigfile+0x14c>
    if(buf[0] != i/2 || buf[299] != i/2){
    25db:	0f be 05 80 86 00 00 	movsbl 0x8680,%eax
    25e2:	89 fa                	mov    %edi,%edx
    25e4:	d1 fa                	sar    %edx
    25e6:	39 d0                	cmp    %edx,%eax
    25e8:	75 6e                	jne    2658 <bigfile+0x138>
    25ea:	0f be 15 ab 87 00 00 	movsbl 0x87ab,%edx
    25f1:	39 d0                	cmp    %edx,%eax
    25f3:	75 63                	jne    2658 <bigfile+0x138>
    total += cc;
    25f5:	81 c3 2c 01 00 00    	add    $0x12c,%ebx
  for(i = 0; ; i++){
    25fb:	83 c7 01             	add    $0x1,%edi
    cc = read(fd, buf, 300);
    25fe:	83 ec 04             	sub    $0x4,%esp
    2601:	68 2c 01 00 00       	push   $0x12c
    2606:	68 80 86 00 00       	push   $0x8680
    260b:	56                   	push   %esi
    260c:	e8 59 13 00 00       	call   396a <read>
    if(cc < 0){
    2611:	83 c4 10             	add    $0x10,%esp
    2614:	85 c0                	test   %eax,%eax
    2616:	78 68                	js     2680 <bigfile+0x160>
    if(cc == 0)
    2618:	75 b6                	jne    25d0 <bigfile+0xb0>
  close(fd);
    261a:	83 ec 0c             	sub    $0xc,%esp
    261d:	56                   	push   %esi
    261e:	e8 57 13 00 00       	call   397a <close>
  if(total != 20*600){
    2623:	83 c4 10             	add    $0x10,%esp
    2626:	81 fb e0 2e 00 00    	cmp    $0x2ee0,%ebx
    262c:	0f 85 9c 00 00 00    	jne    26ce <bigfile+0x1ae>
  unlink("bigfile");
    2632:	83 ec 0c             	sub    $0xc,%esp
    2635:	68 c1 48 00 00       	push   $0x48c1
    263a:	e8 63 13 00 00       	call   39a2 <unlink>
  printf(1, "bigfile test ok\n");
    263f:	58                   	pop    %eax
    2640:	5a                   	pop    %edx
    2641:	68 50 49 00 00       	push   $0x4950
    2646:	6a 01                	push   $0x1
    2648:	e8 53 14 00 00       	call   3aa0 <printf>
}
    264d:	83 c4 10             	add    $0x10,%esp
    2650:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2653:	5b                   	pop    %ebx
    2654:	5e                   	pop    %esi
    2655:	5f                   	pop    %edi
    2656:	5d                   	pop    %ebp
    2657:	c3                   	ret    
      printf(1, "read bigfile wrong data\n");
    2658:	83 ec 08             	sub    $0x8,%esp
    265b:	68 1d 49 00 00       	push   $0x491d
    2660:	6a 01                	push   $0x1
    2662:	e8 39 14 00 00       	call   3aa0 <printf>
      exit();
    2667:	e8 e6 12 00 00       	call   3952 <exit>
      printf(1, "short read bigfile\n");
    266c:	83 ec 08             	sub    $0x8,%esp
    266f:	68 09 49 00 00       	push   $0x4909
    2674:	6a 01                	push   $0x1
    2676:	e8 25 14 00 00       	call   3aa0 <printf>
      exit();
    267b:	e8 d2 12 00 00       	call   3952 <exit>
      printf(1, "read bigfile failed\n");
    2680:	83 ec 08             	sub    $0x8,%esp
    2683:	68 f4 48 00 00       	push   $0x48f4
    2688:	6a 01                	push   $0x1
    268a:	e8 11 14 00 00       	call   3aa0 <printf>
      exit();
    268f:	e8 be 12 00 00       	call   3952 <exit>
      printf(1, "write bigfile failed\n");
    2694:	83 ec 08             	sub    $0x8,%esp
    2697:	68 c9 48 00 00       	push   $0x48c9
    269c:	6a 01                	push   $0x1
    269e:	e8 fd 13 00 00       	call   3aa0 <printf>
      exit();
    26a3:	e8 aa 12 00 00       	call   3952 <exit>
    printf(1, "cannot open bigfile\n");
    26a8:	53                   	push   %ebx
    26a9:	53                   	push   %ebx
    26aa:	68 df 48 00 00       	push   $0x48df
    26af:	6a 01                	push   $0x1
    26b1:	e8 ea 13 00 00       	call   3aa0 <printf>
    exit();
    26b6:	e8 97 12 00 00       	call   3952 <exit>
    printf(1, "cannot create bigfile");
    26bb:	50                   	push   %eax
    26bc:	50                   	push   %eax
    26bd:	68 b3 48 00 00       	push   $0x48b3
    26c2:	6a 01                	push   $0x1
    26c4:	e8 d7 13 00 00       	call   3aa0 <printf>
    exit();
    26c9:	e8 84 12 00 00       	call   3952 <exit>
    printf(1, "read bigfile wrong total\n");
    26ce:	51                   	push   %ecx
    26cf:	51                   	push   %ecx
    26d0:	68 36 49 00 00       	push   $0x4936
    26d5:	6a 01                	push   $0x1
    26d7:	e8 c4 13 00 00       	call   3aa0 <printf>
    exit();
    26dc:	e8 71 12 00 00       	call   3952 <exit>
    26e1:	eb 0d                	jmp    26f0 <fourteen>
    26e3:	90                   	nop
    26e4:	90                   	nop
    26e5:	90                   	nop
    26e6:	90                   	nop
    26e7:	90                   	nop
    26e8:	90                   	nop
    26e9:	90                   	nop
    26ea:	90                   	nop
    26eb:	90                   	nop
    26ec:	90                   	nop
    26ed:	90                   	nop
    26ee:	90                   	nop
    26ef:	90                   	nop

000026f0 <fourteen>:
{
    26f0:	55                   	push   %ebp
    26f1:	89 e5                	mov    %esp,%ebp
    26f3:	83 ec 10             	sub    $0x10,%esp
  printf(1, "fourteen test\n");
    26f6:	68 61 49 00 00       	push   $0x4961
    26fb:	6a 01                	push   $0x1
    26fd:	e8 9e 13 00 00       	call   3aa0 <printf>
  if(mkdir("12345678901234") != 0){
    2702:	c7 04 24 9c 49 00 00 	movl   $0x499c,(%esp)
    2709:	e8 ac 12 00 00       	call   39ba <mkdir>
    270e:	83 c4 10             	add    $0x10,%esp
    2711:	85 c0                	test   %eax,%eax
    2713:	0f 85 97 00 00 00    	jne    27b0 <fourteen+0xc0>
  if(mkdir("12345678901234/123456789012345") != 0){
    2719:	83 ec 0c             	sub    $0xc,%esp
    271c:	68 58 51 00 00       	push   $0x5158
    2721:	e8 94 12 00 00       	call   39ba <mkdir>
    2726:	83 c4 10             	add    $0x10,%esp
    2729:	85 c0                	test   %eax,%eax
    272b:	0f 85 de 00 00 00    	jne    280f <fourteen+0x11f>
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
    2731:	83 ec 08             	sub    $0x8,%esp
    2734:	68 00 02 00 00       	push   $0x200
    2739:	68 a8 51 00 00       	push   $0x51a8
    273e:	e8 4f 12 00 00       	call   3992 <open>
  if(fd < 0){
    2743:	83 c4 10             	add    $0x10,%esp
    2746:	85 c0                	test   %eax,%eax
    2748:	0f 88 ae 00 00 00    	js     27fc <fourteen+0x10c>
  close(fd);
    274e:	83 ec 0c             	sub    $0xc,%esp
    2751:	50                   	push   %eax
    2752:	e8 23 12 00 00       	call   397a <close>
  fd = open("12345678901234/12345678901234/12345678901234", 0);
    2757:	58                   	pop    %eax
    2758:	5a                   	pop    %edx
    2759:	6a 00                	push   $0x0
    275b:	68 18 52 00 00       	push   $0x5218
    2760:	e8 2d 12 00 00       	call   3992 <open>
  if(fd < 0){
    2765:	83 c4 10             	add    $0x10,%esp
    2768:	85 c0                	test   %eax,%eax
    276a:	78 7d                	js     27e9 <fourteen+0xf9>
  close(fd);
    276c:	83 ec 0c             	sub    $0xc,%esp
    276f:	50                   	push   %eax
    2770:	e8 05 12 00 00       	call   397a <close>
  if(mkdir("12345678901234/12345678901234") == 0){
    2775:	c7 04 24 8d 49 00 00 	movl   $0x498d,(%esp)
    277c:	e8 39 12 00 00       	call   39ba <mkdir>
    2781:	83 c4 10             	add    $0x10,%esp
    2784:	85 c0                	test   %eax,%eax
    2786:	74 4e                	je     27d6 <fourteen+0xe6>
  if(mkdir("123456789012345/12345678901234") == 0){
    2788:	83 ec 0c             	sub    $0xc,%esp
    278b:	68 b4 52 00 00       	push   $0x52b4
    2790:	e8 25 12 00 00       	call   39ba <mkdir>
    2795:	83 c4 10             	add    $0x10,%esp
    2798:	85 c0                	test   %eax,%eax
    279a:	74 27                	je     27c3 <fourteen+0xd3>
  printf(1, "fourteen ok\n");
    279c:	83 ec 08             	sub    $0x8,%esp
    279f:	68 ab 49 00 00       	push   $0x49ab
    27a4:	6a 01                	push   $0x1
    27a6:	e8 f5 12 00 00       	call   3aa0 <printf>
}
    27ab:	83 c4 10             	add    $0x10,%esp
    27ae:	c9                   	leave  
    27af:	c3                   	ret    
    printf(1, "mkdir 12345678901234 failed\n");
    27b0:	50                   	push   %eax
    27b1:	50                   	push   %eax
    27b2:	68 70 49 00 00       	push   $0x4970
    27b7:	6a 01                	push   $0x1
    27b9:	e8 e2 12 00 00       	call   3aa0 <printf>
    exit();
    27be:	e8 8f 11 00 00       	call   3952 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    27c3:	50                   	push   %eax
    27c4:	50                   	push   %eax
    27c5:	68 d4 52 00 00       	push   $0x52d4
    27ca:	6a 01                	push   $0x1
    27cc:	e8 cf 12 00 00       	call   3aa0 <printf>
    exit();
    27d1:	e8 7c 11 00 00       	call   3952 <exit>
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    27d6:	52                   	push   %edx
    27d7:	52                   	push   %edx
    27d8:	68 84 52 00 00       	push   $0x5284
    27dd:	6a 01                	push   $0x1
    27df:	e8 bc 12 00 00       	call   3aa0 <printf>
    exit();
    27e4:	e8 69 11 00 00       	call   3952 <exit>
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    27e9:	51                   	push   %ecx
    27ea:	51                   	push   %ecx
    27eb:	68 48 52 00 00       	push   $0x5248
    27f0:	6a 01                	push   $0x1
    27f2:	e8 a9 12 00 00       	call   3aa0 <printf>
    exit();
    27f7:	e8 56 11 00 00       	call   3952 <exit>
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    27fc:	51                   	push   %ecx
    27fd:	51                   	push   %ecx
    27fe:	68 d8 51 00 00       	push   $0x51d8
    2803:	6a 01                	push   $0x1
    2805:	e8 96 12 00 00       	call   3aa0 <printf>
    exit();
    280a:	e8 43 11 00 00       	call   3952 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    280f:	50                   	push   %eax
    2810:	50                   	push   %eax
    2811:	68 78 51 00 00       	push   $0x5178
    2816:	6a 01                	push   $0x1
    2818:	e8 83 12 00 00       	call   3aa0 <printf>
    exit();
    281d:	e8 30 11 00 00       	call   3952 <exit>
    2822:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2829:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002830 <rmdot>:
{
    2830:	55                   	push   %ebp
    2831:	89 e5                	mov    %esp,%ebp
    2833:	83 ec 10             	sub    $0x10,%esp
  printf(1, "rmdot test\n");
    2836:	68 b8 49 00 00       	push   $0x49b8
    283b:	6a 01                	push   $0x1
    283d:	e8 5e 12 00 00       	call   3aa0 <printf>
  if(mkdir("dots") != 0){
    2842:	c7 04 24 c4 49 00 00 	movl   $0x49c4,(%esp)
    2849:	e8 6c 11 00 00       	call   39ba <mkdir>
    284e:	83 c4 10             	add    $0x10,%esp
    2851:	85 c0                	test   %eax,%eax
    2853:	0f 85 b0 00 00 00    	jne    2909 <rmdot+0xd9>
  if(chdir("dots") != 0){
    2859:	83 ec 0c             	sub    $0xc,%esp
    285c:	68 c4 49 00 00       	push   $0x49c4
    2861:	e8 5c 11 00 00       	call   39c2 <chdir>
    2866:	83 c4 10             	add    $0x10,%esp
    2869:	85 c0                	test   %eax,%eax
    286b:	0f 85 1d 01 00 00    	jne    298e <rmdot+0x15e>
  if(unlink(".") == 0){
    2871:	83 ec 0c             	sub    $0xc,%esp
    2874:	68 6f 46 00 00       	push   $0x466f
    2879:	e8 24 11 00 00       	call   39a2 <unlink>
    287e:	83 c4 10             	add    $0x10,%esp
    2881:	85 c0                	test   %eax,%eax
    2883:	0f 84 f2 00 00 00    	je     297b <rmdot+0x14b>
  if(unlink("..") == 0){
    2889:	83 ec 0c             	sub    $0xc,%esp
    288c:	68 6e 46 00 00       	push   $0x466e
    2891:	e8 0c 11 00 00       	call   39a2 <unlink>
    2896:	83 c4 10             	add    $0x10,%esp
    2899:	85 c0                	test   %eax,%eax
    289b:	0f 84 c7 00 00 00    	je     2968 <rmdot+0x138>
  if(chdir("/") != 0){
    28a1:	83 ec 0c             	sub    $0xc,%esp
    28a4:	68 41 3e 00 00       	push   $0x3e41
    28a9:	e8 14 11 00 00       	call   39c2 <chdir>
    28ae:	83 c4 10             	add    $0x10,%esp
    28b1:	85 c0                	test   %eax,%eax
    28b3:	0f 85 9c 00 00 00    	jne    2955 <rmdot+0x125>
  if(unlink("dots/.") == 0){
    28b9:	83 ec 0c             	sub    $0xc,%esp
    28bc:	68 0c 4a 00 00       	push   $0x4a0c
    28c1:	e8 dc 10 00 00       	call   39a2 <unlink>
    28c6:	83 c4 10             	add    $0x10,%esp
    28c9:	85 c0                	test   %eax,%eax
    28cb:	74 75                	je     2942 <rmdot+0x112>
  if(unlink("dots/..") == 0){
    28cd:	83 ec 0c             	sub    $0xc,%esp
    28d0:	68 2a 4a 00 00       	push   $0x4a2a
    28d5:	e8 c8 10 00 00       	call   39a2 <unlink>
    28da:	83 c4 10             	add    $0x10,%esp
    28dd:	85 c0                	test   %eax,%eax
    28df:	74 4e                	je     292f <rmdot+0xff>
  if(unlink("dots") != 0){
    28e1:	83 ec 0c             	sub    $0xc,%esp
    28e4:	68 c4 49 00 00       	push   $0x49c4
    28e9:	e8 b4 10 00 00       	call   39a2 <unlink>
    28ee:	83 c4 10             	add    $0x10,%esp
    28f1:	85 c0                	test   %eax,%eax
    28f3:	75 27                	jne    291c <rmdot+0xec>
  printf(1, "rmdot ok\n");
    28f5:	83 ec 08             	sub    $0x8,%esp
    28f8:	68 5f 4a 00 00       	push   $0x4a5f
    28fd:	6a 01                	push   $0x1
    28ff:	e8 9c 11 00 00       	call   3aa0 <printf>
}
    2904:	83 c4 10             	add    $0x10,%esp
    2907:	c9                   	leave  
    2908:	c3                   	ret    
    printf(1, "mkdir dots failed\n");
    2909:	50                   	push   %eax
    290a:	50                   	push   %eax
    290b:	68 c9 49 00 00       	push   $0x49c9
    2910:	6a 01                	push   $0x1
    2912:	e8 89 11 00 00       	call   3aa0 <printf>
    exit();
    2917:	e8 36 10 00 00       	call   3952 <exit>
    printf(1, "unlink dots failed!\n");
    291c:	50                   	push   %eax
    291d:	50                   	push   %eax
    291e:	68 4a 4a 00 00       	push   $0x4a4a
    2923:	6a 01                	push   $0x1
    2925:	e8 76 11 00 00       	call   3aa0 <printf>
    exit();
    292a:	e8 23 10 00 00       	call   3952 <exit>
    printf(1, "unlink dots/.. worked!\n");
    292f:	52                   	push   %edx
    2930:	52                   	push   %edx
    2931:	68 32 4a 00 00       	push   $0x4a32
    2936:	6a 01                	push   $0x1
    2938:	e8 63 11 00 00       	call   3aa0 <printf>
    exit();
    293d:	e8 10 10 00 00       	call   3952 <exit>
    printf(1, "unlink dots/. worked!\n");
    2942:	51                   	push   %ecx
    2943:	51                   	push   %ecx
    2944:	68 13 4a 00 00       	push   $0x4a13
    2949:	6a 01                	push   $0x1
    294b:	e8 50 11 00 00       	call   3aa0 <printf>
    exit();
    2950:	e8 fd 0f 00 00       	call   3952 <exit>
    printf(1, "chdir / failed\n");
    2955:	50                   	push   %eax
    2956:	50                   	push   %eax
    2957:	68 43 3e 00 00       	push   $0x3e43
    295c:	6a 01                	push   $0x1
    295e:	e8 3d 11 00 00       	call   3aa0 <printf>
    exit();
    2963:	e8 ea 0f 00 00       	call   3952 <exit>
    printf(1, "rm .. worked!\n");
    2968:	50                   	push   %eax
    2969:	50                   	push   %eax
    296a:	68 fd 49 00 00       	push   $0x49fd
    296f:	6a 01                	push   $0x1
    2971:	e8 2a 11 00 00       	call   3aa0 <printf>
    exit();
    2976:	e8 d7 0f 00 00       	call   3952 <exit>
    printf(1, "rm . worked!\n");
    297b:	50                   	push   %eax
    297c:	50                   	push   %eax
    297d:	68 ef 49 00 00       	push   $0x49ef
    2982:	6a 01                	push   $0x1
    2984:	e8 17 11 00 00       	call   3aa0 <printf>
    exit();
    2989:	e8 c4 0f 00 00       	call   3952 <exit>
    printf(1, "chdir dots failed\n");
    298e:	50                   	push   %eax
    298f:	50                   	push   %eax
    2990:	68 dc 49 00 00       	push   $0x49dc
    2995:	6a 01                	push   $0x1
    2997:	e8 04 11 00 00       	call   3aa0 <printf>
    exit();
    299c:	e8 b1 0f 00 00       	call   3952 <exit>
    29a1:	eb 0d                	jmp    29b0 <dirfile>
    29a3:	90                   	nop
    29a4:	90                   	nop
    29a5:	90                   	nop
    29a6:	90                   	nop
    29a7:	90                   	nop
    29a8:	90                   	nop
    29a9:	90                   	nop
    29aa:	90                   	nop
    29ab:	90                   	nop
    29ac:	90                   	nop
    29ad:	90                   	nop
    29ae:	90                   	nop
    29af:	90                   	nop

000029b0 <dirfile>:
{
    29b0:	55                   	push   %ebp
    29b1:	89 e5                	mov    %esp,%ebp
    29b3:	53                   	push   %ebx
    29b4:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "dir vs file\n");
    29b7:	68 69 4a 00 00       	push   $0x4a69
    29bc:	6a 01                	push   $0x1
    29be:	e8 dd 10 00 00       	call   3aa0 <printf>
  fd = open("dirfile", O_CREATE);
    29c3:	59                   	pop    %ecx
    29c4:	5b                   	pop    %ebx
    29c5:	68 00 02 00 00       	push   $0x200
    29ca:	68 76 4a 00 00       	push   $0x4a76
    29cf:	e8 be 0f 00 00       	call   3992 <open>
  if(fd < 0){
    29d4:	83 c4 10             	add    $0x10,%esp
    29d7:	85 c0                	test   %eax,%eax
    29d9:	0f 88 43 01 00 00    	js     2b22 <dirfile+0x172>
  close(fd);
    29df:	83 ec 0c             	sub    $0xc,%esp
    29e2:	50                   	push   %eax
    29e3:	e8 92 0f 00 00       	call   397a <close>
  if(chdir("dirfile") == 0){
    29e8:	c7 04 24 76 4a 00 00 	movl   $0x4a76,(%esp)
    29ef:	e8 ce 0f 00 00       	call   39c2 <chdir>
    29f4:	83 c4 10             	add    $0x10,%esp
    29f7:	85 c0                	test   %eax,%eax
    29f9:	0f 84 10 01 00 00    	je     2b0f <dirfile+0x15f>
  fd = open("dirfile/xx", 0);
    29ff:	83 ec 08             	sub    $0x8,%esp
    2a02:	6a 00                	push   $0x0
    2a04:	68 af 4a 00 00       	push   $0x4aaf
    2a09:	e8 84 0f 00 00       	call   3992 <open>
  if(fd >= 0){
    2a0e:	83 c4 10             	add    $0x10,%esp
    2a11:	85 c0                	test   %eax,%eax
    2a13:	0f 89 e3 00 00 00    	jns    2afc <dirfile+0x14c>
  fd = open("dirfile/xx", O_CREATE);
    2a19:	83 ec 08             	sub    $0x8,%esp
    2a1c:	68 00 02 00 00       	push   $0x200
    2a21:	68 af 4a 00 00       	push   $0x4aaf
    2a26:	e8 67 0f 00 00       	call   3992 <open>
  if(fd >= 0){
    2a2b:	83 c4 10             	add    $0x10,%esp
    2a2e:	85 c0                	test   %eax,%eax
    2a30:	0f 89 c6 00 00 00    	jns    2afc <dirfile+0x14c>
  if(mkdir("dirfile/xx") == 0){
    2a36:	83 ec 0c             	sub    $0xc,%esp
    2a39:	68 af 4a 00 00       	push   $0x4aaf
    2a3e:	e8 77 0f 00 00       	call   39ba <mkdir>
    2a43:	83 c4 10             	add    $0x10,%esp
    2a46:	85 c0                	test   %eax,%eax
    2a48:	0f 84 46 01 00 00    	je     2b94 <dirfile+0x1e4>
  if(unlink("dirfile/xx") == 0){
    2a4e:	83 ec 0c             	sub    $0xc,%esp
    2a51:	68 af 4a 00 00       	push   $0x4aaf
    2a56:	e8 47 0f 00 00       	call   39a2 <unlink>
    2a5b:	83 c4 10             	add    $0x10,%esp
    2a5e:	85 c0                	test   %eax,%eax
    2a60:	0f 84 1b 01 00 00    	je     2b81 <dirfile+0x1d1>
  if(link("README", "dirfile/xx") == 0){
    2a66:	83 ec 08             	sub    $0x8,%esp
    2a69:	68 af 4a 00 00       	push   $0x4aaf
    2a6e:	68 13 4b 00 00       	push   $0x4b13
    2a73:	e8 3a 0f 00 00       	call   39b2 <link>
    2a78:	83 c4 10             	add    $0x10,%esp
    2a7b:	85 c0                	test   %eax,%eax
    2a7d:	0f 84 eb 00 00 00    	je     2b6e <dirfile+0x1be>
  if(unlink("dirfile") != 0){
    2a83:	83 ec 0c             	sub    $0xc,%esp
    2a86:	68 76 4a 00 00       	push   $0x4a76
    2a8b:	e8 12 0f 00 00       	call   39a2 <unlink>
    2a90:	83 c4 10             	add    $0x10,%esp
    2a93:	85 c0                	test   %eax,%eax
    2a95:	0f 85 c0 00 00 00    	jne    2b5b <dirfile+0x1ab>
  fd = open(".", O_RDWR);
    2a9b:	83 ec 08             	sub    $0x8,%esp
    2a9e:	6a 02                	push   $0x2
    2aa0:	68 6f 46 00 00       	push   $0x466f
    2aa5:	e8 e8 0e 00 00       	call   3992 <open>
  if(fd >= 0){
    2aaa:	83 c4 10             	add    $0x10,%esp
    2aad:	85 c0                	test   %eax,%eax
    2aaf:	0f 89 93 00 00 00    	jns    2b48 <dirfile+0x198>
  fd = open(".", 0);
    2ab5:	83 ec 08             	sub    $0x8,%esp
    2ab8:	6a 00                	push   $0x0
    2aba:	68 6f 46 00 00       	push   $0x466f
    2abf:	e8 ce 0e 00 00       	call   3992 <open>
  if(write(fd, "x", 1) > 0){
    2ac4:	83 c4 0c             	add    $0xc,%esp
  fd = open(".", 0);
    2ac7:	89 c3                	mov    %eax,%ebx
  if(write(fd, "x", 1) > 0){
    2ac9:	6a 01                	push   $0x1
    2acb:	68 52 47 00 00       	push   $0x4752
    2ad0:	50                   	push   %eax
    2ad1:	e8 9c 0e 00 00       	call   3972 <write>
    2ad6:	83 c4 10             	add    $0x10,%esp
    2ad9:	85 c0                	test   %eax,%eax
    2adb:	7f 58                	jg     2b35 <dirfile+0x185>
  close(fd);
    2add:	83 ec 0c             	sub    $0xc,%esp
    2ae0:	53                   	push   %ebx
    2ae1:	e8 94 0e 00 00       	call   397a <close>
  printf(1, "dir vs file OK\n");
    2ae6:	58                   	pop    %eax
    2ae7:	5a                   	pop    %edx
    2ae8:	68 46 4b 00 00       	push   $0x4b46
    2aed:	6a 01                	push   $0x1
    2aef:	e8 ac 0f 00 00       	call   3aa0 <printf>
}
    2af4:	83 c4 10             	add    $0x10,%esp
    2af7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2afa:	c9                   	leave  
    2afb:	c3                   	ret    
    printf(1, "create dirfile/xx succeeded!\n");
    2afc:	50                   	push   %eax
    2afd:	50                   	push   %eax
    2afe:	68 ba 4a 00 00       	push   $0x4aba
    2b03:	6a 01                	push   $0x1
    2b05:	e8 96 0f 00 00       	call   3aa0 <printf>
    exit();
    2b0a:	e8 43 0e 00 00       	call   3952 <exit>
    printf(1, "chdir dirfile succeeded!\n");
    2b0f:	50                   	push   %eax
    2b10:	50                   	push   %eax
    2b11:	68 95 4a 00 00       	push   $0x4a95
    2b16:	6a 01                	push   $0x1
    2b18:	e8 83 0f 00 00       	call   3aa0 <printf>
    exit();
    2b1d:	e8 30 0e 00 00       	call   3952 <exit>
    printf(1, "create dirfile failed\n");
    2b22:	52                   	push   %edx
    2b23:	52                   	push   %edx
    2b24:	68 7e 4a 00 00       	push   $0x4a7e
    2b29:	6a 01                	push   $0x1
    2b2b:	e8 70 0f 00 00       	call   3aa0 <printf>
    exit();
    2b30:	e8 1d 0e 00 00       	call   3952 <exit>
    printf(1, "write . succeeded!\n");
    2b35:	51                   	push   %ecx
    2b36:	51                   	push   %ecx
    2b37:	68 32 4b 00 00       	push   $0x4b32
    2b3c:	6a 01                	push   $0x1
    2b3e:	e8 5d 0f 00 00       	call   3aa0 <printf>
    exit();
    2b43:	e8 0a 0e 00 00       	call   3952 <exit>
    printf(1, "open . for writing succeeded!\n");
    2b48:	53                   	push   %ebx
    2b49:	53                   	push   %ebx
    2b4a:	68 28 53 00 00       	push   $0x5328
    2b4f:	6a 01                	push   $0x1
    2b51:	e8 4a 0f 00 00       	call   3aa0 <printf>
    exit();
    2b56:	e8 f7 0d 00 00       	call   3952 <exit>
    printf(1, "unlink dirfile failed!\n");
    2b5b:	50                   	push   %eax
    2b5c:	50                   	push   %eax
    2b5d:	68 1a 4b 00 00       	push   $0x4b1a
    2b62:	6a 01                	push   $0x1
    2b64:	e8 37 0f 00 00       	call   3aa0 <printf>
    exit();
    2b69:	e8 e4 0d 00 00       	call   3952 <exit>
    printf(1, "link to dirfile/xx succeeded!\n");
    2b6e:	50                   	push   %eax
    2b6f:	50                   	push   %eax
    2b70:	68 08 53 00 00       	push   $0x5308
    2b75:	6a 01                	push   $0x1
    2b77:	e8 24 0f 00 00       	call   3aa0 <printf>
    exit();
    2b7c:	e8 d1 0d 00 00       	call   3952 <exit>
    printf(1, "unlink dirfile/xx succeeded!\n");
    2b81:	50                   	push   %eax
    2b82:	50                   	push   %eax
    2b83:	68 f5 4a 00 00       	push   $0x4af5
    2b88:	6a 01                	push   $0x1
    2b8a:	e8 11 0f 00 00       	call   3aa0 <printf>
    exit();
    2b8f:	e8 be 0d 00 00       	call   3952 <exit>
    printf(1, "mkdir dirfile/xx succeeded!\n");
    2b94:	50                   	push   %eax
    2b95:	50                   	push   %eax
    2b96:	68 d8 4a 00 00       	push   $0x4ad8
    2b9b:	6a 01                	push   $0x1
    2b9d:	e8 fe 0e 00 00       	call   3aa0 <printf>
    exit();
    2ba2:	e8 ab 0d 00 00       	call   3952 <exit>
    2ba7:	89 f6                	mov    %esi,%esi
    2ba9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002bb0 <iref>:
{
    2bb0:	55                   	push   %ebp
    2bb1:	89 e5                	mov    %esp,%ebp
    2bb3:	53                   	push   %ebx
  printf(1, "empty file name\n");
    2bb4:	bb 33 00 00 00       	mov    $0x33,%ebx
{
    2bb9:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "empty file name\n");
    2bbc:	68 56 4b 00 00       	push   $0x4b56
    2bc1:	6a 01                	push   $0x1
    2bc3:	e8 d8 0e 00 00       	call   3aa0 <printf>
    2bc8:	83 c4 10             	add    $0x10,%esp
    2bcb:	90                   	nop
    2bcc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(mkdir("irefd") != 0){
    2bd0:	83 ec 0c             	sub    $0xc,%esp
    2bd3:	68 67 4b 00 00       	push   $0x4b67
    2bd8:	e8 dd 0d 00 00       	call   39ba <mkdir>
    2bdd:	83 c4 10             	add    $0x10,%esp
    2be0:	85 c0                	test   %eax,%eax
    2be2:	0f 85 bb 00 00 00    	jne    2ca3 <iref+0xf3>
    if(chdir("irefd") != 0){
    2be8:	83 ec 0c             	sub    $0xc,%esp
    2beb:	68 67 4b 00 00       	push   $0x4b67
    2bf0:	e8 cd 0d 00 00       	call   39c2 <chdir>
    2bf5:	83 c4 10             	add    $0x10,%esp
    2bf8:	85 c0                	test   %eax,%eax
    2bfa:	0f 85 b7 00 00 00    	jne    2cb7 <iref+0x107>
    mkdir("");
    2c00:	83 ec 0c             	sub    $0xc,%esp
    2c03:	68 1c 42 00 00       	push   $0x421c
    2c08:	e8 ad 0d 00 00       	call   39ba <mkdir>
    link("README", "");
    2c0d:	59                   	pop    %ecx
    2c0e:	58                   	pop    %eax
    2c0f:	68 1c 42 00 00       	push   $0x421c
    2c14:	68 13 4b 00 00       	push   $0x4b13
    2c19:	e8 94 0d 00 00       	call   39b2 <link>
    fd = open("", O_CREATE);
    2c1e:	58                   	pop    %eax
    2c1f:	5a                   	pop    %edx
    2c20:	68 00 02 00 00       	push   $0x200
    2c25:	68 1c 42 00 00       	push   $0x421c
    2c2a:	e8 63 0d 00 00       	call   3992 <open>
    if(fd >= 0)
    2c2f:	83 c4 10             	add    $0x10,%esp
    2c32:	85 c0                	test   %eax,%eax
    2c34:	78 0c                	js     2c42 <iref+0x92>
      close(fd);
    2c36:	83 ec 0c             	sub    $0xc,%esp
    2c39:	50                   	push   %eax
    2c3a:	e8 3b 0d 00 00       	call   397a <close>
    2c3f:	83 c4 10             	add    $0x10,%esp
    fd = open("xx", O_CREATE);
    2c42:	83 ec 08             	sub    $0x8,%esp
    2c45:	68 00 02 00 00       	push   $0x200
    2c4a:	68 51 47 00 00       	push   $0x4751
    2c4f:	e8 3e 0d 00 00       	call   3992 <open>
    if(fd >= 0)
    2c54:	83 c4 10             	add    $0x10,%esp
    2c57:	85 c0                	test   %eax,%eax
    2c59:	78 0c                	js     2c67 <iref+0xb7>
      close(fd);
    2c5b:	83 ec 0c             	sub    $0xc,%esp
    2c5e:	50                   	push   %eax
    2c5f:	e8 16 0d 00 00       	call   397a <close>
    2c64:	83 c4 10             	add    $0x10,%esp
    unlink("xx");
    2c67:	83 ec 0c             	sub    $0xc,%esp
    2c6a:	68 51 47 00 00       	push   $0x4751
    2c6f:	e8 2e 0d 00 00       	call   39a2 <unlink>
  for(i = 0; i < 50 + 1; i++){
    2c74:	83 c4 10             	add    $0x10,%esp
    2c77:	83 eb 01             	sub    $0x1,%ebx
    2c7a:	0f 85 50 ff ff ff    	jne    2bd0 <iref+0x20>
  chdir("/");
    2c80:	83 ec 0c             	sub    $0xc,%esp
    2c83:	68 41 3e 00 00       	push   $0x3e41
    2c88:	e8 35 0d 00 00       	call   39c2 <chdir>
  printf(1, "empty file name OK\n");
    2c8d:	58                   	pop    %eax
    2c8e:	5a                   	pop    %edx
    2c8f:	68 95 4b 00 00       	push   $0x4b95
    2c94:	6a 01                	push   $0x1
    2c96:	e8 05 0e 00 00       	call   3aa0 <printf>
}
    2c9b:	83 c4 10             	add    $0x10,%esp
    2c9e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2ca1:	c9                   	leave  
    2ca2:	c3                   	ret    
      printf(1, "mkdir irefd failed\n");
    2ca3:	83 ec 08             	sub    $0x8,%esp
    2ca6:	68 6d 4b 00 00       	push   $0x4b6d
    2cab:	6a 01                	push   $0x1
    2cad:	e8 ee 0d 00 00       	call   3aa0 <printf>
      exit();
    2cb2:	e8 9b 0c 00 00       	call   3952 <exit>
      printf(1, "chdir irefd failed\n");
    2cb7:	83 ec 08             	sub    $0x8,%esp
    2cba:	68 81 4b 00 00       	push   $0x4b81
    2cbf:	6a 01                	push   $0x1
    2cc1:	e8 da 0d 00 00       	call   3aa0 <printf>
      exit();
    2cc6:	e8 87 0c 00 00       	call   3952 <exit>
    2ccb:	90                   	nop
    2ccc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00002cd0 <forktest>:
{
    2cd0:	55                   	push   %ebp
    2cd1:	89 e5                	mov    %esp,%ebp
    2cd3:	53                   	push   %ebx
  for(n=0; n<1000; n++){
    2cd4:	31 db                	xor    %ebx,%ebx
{
    2cd6:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "fork test\n");
    2cd9:	68 a9 4b 00 00       	push   $0x4ba9
    2cde:	6a 01                	push   $0x1
    2ce0:	e8 bb 0d 00 00       	call   3aa0 <printf>
    2ce5:	83 c4 10             	add    $0x10,%esp
    2ce8:	eb 13                	jmp    2cfd <forktest+0x2d>
    2cea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(pid == 0)
    2cf0:	74 6a                	je     2d5c <forktest+0x8c>
  for(n=0; n<1000; n++){
    2cf2:	83 c3 01             	add    $0x1,%ebx
    2cf5:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    2cfb:	74 4b                	je     2d48 <forktest+0x78>
    pid = fork(0);
    2cfd:	83 ec 0c             	sub    $0xc,%esp
    2d00:	6a 00                	push   $0x0
    2d02:	e8 43 0c 00 00       	call   394a <fork>
    if(pid < 0)
    2d07:	83 c4 10             	add    $0x10,%esp
    2d0a:	85 c0                	test   %eax,%eax
    2d0c:	79 e2                	jns    2cf0 <forktest+0x20>
  for(; n > 0; n--){
    2d0e:	85 db                	test   %ebx,%ebx
    2d10:	74 14                	je     2d26 <forktest+0x56>
    2d12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(wait() < 0){
    2d18:	e8 3d 0c 00 00       	call   395a <wait>
    2d1d:	85 c0                	test   %eax,%eax
    2d1f:	78 40                	js     2d61 <forktest+0x91>
  for(; n > 0; n--){
    2d21:	83 eb 01             	sub    $0x1,%ebx
    2d24:	75 f2                	jne    2d18 <forktest+0x48>
  if(wait() != -1){
    2d26:	e8 2f 0c 00 00       	call   395a <wait>
    2d2b:	83 f8 ff             	cmp    $0xffffffff,%eax
    2d2e:	75 45                	jne    2d75 <forktest+0xa5>
  printf(1, "fork test OK\n");
    2d30:	83 ec 08             	sub    $0x8,%esp
    2d33:	68 db 4b 00 00       	push   $0x4bdb
    2d38:	6a 01                	push   $0x1
    2d3a:	e8 61 0d 00 00       	call   3aa0 <printf>
}
    2d3f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2d42:	c9                   	leave  
    2d43:	c3                   	ret    
    2d44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "fork claimed to work 1000 times!\n");
    2d48:	83 ec 08             	sub    $0x8,%esp
    2d4b:	68 48 53 00 00       	push   $0x5348
    2d50:	6a 01                	push   $0x1
    2d52:	e8 49 0d 00 00       	call   3aa0 <printf>
    exit();
    2d57:	e8 f6 0b 00 00       	call   3952 <exit>
      exit();
    2d5c:	e8 f1 0b 00 00       	call   3952 <exit>
      printf(1, "wait stopped early\n");
    2d61:	83 ec 08             	sub    $0x8,%esp
    2d64:	68 b4 4b 00 00       	push   $0x4bb4
    2d69:	6a 01                	push   $0x1
    2d6b:	e8 30 0d 00 00       	call   3aa0 <printf>
      exit();
    2d70:	e8 dd 0b 00 00       	call   3952 <exit>
    printf(1, "wait got too many\n");
    2d75:	50                   	push   %eax
    2d76:	50                   	push   %eax
    2d77:	68 c8 4b 00 00       	push   $0x4bc8
    2d7c:	6a 01                	push   $0x1
    2d7e:	e8 1d 0d 00 00       	call   3aa0 <printf>
    exit();
    2d83:	e8 ca 0b 00 00       	call   3952 <exit>
    2d88:	90                   	nop
    2d89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00002d90 <sbrktest>:
{
    2d90:	55                   	push   %ebp
    2d91:	89 e5                	mov    %esp,%ebp
    2d93:	57                   	push   %edi
    2d94:	56                   	push   %esi
    2d95:	53                   	push   %ebx
  for(i = 0; i < 5000; i++){
    2d96:	31 ff                	xor    %edi,%edi
{
    2d98:	83 ec 64             	sub    $0x64,%esp
  printf(stdout, "sbrk test\n");
    2d9b:	68 e9 4b 00 00       	push   $0x4be9
    2da0:	ff 35 a8 5e 00 00    	pushl  0x5ea8
    2da6:	e8 f5 0c 00 00       	call   3aa0 <printf>
  oldbrk = sbrk(0);
    2dab:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2db2:	e8 23 0c 00 00       	call   39da <sbrk>
  a = sbrk(0);
    2db7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  oldbrk = sbrk(0);
    2dbe:	89 c3                	mov    %eax,%ebx
  a = sbrk(0);
    2dc0:	e8 15 0c 00 00       	call   39da <sbrk>
    2dc5:	83 c4 10             	add    $0x10,%esp
    2dc8:	89 c6                	mov    %eax,%esi
    2dca:	eb 06                	jmp    2dd2 <sbrktest+0x42>
    2dcc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    a = b + 1;
    2dd0:	89 c6                	mov    %eax,%esi
    b = sbrk(1);
    2dd2:	83 ec 0c             	sub    $0xc,%esp
    2dd5:	6a 01                	push   $0x1
    2dd7:	e8 fe 0b 00 00       	call   39da <sbrk>
    if(b != a){
    2ddc:	83 c4 10             	add    $0x10,%esp
    2ddf:	39 f0                	cmp    %esi,%eax
    2de1:	0f 85 7a 02 00 00    	jne    3061 <sbrktest+0x2d1>
  for(i = 0; i < 5000; i++){
    2de7:	83 c7 01             	add    $0x1,%edi
    *b = 1;
    2dea:	c6 06 01             	movb   $0x1,(%esi)
    a = b + 1;
    2ded:	8d 46 01             	lea    0x1(%esi),%eax
  for(i = 0; i < 5000; i++){
    2df0:	81 ff 88 13 00 00    	cmp    $0x1388,%edi
    2df6:	75 d8                	jne    2dd0 <sbrktest+0x40>
  pid = fork(0);
    2df8:	83 ec 0c             	sub    $0xc,%esp
    2dfb:	6a 00                	push   $0x0
    2dfd:	e8 48 0b 00 00       	call   394a <fork>
  if(pid < 0){
    2e02:	83 c4 10             	add    $0x10,%esp
    2e05:	85 c0                	test   %eax,%eax
  pid = fork(0);
    2e07:	89 c7                	mov    %eax,%edi
  if(pid < 0){
    2e09:	0f 88 92 03 00 00    	js     31a1 <sbrktest+0x411>
  c = sbrk(1);
    2e0f:	83 ec 0c             	sub    $0xc,%esp
  if(c != a + 1){
    2e12:	83 c6 02             	add    $0x2,%esi
  c = sbrk(1);
    2e15:	6a 01                	push   $0x1
    2e17:	e8 be 0b 00 00       	call   39da <sbrk>
  c = sbrk(1);
    2e1c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e23:	e8 b2 0b 00 00       	call   39da <sbrk>
  if(c != a + 1){
    2e28:	83 c4 10             	add    $0x10,%esp
    2e2b:	39 f0                	cmp    %esi,%eax
    2e2d:	0f 85 57 03 00 00    	jne    318a <sbrktest+0x3fa>
  if(pid == 0)
    2e33:	85 ff                	test   %edi,%edi
    2e35:	0f 84 4a 03 00 00    	je     3185 <sbrktest+0x3f5>
  wait();
    2e3b:	e8 1a 0b 00 00       	call   395a <wait>
  a = sbrk(0);
    2e40:	83 ec 0c             	sub    $0xc,%esp
    2e43:	6a 00                	push   $0x0
    2e45:	e8 90 0b 00 00       	call   39da <sbrk>
    2e4a:	89 c6                	mov    %eax,%esi
  amt = (BIG) - (uint)a;
    2e4c:	b8 00 00 40 06       	mov    $0x6400000,%eax
    2e51:	29 f0                	sub    %esi,%eax
  p = sbrk(amt);
    2e53:	89 04 24             	mov    %eax,(%esp)
    2e56:	e8 7f 0b 00 00       	call   39da <sbrk>
  if (p != a) {
    2e5b:	83 c4 10             	add    $0x10,%esp
    2e5e:	39 c6                	cmp    %eax,%esi
    2e60:	0f 85 08 03 00 00    	jne    316e <sbrktest+0x3de>
  a = sbrk(0);
    2e66:	83 ec 0c             	sub    $0xc,%esp
  *lastaddr = 99;
    2e69:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff
  a = sbrk(0);
    2e70:	6a 00                	push   $0x0
    2e72:	e8 63 0b 00 00       	call   39da <sbrk>
  c = sbrk(-4096);
    2e77:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
  a = sbrk(0);
    2e7e:	89 c6                	mov    %eax,%esi
  c = sbrk(-4096);
    2e80:	e8 55 0b 00 00       	call   39da <sbrk>
  if(c == (char*)0xffffffff){
    2e85:	83 c4 10             	add    $0x10,%esp
    2e88:	83 f8 ff             	cmp    $0xffffffff,%eax
    2e8b:	0f 84 c6 02 00 00    	je     3157 <sbrktest+0x3c7>
  c = sbrk(0);
    2e91:	83 ec 0c             	sub    $0xc,%esp
    2e94:	6a 00                	push   $0x0
    2e96:	e8 3f 0b 00 00       	call   39da <sbrk>
  if(c != a - 4096){
    2e9b:	8d 96 00 f0 ff ff    	lea    -0x1000(%esi),%edx
    2ea1:	83 c4 10             	add    $0x10,%esp
    2ea4:	39 d0                	cmp    %edx,%eax
    2ea6:	0f 85 94 02 00 00    	jne    3140 <sbrktest+0x3b0>
  a = sbrk(0);
    2eac:	83 ec 0c             	sub    $0xc,%esp
    2eaf:	6a 00                	push   $0x0
    2eb1:	e8 24 0b 00 00       	call   39da <sbrk>
    2eb6:	89 c6                	mov    %eax,%esi
  c = sbrk(4096);
    2eb8:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
    2ebf:	e8 16 0b 00 00       	call   39da <sbrk>
  if(c != a || sbrk(0) != a + 4096){
    2ec4:	83 c4 10             	add    $0x10,%esp
    2ec7:	39 c6                	cmp    %eax,%esi
  c = sbrk(4096);
    2ec9:	89 c7                	mov    %eax,%edi
  if(c != a || sbrk(0) != a + 4096){
    2ecb:	0f 85 58 02 00 00    	jne    3129 <sbrktest+0x399>
    2ed1:	83 ec 0c             	sub    $0xc,%esp
    2ed4:	6a 00                	push   $0x0
    2ed6:	e8 ff 0a 00 00       	call   39da <sbrk>
    2edb:	8d 96 00 10 00 00    	lea    0x1000(%esi),%edx
    2ee1:	83 c4 10             	add    $0x10,%esp
    2ee4:	39 d0                	cmp    %edx,%eax
    2ee6:	0f 85 3d 02 00 00    	jne    3129 <sbrktest+0x399>
  if(*lastaddr == 99){
    2eec:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    2ef3:	0f 84 19 02 00 00    	je     3112 <sbrktest+0x382>
  a = sbrk(0);
    2ef9:	83 ec 0c             	sub    $0xc,%esp
    2efc:	6a 00                	push   $0x0
    2efe:	e8 d7 0a 00 00       	call   39da <sbrk>
  c = sbrk(-(sbrk(0) - oldbrk));
    2f03:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  a = sbrk(0);
    2f0a:	89 c6                	mov    %eax,%esi
  c = sbrk(-(sbrk(0) - oldbrk));
    2f0c:	e8 c9 0a 00 00       	call   39da <sbrk>
    2f11:	89 d9                	mov    %ebx,%ecx
    2f13:	29 c1                	sub    %eax,%ecx
    2f15:	89 0c 24             	mov    %ecx,(%esp)
    2f18:	e8 bd 0a 00 00       	call   39da <sbrk>
  if(c != a){
    2f1d:	83 c4 10             	add    $0x10,%esp
    2f20:	39 c6                	cmp    %eax,%esi
    2f22:	0f 85 d3 01 00 00    	jne    30fb <sbrktest+0x36b>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    2f28:	be 00 00 00 80       	mov    $0x80000000,%esi
    ppid = getpid();
    2f2d:	e8 a0 0a 00 00       	call   39d2 <getpid>
    pid = fork(0);
    2f32:	83 ec 0c             	sub    $0xc,%esp
    ppid = getpid();
    2f35:	89 c7                	mov    %eax,%edi
    pid = fork(0);
    2f37:	6a 00                	push   $0x0
    2f39:	e8 0c 0a 00 00       	call   394a <fork>
    if(pid < 0){
    2f3e:	83 c4 10             	add    $0x10,%esp
    2f41:	85 c0                	test   %eax,%eax
    2f43:	0f 88 9b 01 00 00    	js     30e4 <sbrktest+0x354>
    if(pid == 0){
    2f49:	0f 84 73 01 00 00    	je     30c2 <sbrktest+0x332>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    2f4f:	81 c6 50 c3 00 00    	add    $0xc350,%esi
    wait();
    2f55:	e8 00 0a 00 00       	call   395a <wait>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    2f5a:	81 fe 80 84 1e 80    	cmp    $0x801e8480,%esi
    2f60:	75 cb                	jne    2f2d <sbrktest+0x19d>
  if(pipe(fds) != 0){
    2f62:	8d 45 b8             	lea    -0x48(%ebp),%eax
    2f65:	83 ec 0c             	sub    $0xc,%esp
    2f68:	50                   	push   %eax
    2f69:	e8 f4 09 00 00       	call   3962 <pipe>
    2f6e:	83 c4 10             	add    $0x10,%esp
    2f71:	85 c0                	test   %eax,%eax
    2f73:	0f 85 36 01 00 00    	jne    30af <sbrktest+0x31f>
    2f79:	8d 7d c0             	lea    -0x40(%ebp),%edi
    2f7c:	89 fe                	mov    %edi,%esi
    2f7e:	eb 23                	jmp    2fa3 <sbrktest+0x213>
    if(pids[i] != -1)
    2f80:	83 f8 ff             	cmp    $0xffffffff,%eax
    2f83:	74 14                	je     2f99 <sbrktest+0x209>
      read(fds[0], &scratch, 1);
    2f85:	8d 45 b7             	lea    -0x49(%ebp),%eax
    2f88:	83 ec 04             	sub    $0x4,%esp
    2f8b:	6a 01                	push   $0x1
    2f8d:	50                   	push   %eax
    2f8e:	ff 75 b8             	pushl  -0x48(%ebp)
    2f91:	e8 d4 09 00 00       	call   396a <read>
    2f96:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    2f99:	8d 45 e8             	lea    -0x18(%ebp),%eax
    2f9c:	83 c6 04             	add    $0x4,%esi
    2f9f:	39 c6                	cmp    %eax,%esi
    2fa1:	74 57                	je     2ffa <sbrktest+0x26a>
    if((pids[i] = fork(0)) == 0){
    2fa3:	83 ec 0c             	sub    $0xc,%esp
    2fa6:	6a 00                	push   $0x0
    2fa8:	e8 9d 09 00 00       	call   394a <fork>
    2fad:	83 c4 10             	add    $0x10,%esp
    2fb0:	85 c0                	test   %eax,%eax
    2fb2:	89 06                	mov    %eax,(%esi)
    2fb4:	75 ca                	jne    2f80 <sbrktest+0x1f0>
      sbrk(BIG - (uint)sbrk(0));
    2fb6:	83 ec 0c             	sub    $0xc,%esp
    2fb9:	6a 00                	push   $0x0
    2fbb:	e8 1a 0a 00 00       	call   39da <sbrk>
    2fc0:	ba 00 00 40 06       	mov    $0x6400000,%edx
    2fc5:	29 c2                	sub    %eax,%edx
    2fc7:	89 14 24             	mov    %edx,(%esp)
    2fca:	e8 0b 0a 00 00       	call   39da <sbrk>
      write(fds[1], "x", 1);
    2fcf:	83 c4 0c             	add    $0xc,%esp
    2fd2:	6a 01                	push   $0x1
    2fd4:	68 52 47 00 00       	push   $0x4752
    2fd9:	ff 75 bc             	pushl  -0x44(%ebp)
    2fdc:	e8 91 09 00 00       	call   3972 <write>
    2fe1:	83 c4 10             	add    $0x10,%esp
    2fe4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      for(;;) sleep(1000);
    2fe8:	83 ec 0c             	sub    $0xc,%esp
    2feb:	68 e8 03 00 00       	push   $0x3e8
    2ff0:	e8 ed 09 00 00       	call   39e2 <sleep>
    2ff5:	83 c4 10             	add    $0x10,%esp
    2ff8:	eb ee                	jmp    2fe8 <sbrktest+0x258>
  c = sbrk(4096);
    2ffa:	83 ec 0c             	sub    $0xc,%esp
    2ffd:	68 00 10 00 00       	push   $0x1000
    3002:	e8 d3 09 00 00       	call   39da <sbrk>
    3007:	83 c4 10             	add    $0x10,%esp
    300a:	89 45 a4             	mov    %eax,-0x5c(%ebp)
    if(pids[i] == -1)
    300d:	8b 07                	mov    (%edi),%eax
    300f:	83 f8 ff             	cmp    $0xffffffff,%eax
    3012:	74 11                	je     3025 <sbrktest+0x295>
    kill(pids[i]);
    3014:	83 ec 0c             	sub    $0xc,%esp
    3017:	50                   	push   %eax
    3018:	e8 65 09 00 00       	call   3982 <kill>
    wait();
    301d:	e8 38 09 00 00       	call   395a <wait>
    3022:	83 c4 10             	add    $0x10,%esp
    3025:	83 c7 04             	add    $0x4,%edi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    3028:	39 fe                	cmp    %edi,%esi
    302a:	75 e1                	jne    300d <sbrktest+0x27d>
  if(c == (char*)0xffffffff){
    302c:	83 7d a4 ff          	cmpl   $0xffffffff,-0x5c(%ebp)
    3030:	74 66                	je     3098 <sbrktest+0x308>
  if(sbrk(0) > oldbrk)
    3032:	83 ec 0c             	sub    $0xc,%esp
    3035:	6a 00                	push   $0x0
    3037:	e8 9e 09 00 00       	call   39da <sbrk>
    303c:	83 c4 10             	add    $0x10,%esp
    303f:	39 d8                	cmp    %ebx,%eax
    3041:	77 3c                	ja     307f <sbrktest+0x2ef>
  printf(stdout, "sbrk test OK\n");
    3043:	83 ec 08             	sub    $0x8,%esp
    3046:	68 91 4c 00 00       	push   $0x4c91
    304b:	ff 35 a8 5e 00 00    	pushl  0x5ea8
    3051:	e8 4a 0a 00 00       	call   3aa0 <printf>
}
    3056:	83 c4 10             	add    $0x10,%esp
    3059:	8d 65 f4             	lea    -0xc(%ebp),%esp
    305c:	5b                   	pop    %ebx
    305d:	5e                   	pop    %esi
    305e:	5f                   	pop    %edi
    305f:	5d                   	pop    %ebp
    3060:	c3                   	ret    
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
    3061:	83 ec 0c             	sub    $0xc,%esp
    3064:	50                   	push   %eax
    3065:	56                   	push   %esi
    3066:	57                   	push   %edi
    3067:	68 f4 4b 00 00       	push   $0x4bf4
    306c:	ff 35 a8 5e 00 00    	pushl  0x5ea8
    3072:	e8 29 0a 00 00       	call   3aa0 <printf>
      exit();
    3077:	83 c4 20             	add    $0x20,%esp
    307a:	e8 d3 08 00 00       	call   3952 <exit>
    sbrk(-(sbrk(0) - oldbrk));
    307f:	83 ec 0c             	sub    $0xc,%esp
    3082:	6a 00                	push   $0x0
    3084:	e8 51 09 00 00       	call   39da <sbrk>
    3089:	29 c3                	sub    %eax,%ebx
    308b:	89 1c 24             	mov    %ebx,(%esp)
    308e:	e8 47 09 00 00       	call   39da <sbrk>
    3093:	83 c4 10             	add    $0x10,%esp
    3096:	eb ab                	jmp    3043 <sbrktest+0x2b3>
    printf(stdout, "failed sbrk leaked memory\n");
    3098:	50                   	push   %eax
    3099:	50                   	push   %eax
    309a:	68 76 4c 00 00       	push   $0x4c76
    309f:	ff 35 a8 5e 00 00    	pushl  0x5ea8
    30a5:	e8 f6 09 00 00       	call   3aa0 <printf>
    exit();
    30aa:	e8 a3 08 00 00       	call   3952 <exit>
    printf(1, "pipe() failed\n");
    30af:	52                   	push   %edx
    30b0:	52                   	push   %edx
    30b1:	68 31 41 00 00       	push   $0x4131
    30b6:	6a 01                	push   $0x1
    30b8:	e8 e3 09 00 00       	call   3aa0 <printf>
    exit();
    30bd:	e8 90 08 00 00       	call   3952 <exit>
      printf(stdout, "oops could read %x = %x\n", a, *a);
    30c2:	0f be 06             	movsbl (%esi),%eax
    30c5:	50                   	push   %eax
    30c6:	56                   	push   %esi
    30c7:	68 5d 4c 00 00       	push   $0x4c5d
    30cc:	ff 35 a8 5e 00 00    	pushl  0x5ea8
    30d2:	e8 c9 09 00 00       	call   3aa0 <printf>
      kill(ppid);
    30d7:	89 3c 24             	mov    %edi,(%esp)
    30da:	e8 a3 08 00 00       	call   3982 <kill>
      exit();
    30df:	e8 6e 08 00 00       	call   3952 <exit>
      printf(stdout, "fork failed\n");
    30e4:	51                   	push   %ecx
    30e5:	51                   	push   %ecx
    30e6:	68 3a 4d 00 00       	push   $0x4d3a
    30eb:	ff 35 a8 5e 00 00    	pushl  0x5ea8
    30f1:	e8 aa 09 00 00       	call   3aa0 <printf>
      exit();
    30f6:	e8 57 08 00 00       	call   3952 <exit>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    30fb:	50                   	push   %eax
    30fc:	56                   	push   %esi
    30fd:	68 3c 54 00 00       	push   $0x543c
    3102:	ff 35 a8 5e 00 00    	pushl  0x5ea8
    3108:	e8 93 09 00 00       	call   3aa0 <printf>
    exit();
    310d:	e8 40 08 00 00       	call   3952 <exit>
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    3112:	53                   	push   %ebx
    3113:	53                   	push   %ebx
    3114:	68 0c 54 00 00       	push   $0x540c
    3119:	ff 35 a8 5e 00 00    	pushl  0x5ea8
    311f:	e8 7c 09 00 00       	call   3aa0 <printf>
    exit();
    3124:	e8 29 08 00 00       	call   3952 <exit>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    3129:	57                   	push   %edi
    312a:	56                   	push   %esi
    312b:	68 e4 53 00 00       	push   $0x53e4
    3130:	ff 35 a8 5e 00 00    	pushl  0x5ea8
    3136:	e8 65 09 00 00       	call   3aa0 <printf>
    exit();
    313b:	e8 12 08 00 00       	call   3952 <exit>
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    3140:	50                   	push   %eax
    3141:	56                   	push   %esi
    3142:	68 ac 53 00 00       	push   $0x53ac
    3147:	ff 35 a8 5e 00 00    	pushl  0x5ea8
    314d:	e8 4e 09 00 00       	call   3aa0 <printf>
    exit();
    3152:	e8 fb 07 00 00       	call   3952 <exit>
    printf(stdout, "sbrk could not deallocate\n");
    3157:	56                   	push   %esi
    3158:	56                   	push   %esi
    3159:	68 42 4c 00 00       	push   $0x4c42
    315e:	ff 35 a8 5e 00 00    	pushl  0x5ea8
    3164:	e8 37 09 00 00       	call   3aa0 <printf>
    exit();
    3169:	e8 e4 07 00 00       	call   3952 <exit>
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    316e:	57                   	push   %edi
    316f:	57                   	push   %edi
    3170:	68 6c 53 00 00       	push   $0x536c
    3175:	ff 35 a8 5e 00 00    	pushl  0x5ea8
    317b:	e8 20 09 00 00       	call   3aa0 <printf>
    exit();
    3180:	e8 cd 07 00 00       	call   3952 <exit>
    exit();
    3185:	e8 c8 07 00 00       	call   3952 <exit>
    printf(stdout, "sbrk test failed post-fork\n");
    318a:	50                   	push   %eax
    318b:	50                   	push   %eax
    318c:	68 26 4c 00 00       	push   $0x4c26
    3191:	ff 35 a8 5e 00 00    	pushl  0x5ea8
    3197:	e8 04 09 00 00       	call   3aa0 <printf>
    exit();
    319c:	e8 b1 07 00 00       	call   3952 <exit>
    printf(stdout, "sbrk test fork failed\n");
    31a1:	50                   	push   %eax
    31a2:	50                   	push   %eax
    31a3:	68 0f 4c 00 00       	push   $0x4c0f
    31a8:	ff 35 a8 5e 00 00    	pushl  0x5ea8
    31ae:	e8 ed 08 00 00       	call   3aa0 <printf>
    exit();
    31b3:	e8 9a 07 00 00       	call   3952 <exit>
    31b8:	90                   	nop
    31b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000031c0 <validateint>:
{
    31c0:	55                   	push   %ebp
    31c1:	89 e5                	mov    %esp,%ebp
}
    31c3:	5d                   	pop    %ebp
    31c4:	c3                   	ret    
    31c5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    31c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000031d0 <validatetest>:
{
    31d0:	55                   	push   %ebp
    31d1:	89 e5                	mov    %esp,%ebp
    31d3:	56                   	push   %esi
    31d4:	53                   	push   %ebx
  for(p = 0; p <= (uint)hi; p += 4096){
    31d5:	31 db                	xor    %ebx,%ebx
  printf(stdout, "validate test\n");
    31d7:	83 ec 08             	sub    $0x8,%esp
    31da:	68 9f 4c 00 00       	push   $0x4c9f
    31df:	ff 35 a8 5e 00 00    	pushl  0x5ea8
    31e5:	e8 b6 08 00 00       	call   3aa0 <printf>
    31ea:	83 c4 10             	add    $0x10,%esp
    31ed:	8d 76 00             	lea    0x0(%esi),%esi
    if((pid = fork(0)) == 0){
    31f0:	83 ec 0c             	sub    $0xc,%esp
    31f3:	6a 00                	push   $0x0
    31f5:	e8 50 07 00 00       	call   394a <fork>
    31fa:	83 c4 10             	add    $0x10,%esp
    31fd:	85 c0                	test   %eax,%eax
    31ff:	89 c6                	mov    %eax,%esi
    3201:	74 63                	je     3266 <validatetest+0x96>
    sleep(0);
    3203:	83 ec 0c             	sub    $0xc,%esp
    3206:	6a 00                	push   $0x0
    3208:	e8 d5 07 00 00       	call   39e2 <sleep>
    sleep(0);
    320d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3214:	e8 c9 07 00 00       	call   39e2 <sleep>
    kill(pid);
    3219:	89 34 24             	mov    %esi,(%esp)
    321c:	e8 61 07 00 00       	call   3982 <kill>
    wait();
    3221:	e8 34 07 00 00       	call   395a <wait>
    if(link("nosuchfile", (char*)p) != -1){
    3226:	58                   	pop    %eax
    3227:	5a                   	pop    %edx
    3228:	53                   	push   %ebx
    3229:	68 ae 4c 00 00       	push   $0x4cae
    322e:	e8 7f 07 00 00       	call   39b2 <link>
    3233:	83 c4 10             	add    $0x10,%esp
    3236:	83 f8 ff             	cmp    $0xffffffff,%eax
    3239:	75 30                	jne    326b <validatetest+0x9b>
  for(p = 0; p <= (uint)hi; p += 4096){
    323b:	81 c3 00 10 00 00    	add    $0x1000,%ebx
    3241:	81 fb 00 40 11 00    	cmp    $0x114000,%ebx
    3247:	75 a7                	jne    31f0 <validatetest+0x20>
  printf(stdout, "validate ok\n");
    3249:	83 ec 08             	sub    $0x8,%esp
    324c:	68 d2 4c 00 00       	push   $0x4cd2
    3251:	ff 35 a8 5e 00 00    	pushl  0x5ea8
    3257:	e8 44 08 00 00       	call   3aa0 <printf>
}
    325c:	83 c4 10             	add    $0x10,%esp
    325f:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3262:	5b                   	pop    %ebx
    3263:	5e                   	pop    %esi
    3264:	5d                   	pop    %ebp
    3265:	c3                   	ret    
      exit();
    3266:	e8 e7 06 00 00       	call   3952 <exit>
      printf(stdout, "link should not succeed\n");
    326b:	83 ec 08             	sub    $0x8,%esp
    326e:	68 b9 4c 00 00       	push   $0x4cb9
    3273:	ff 35 a8 5e 00 00    	pushl  0x5ea8
    3279:	e8 22 08 00 00       	call   3aa0 <printf>
      exit();
    327e:	e8 cf 06 00 00       	call   3952 <exit>
    3283:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3289:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003290 <bsstest>:
{
    3290:	55                   	push   %ebp
    3291:	89 e5                	mov    %esp,%ebp
    3293:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "bss test\n");
    3296:	68 df 4c 00 00       	push   $0x4cdf
    329b:	ff 35 a8 5e 00 00    	pushl  0x5ea8
    32a1:	e8 fa 07 00 00       	call   3aa0 <printf>
    if(uninit[i] != '\0'){
    32a6:	83 c4 10             	add    $0x10,%esp
    32a9:	80 3d 60 5f 00 00 00 	cmpb   $0x0,0x5f60
    32b0:	75 39                	jne    32eb <bsstest+0x5b>
  for(i = 0; i < sizeof(uninit); i++){
    32b2:	b8 01 00 00 00       	mov    $0x1,%eax
    32b7:	89 f6                	mov    %esi,%esi
    32b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    if(uninit[i] != '\0'){
    32c0:	80 b8 60 5f 00 00 00 	cmpb   $0x0,0x5f60(%eax)
    32c7:	75 22                	jne    32eb <bsstest+0x5b>
  for(i = 0; i < sizeof(uninit); i++){
    32c9:	83 c0 01             	add    $0x1,%eax
    32cc:	3d 10 27 00 00       	cmp    $0x2710,%eax
    32d1:	75 ed                	jne    32c0 <bsstest+0x30>
  printf(stdout, "bss test ok\n");
    32d3:	83 ec 08             	sub    $0x8,%esp
    32d6:	68 fa 4c 00 00       	push   $0x4cfa
    32db:	ff 35 a8 5e 00 00    	pushl  0x5ea8
    32e1:	e8 ba 07 00 00       	call   3aa0 <printf>
}
    32e6:	83 c4 10             	add    $0x10,%esp
    32e9:	c9                   	leave  
    32ea:	c3                   	ret    
      printf(stdout, "bss test failed\n");
    32eb:	83 ec 08             	sub    $0x8,%esp
    32ee:	68 e9 4c 00 00       	push   $0x4ce9
    32f3:	ff 35 a8 5e 00 00    	pushl  0x5ea8
    32f9:	e8 a2 07 00 00       	call   3aa0 <printf>
      exit();
    32fe:	e8 4f 06 00 00       	call   3952 <exit>
    3303:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3309:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003310 <bigargtest>:
{
    3310:	55                   	push   %ebp
    3311:	89 e5                	mov    %esp,%ebp
    3313:	83 ec 14             	sub    $0x14,%esp
  unlink("bigarg-ok");
    3316:	68 07 4d 00 00       	push   $0x4d07
    331b:	e8 82 06 00 00       	call   39a2 <unlink>
  pid = fork(0);
    3320:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3327:	e8 1e 06 00 00       	call   394a <fork>
  if(pid == 0){
    332c:	83 c4 10             	add    $0x10,%esp
    332f:	85 c0                	test   %eax,%eax
    3331:	74 3f                	je     3372 <bigargtest+0x62>
  } else if(pid < 0){
    3333:	0f 88 cb 00 00 00    	js     3404 <bigargtest+0xf4>
  wait();
    3339:	e8 1c 06 00 00       	call   395a <wait>
  fd = open("bigarg-ok", 0);
    333e:	83 ec 08             	sub    $0x8,%esp
    3341:	6a 00                	push   $0x0
    3343:	68 07 4d 00 00       	push   $0x4d07
    3348:	e8 45 06 00 00       	call   3992 <open>
  if(fd < 0){
    334d:	83 c4 10             	add    $0x10,%esp
    3350:	85 c0                	test   %eax,%eax
    3352:	0f 88 95 00 00 00    	js     33ed <bigargtest+0xdd>
  close(fd);
    3358:	83 ec 0c             	sub    $0xc,%esp
    335b:	50                   	push   %eax
    335c:	e8 19 06 00 00       	call   397a <close>
  unlink("bigarg-ok");
    3361:	c7 04 24 07 4d 00 00 	movl   $0x4d07,(%esp)
    3368:	e8 35 06 00 00       	call   39a2 <unlink>
}
    336d:	83 c4 10             	add    $0x10,%esp
    3370:	c9                   	leave  
    3371:	c3                   	ret    
    3372:	b8 c0 5e 00 00       	mov    $0x5ec0,%eax
    3377:	89 f6                	mov    %esi,%esi
    3379:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    3380:	c7 00 60 54 00 00    	movl   $0x5460,(%eax)
    3386:	83 c0 04             	add    $0x4,%eax
    for(i = 0; i < MAXARG-1; i++)
    3389:	3d 3c 5f 00 00       	cmp    $0x5f3c,%eax
    338e:	75 f0                	jne    3380 <bigargtest+0x70>
    printf(stdout, "bigarg test\n");
    3390:	51                   	push   %ecx
    3391:	51                   	push   %ecx
    3392:	68 11 4d 00 00       	push   $0x4d11
    3397:	ff 35 a8 5e 00 00    	pushl  0x5ea8
    args[MAXARG-1] = 0;
    339d:	c7 05 3c 5f 00 00 00 	movl   $0x0,0x5f3c
    33a4:	00 00 00 
    printf(stdout, "bigarg test\n");
    33a7:	e8 f4 06 00 00       	call   3aa0 <printf>
    exec("echo", args);
    33ac:	58                   	pop    %eax
    33ad:	5a                   	pop    %edx
    33ae:	68 c0 5e 00 00       	push   $0x5ec0
    33b3:	68 dd 3e 00 00       	push   $0x3edd
    33b8:	e8 cd 05 00 00       	call   398a <exec>
    printf(stdout, "bigarg test ok\n");
    33bd:	59                   	pop    %ecx
    33be:	58                   	pop    %eax
    33bf:	68 1e 4d 00 00       	push   $0x4d1e
    33c4:	ff 35 a8 5e 00 00    	pushl  0x5ea8
    33ca:	e8 d1 06 00 00       	call   3aa0 <printf>
    fd = open("bigarg-ok", O_CREATE);
    33cf:	58                   	pop    %eax
    33d0:	5a                   	pop    %edx
    33d1:	68 00 02 00 00       	push   $0x200
    33d6:	68 07 4d 00 00       	push   $0x4d07
    33db:	e8 b2 05 00 00       	call   3992 <open>
    close(fd);
    33e0:	89 04 24             	mov    %eax,(%esp)
    33e3:	e8 92 05 00 00       	call   397a <close>
    exit();
    33e8:	e8 65 05 00 00       	call   3952 <exit>
    printf(stdout, "bigarg test failed!\n");
    33ed:	50                   	push   %eax
    33ee:	50                   	push   %eax
    33ef:	68 47 4d 00 00       	push   $0x4d47
    33f4:	ff 35 a8 5e 00 00    	pushl  0x5ea8
    33fa:	e8 a1 06 00 00       	call   3aa0 <printf>
    exit();
    33ff:	e8 4e 05 00 00       	call   3952 <exit>
    printf(stdout, "bigargtest: fork failed\n");
    3404:	52                   	push   %edx
    3405:	52                   	push   %edx
    3406:	68 2e 4d 00 00       	push   $0x4d2e
    340b:	ff 35 a8 5e 00 00    	pushl  0x5ea8
    3411:	e8 8a 06 00 00       	call   3aa0 <printf>
    exit();
    3416:	e8 37 05 00 00       	call   3952 <exit>
    341b:	90                   	nop
    341c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003420 <fsfull>:
{
    3420:	55                   	push   %ebp
    3421:	89 e5                	mov    %esp,%ebp
    3423:	57                   	push   %edi
    3424:	56                   	push   %esi
    3425:	53                   	push   %ebx
  for(nfiles = 0; ; nfiles++){
    3426:	31 db                	xor    %ebx,%ebx
{
    3428:	83 ec 54             	sub    $0x54,%esp
  printf(1, "fsfull test\n");
    342b:	68 5c 4d 00 00       	push   $0x4d5c
    3430:	6a 01                	push   $0x1
    3432:	e8 69 06 00 00       	call   3aa0 <printf>
    3437:	83 c4 10             	add    $0x10,%esp
    343a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    name[1] = '0' + nfiles / 1000;
    3440:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    3445:	b9 cd cc cc cc       	mov    $0xcccccccd,%ecx
    printf(1, "writing %s\n", name);
    344a:	83 ec 04             	sub    $0x4,%esp
    name[1] = '0' + nfiles / 1000;
    344d:	f7 e3                	mul    %ebx
    name[0] = 'f';
    344f:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[5] = '\0';
    3453:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    3457:	c1 ea 06             	shr    $0x6,%edx
    345a:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    345d:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    3463:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    3466:	89 d8                	mov    %ebx,%eax
    3468:	29 d0                	sub    %edx,%eax
    346a:	89 c2                	mov    %eax,%edx
    346c:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    3471:	f7 e2                	mul    %edx
    name[3] = '0' + (nfiles % 100) / 10;
    3473:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3478:	c1 ea 05             	shr    $0x5,%edx
    347b:	83 c2 30             	add    $0x30,%edx
    347e:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    3481:	f7 e3                	mul    %ebx
    3483:	89 d8                	mov    %ebx,%eax
    3485:	c1 ea 05             	shr    $0x5,%edx
    3488:	6b d2 64             	imul   $0x64,%edx,%edx
    348b:	29 d0                	sub    %edx,%eax
    348d:	f7 e1                	mul    %ecx
    name[4] = '0' + (nfiles % 10);
    348f:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    3491:	c1 ea 03             	shr    $0x3,%edx
    3494:	83 c2 30             	add    $0x30,%edx
    3497:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    349a:	f7 e1                	mul    %ecx
    349c:	89 d9                	mov    %ebx,%ecx
    349e:	c1 ea 03             	shr    $0x3,%edx
    34a1:	8d 04 92             	lea    (%edx,%edx,4),%eax
    34a4:	01 c0                	add    %eax,%eax
    34a6:	29 c1                	sub    %eax,%ecx
    34a8:	89 c8                	mov    %ecx,%eax
    34aa:	83 c0 30             	add    $0x30,%eax
    34ad:	88 45 ac             	mov    %al,-0x54(%ebp)
    printf(1, "writing %s\n", name);
    34b0:	8d 45 a8             	lea    -0x58(%ebp),%eax
    34b3:	50                   	push   %eax
    34b4:	68 69 4d 00 00       	push   $0x4d69
    34b9:	6a 01                	push   $0x1
    34bb:	e8 e0 05 00 00       	call   3aa0 <printf>
    int fd = open(name, O_CREATE|O_RDWR);
    34c0:	58                   	pop    %eax
    34c1:	8d 45 a8             	lea    -0x58(%ebp),%eax
    34c4:	5a                   	pop    %edx
    34c5:	68 02 02 00 00       	push   $0x202
    34ca:	50                   	push   %eax
    34cb:	e8 c2 04 00 00       	call   3992 <open>
    if(fd < 0){
    34d0:	83 c4 10             	add    $0x10,%esp
    34d3:	85 c0                	test   %eax,%eax
    int fd = open(name, O_CREATE|O_RDWR);
    34d5:	89 c7                	mov    %eax,%edi
    if(fd < 0){
    34d7:	78 57                	js     3530 <fsfull+0x110>
    int total = 0;
    34d9:	31 f6                	xor    %esi,%esi
    34db:	eb 05                	jmp    34e2 <fsfull+0xc2>
    34dd:	8d 76 00             	lea    0x0(%esi),%esi
      total += cc;
    34e0:	01 c6                	add    %eax,%esi
      int cc = write(fd, buf, 512);
    34e2:	83 ec 04             	sub    $0x4,%esp
    34e5:	68 00 02 00 00       	push   $0x200
    34ea:	68 80 86 00 00       	push   $0x8680
    34ef:	57                   	push   %edi
    34f0:	e8 7d 04 00 00       	call   3972 <write>
      if(cc < 512)
    34f5:	83 c4 10             	add    $0x10,%esp
    34f8:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    34fd:	7f e1                	jg     34e0 <fsfull+0xc0>
    printf(1, "wrote %d bytes\n", total);
    34ff:	83 ec 04             	sub    $0x4,%esp
    3502:	56                   	push   %esi
    3503:	68 85 4d 00 00       	push   $0x4d85
    3508:	6a 01                	push   $0x1
    350a:	e8 91 05 00 00       	call   3aa0 <printf>
    close(fd);
    350f:	89 3c 24             	mov    %edi,(%esp)
    3512:	e8 63 04 00 00       	call   397a <close>
    if(total == 0)
    3517:	83 c4 10             	add    $0x10,%esp
    351a:	85 f6                	test   %esi,%esi
    351c:	74 28                	je     3546 <fsfull+0x126>
  for(nfiles = 0; ; nfiles++){
    351e:	83 c3 01             	add    $0x1,%ebx
    3521:	e9 1a ff ff ff       	jmp    3440 <fsfull+0x20>
    3526:	8d 76 00             	lea    0x0(%esi),%esi
    3529:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      printf(1, "open %s failed\n", name);
    3530:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3533:	83 ec 04             	sub    $0x4,%esp
    3536:	50                   	push   %eax
    3537:	68 75 4d 00 00       	push   $0x4d75
    353c:	6a 01                	push   $0x1
    353e:	e8 5d 05 00 00       	call   3aa0 <printf>
      break;
    3543:	83 c4 10             	add    $0x10,%esp
    name[1] = '0' + nfiles / 1000;
    3546:	bf d3 4d 62 10       	mov    $0x10624dd3,%edi
    name[2] = '0' + (nfiles % 1000) / 100;
    354b:	be 1f 85 eb 51       	mov    $0x51eb851f,%esi
    name[1] = '0' + nfiles / 1000;
    3550:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    3552:	b9 cd cc cc cc       	mov    $0xcccccccd,%ecx
    unlink(name);
    3557:	83 ec 0c             	sub    $0xc,%esp
    name[1] = '0' + nfiles / 1000;
    355a:	f7 e7                	mul    %edi
    name[0] = 'f';
    355c:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[5] = '\0';
    3560:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    3564:	c1 ea 06             	shr    $0x6,%edx
    3567:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    356a:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    3570:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    3573:	89 d8                	mov    %ebx,%eax
    3575:	29 d0                	sub    %edx,%eax
    3577:	f7 e6                	mul    %esi
    name[3] = '0' + (nfiles % 100) / 10;
    3579:	89 d8                	mov    %ebx,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    357b:	c1 ea 05             	shr    $0x5,%edx
    357e:	83 c2 30             	add    $0x30,%edx
    3581:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    3584:	f7 e6                	mul    %esi
    3586:	89 d8                	mov    %ebx,%eax
    3588:	c1 ea 05             	shr    $0x5,%edx
    358b:	6b d2 64             	imul   $0x64,%edx,%edx
    358e:	29 d0                	sub    %edx,%eax
    3590:	f7 e1                	mul    %ecx
    name[4] = '0' + (nfiles % 10);
    3592:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    3594:	c1 ea 03             	shr    $0x3,%edx
    3597:	83 c2 30             	add    $0x30,%edx
    359a:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    359d:	f7 e1                	mul    %ecx
    359f:	89 d9                	mov    %ebx,%ecx
    nfiles--;
    35a1:	83 eb 01             	sub    $0x1,%ebx
    name[4] = '0' + (nfiles % 10);
    35a4:	c1 ea 03             	shr    $0x3,%edx
    35a7:	8d 04 92             	lea    (%edx,%edx,4),%eax
    35aa:	01 c0                	add    %eax,%eax
    35ac:	29 c1                	sub    %eax,%ecx
    35ae:	89 c8                	mov    %ecx,%eax
    35b0:	83 c0 30             	add    $0x30,%eax
    35b3:	88 45 ac             	mov    %al,-0x54(%ebp)
    unlink(name);
    35b6:	8d 45 a8             	lea    -0x58(%ebp),%eax
    35b9:	50                   	push   %eax
    35ba:	e8 e3 03 00 00       	call   39a2 <unlink>
  while(nfiles >= 0){
    35bf:	83 c4 10             	add    $0x10,%esp
    35c2:	83 fb ff             	cmp    $0xffffffff,%ebx
    35c5:	75 89                	jne    3550 <fsfull+0x130>
  printf(1, "fsfull test finished\n");
    35c7:	83 ec 08             	sub    $0x8,%esp
    35ca:	68 95 4d 00 00       	push   $0x4d95
    35cf:	6a 01                	push   $0x1
    35d1:	e8 ca 04 00 00       	call   3aa0 <printf>
}
    35d6:	83 c4 10             	add    $0x10,%esp
    35d9:	8d 65 f4             	lea    -0xc(%ebp),%esp
    35dc:	5b                   	pop    %ebx
    35dd:	5e                   	pop    %esi
    35de:	5f                   	pop    %edi
    35df:	5d                   	pop    %ebp
    35e0:	c3                   	ret    
    35e1:	eb 0d                	jmp    35f0 <uio>
    35e3:	90                   	nop
    35e4:	90                   	nop
    35e5:	90                   	nop
    35e6:	90                   	nop
    35e7:	90                   	nop
    35e8:	90                   	nop
    35e9:	90                   	nop
    35ea:	90                   	nop
    35eb:	90                   	nop
    35ec:	90                   	nop
    35ed:	90                   	nop
    35ee:	90                   	nop
    35ef:	90                   	nop

000035f0 <uio>:
{
    35f0:	55                   	push   %ebp
    35f1:	89 e5                	mov    %esp,%ebp
    35f3:	83 ec 10             	sub    $0x10,%esp
  printf(1, "uio test\n");
    35f6:	68 ab 4d 00 00       	push   $0x4dab
    35fb:	6a 01                	push   $0x1
    35fd:	e8 9e 04 00 00       	call   3aa0 <printf>
  pid = fork(0);
    3602:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3609:	e8 3c 03 00 00       	call   394a <fork>
  if(pid == 0){
    360e:	83 c4 10             	add    $0x10,%esp
    3611:	85 c0                	test   %eax,%eax
    3613:	74 1b                	je     3630 <uio+0x40>
  } else if(pid < 0){
    3615:	78 3d                	js     3654 <uio+0x64>
  wait();
    3617:	e8 3e 03 00 00       	call   395a <wait>
  printf(1, "uio test done\n");
    361c:	83 ec 08             	sub    $0x8,%esp
    361f:	68 b5 4d 00 00       	push   $0x4db5
    3624:	6a 01                	push   $0x1
    3626:	e8 75 04 00 00       	call   3aa0 <printf>
}
    362b:	83 c4 10             	add    $0x10,%esp
    362e:	c9                   	leave  
    362f:	c3                   	ret    
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    3630:	b8 09 00 00 00       	mov    $0x9,%eax
    3635:	ba 70 00 00 00       	mov    $0x70,%edx
    363a:	ee                   	out    %al,(%dx)
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    363b:	ba 71 00 00 00       	mov    $0x71,%edx
    3640:	ec                   	in     (%dx),%al
    printf(1, "uio: uio succeeded; test FAILED\n");
    3641:	52                   	push   %edx
    3642:	52                   	push   %edx
    3643:	68 40 55 00 00       	push   $0x5540
    3648:	6a 01                	push   $0x1
    364a:	e8 51 04 00 00       	call   3aa0 <printf>
    exit();
    364f:	e8 fe 02 00 00       	call   3952 <exit>
    printf (1, "fork failed\n");
    3654:	50                   	push   %eax
    3655:	50                   	push   %eax
    3656:	68 3a 4d 00 00       	push   $0x4d3a
    365b:	6a 01                	push   $0x1
    365d:	e8 3e 04 00 00       	call   3aa0 <printf>
    exit();
    3662:	e8 eb 02 00 00       	call   3952 <exit>
    3667:	89 f6                	mov    %esi,%esi
    3669:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003670 <argptest>:
{
    3670:	55                   	push   %ebp
    3671:	89 e5                	mov    %esp,%ebp
    3673:	53                   	push   %ebx
    3674:	83 ec 0c             	sub    $0xc,%esp
  fd = open("init", O_RDONLY);
    3677:	6a 00                	push   $0x0
    3679:	68 c4 4d 00 00       	push   $0x4dc4
    367e:	e8 0f 03 00 00       	call   3992 <open>
  if (fd < 0) {
    3683:	83 c4 10             	add    $0x10,%esp
    3686:	85 c0                	test   %eax,%eax
    3688:	78 39                	js     36c3 <argptest+0x53>
  read(fd, sbrk(0) - 1, -1);
    368a:	83 ec 0c             	sub    $0xc,%esp
    368d:	89 c3                	mov    %eax,%ebx
    368f:	6a 00                	push   $0x0
    3691:	e8 44 03 00 00       	call   39da <sbrk>
    3696:	83 c4 0c             	add    $0xc,%esp
    3699:	83 e8 01             	sub    $0x1,%eax
    369c:	6a ff                	push   $0xffffffff
    369e:	50                   	push   %eax
    369f:	53                   	push   %ebx
    36a0:	e8 c5 02 00 00       	call   396a <read>
  close(fd);
    36a5:	89 1c 24             	mov    %ebx,(%esp)
    36a8:	e8 cd 02 00 00       	call   397a <close>
  printf(1, "arg test passed\n");
    36ad:	58                   	pop    %eax
    36ae:	5a                   	pop    %edx
    36af:	68 d6 4d 00 00       	push   $0x4dd6
    36b4:	6a 01                	push   $0x1
    36b6:	e8 e5 03 00 00       	call   3aa0 <printf>
}
    36bb:	83 c4 10             	add    $0x10,%esp
    36be:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    36c1:	c9                   	leave  
    36c2:	c3                   	ret    
    printf(2, "open failed\n");
    36c3:	51                   	push   %ecx
    36c4:	51                   	push   %ecx
    36c5:	68 c9 4d 00 00       	push   $0x4dc9
    36ca:	6a 02                	push   $0x2
    36cc:	e8 cf 03 00 00       	call   3aa0 <printf>
    exit();
    36d1:	e8 7c 02 00 00       	call   3952 <exit>
    36d6:	8d 76 00             	lea    0x0(%esi),%esi
    36d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000036e0 <rand>:
  randstate = randstate * 1664525 + 1013904223;
    36e0:	69 05 a4 5e 00 00 0d 	imul   $0x19660d,0x5ea4,%eax
    36e7:	66 19 00 
{
    36ea:	55                   	push   %ebp
    36eb:	89 e5                	mov    %esp,%ebp
}
    36ed:	5d                   	pop    %ebp
  randstate = randstate * 1664525 + 1013904223;
    36ee:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    36f3:	a3 a4 5e 00 00       	mov    %eax,0x5ea4
}
    36f8:	c3                   	ret    
    36f9:	66 90                	xchg   %ax,%ax
    36fb:	66 90                	xchg   %ax,%ax
    36fd:	66 90                	xchg   %ax,%ax
    36ff:	90                   	nop

00003700 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
    3700:	55                   	push   %ebp
    3701:	89 e5                	mov    %esp,%ebp
    3703:	53                   	push   %ebx
    3704:	8b 45 08             	mov    0x8(%ebp),%eax
    3707:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    370a:	89 c2                	mov    %eax,%edx
    370c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3710:	83 c1 01             	add    $0x1,%ecx
    3713:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    3717:	83 c2 01             	add    $0x1,%edx
    371a:	84 db                	test   %bl,%bl
    371c:	88 5a ff             	mov    %bl,-0x1(%edx)
    371f:	75 ef                	jne    3710 <strcpy+0x10>
    ;
  return os;
}
    3721:	5b                   	pop    %ebx
    3722:	5d                   	pop    %ebp
    3723:	c3                   	ret    
    3724:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    372a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00003730 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    3730:	55                   	push   %ebp
    3731:	89 e5                	mov    %esp,%ebp
    3733:	53                   	push   %ebx
    3734:	8b 55 08             	mov    0x8(%ebp),%edx
    3737:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    373a:	0f b6 02             	movzbl (%edx),%eax
    373d:	0f b6 19             	movzbl (%ecx),%ebx
    3740:	84 c0                	test   %al,%al
    3742:	75 1c                	jne    3760 <strcmp+0x30>
    3744:	eb 2a                	jmp    3770 <strcmp+0x40>
    3746:	8d 76 00             	lea    0x0(%esi),%esi
    3749:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
    3750:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    3753:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    3756:	83 c1 01             	add    $0x1,%ecx
    3759:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
    375c:	84 c0                	test   %al,%al
    375e:	74 10                	je     3770 <strcmp+0x40>
    3760:	38 d8                	cmp    %bl,%al
    3762:	74 ec                	je     3750 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    3764:	29 d8                	sub    %ebx,%eax
}
    3766:	5b                   	pop    %ebx
    3767:	5d                   	pop    %ebp
    3768:	c3                   	ret    
    3769:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3770:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    3772:	29 d8                	sub    %ebx,%eax
}
    3774:	5b                   	pop    %ebx
    3775:	5d                   	pop    %ebp
    3776:	c3                   	ret    
    3777:	89 f6                	mov    %esi,%esi
    3779:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003780 <strlen>:

uint
strlen(char *s)
{
    3780:	55                   	push   %ebp
    3781:	89 e5                	mov    %esp,%ebp
    3783:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    3786:	80 39 00             	cmpb   $0x0,(%ecx)
    3789:	74 15                	je     37a0 <strlen+0x20>
    378b:	31 d2                	xor    %edx,%edx
    378d:	8d 76 00             	lea    0x0(%esi),%esi
    3790:	83 c2 01             	add    $0x1,%edx
    3793:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    3797:	89 d0                	mov    %edx,%eax
    3799:	75 f5                	jne    3790 <strlen+0x10>
    ;
  return n;
}
    379b:	5d                   	pop    %ebp
    379c:	c3                   	ret    
    379d:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
    37a0:	31 c0                	xor    %eax,%eax
}
    37a2:	5d                   	pop    %ebp
    37a3:	c3                   	ret    
    37a4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    37aa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000037b0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    37b0:	55                   	push   %ebp
    37b1:	89 e5                	mov    %esp,%ebp
    37b3:	57                   	push   %edi
    37b4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    37b7:	8b 4d 10             	mov    0x10(%ebp),%ecx
    37ba:	8b 45 0c             	mov    0xc(%ebp),%eax
    37bd:	89 d7                	mov    %edx,%edi
    37bf:	fc                   	cld    
    37c0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    37c2:	89 d0                	mov    %edx,%eax
    37c4:	5f                   	pop    %edi
    37c5:	5d                   	pop    %ebp
    37c6:	c3                   	ret    
    37c7:	89 f6                	mov    %esi,%esi
    37c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000037d0 <strchr>:

char*
strchr(const char *s, char c)
{
    37d0:	55                   	push   %ebp
    37d1:	89 e5                	mov    %esp,%ebp
    37d3:	53                   	push   %ebx
    37d4:	8b 45 08             	mov    0x8(%ebp),%eax
    37d7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
    37da:	0f b6 10             	movzbl (%eax),%edx
    37dd:	84 d2                	test   %dl,%dl
    37df:	74 1d                	je     37fe <strchr+0x2e>
    if(*s == c)
    37e1:	38 d3                	cmp    %dl,%bl
    37e3:	89 d9                	mov    %ebx,%ecx
    37e5:	75 0d                	jne    37f4 <strchr+0x24>
    37e7:	eb 17                	jmp    3800 <strchr+0x30>
    37e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    37f0:	38 ca                	cmp    %cl,%dl
    37f2:	74 0c                	je     3800 <strchr+0x30>
  for(; *s; s++)
    37f4:	83 c0 01             	add    $0x1,%eax
    37f7:	0f b6 10             	movzbl (%eax),%edx
    37fa:	84 d2                	test   %dl,%dl
    37fc:	75 f2                	jne    37f0 <strchr+0x20>
      return (char*)s;
  return 0;
    37fe:	31 c0                	xor    %eax,%eax
}
    3800:	5b                   	pop    %ebx
    3801:	5d                   	pop    %ebp
    3802:	c3                   	ret    
    3803:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3809:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003810 <gets>:

char*
gets(char *buf, int max)
{
    3810:	55                   	push   %ebp
    3811:	89 e5                	mov    %esp,%ebp
    3813:	57                   	push   %edi
    3814:	56                   	push   %esi
    3815:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    3816:	31 f6                	xor    %esi,%esi
    3818:	89 f3                	mov    %esi,%ebx
{
    381a:	83 ec 1c             	sub    $0x1c,%esp
    381d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    3820:	eb 2f                	jmp    3851 <gets+0x41>
    3822:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    3828:	8d 45 e7             	lea    -0x19(%ebp),%eax
    382b:	83 ec 04             	sub    $0x4,%esp
    382e:	6a 01                	push   $0x1
    3830:	50                   	push   %eax
    3831:	6a 00                	push   $0x0
    3833:	e8 32 01 00 00       	call   396a <read>
    if(cc < 1)
    3838:	83 c4 10             	add    $0x10,%esp
    383b:	85 c0                	test   %eax,%eax
    383d:	7e 1c                	jle    385b <gets+0x4b>
      break;
    buf[i++] = c;
    383f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    3843:	83 c7 01             	add    $0x1,%edi
    3846:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    3849:	3c 0a                	cmp    $0xa,%al
    384b:	74 23                	je     3870 <gets+0x60>
    384d:	3c 0d                	cmp    $0xd,%al
    384f:	74 1f                	je     3870 <gets+0x60>
  for(i=0; i+1 < max; ){
    3851:	83 c3 01             	add    $0x1,%ebx
    3854:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    3857:	89 fe                	mov    %edi,%esi
    3859:	7c cd                	jl     3828 <gets+0x18>
    385b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    385d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    3860:	c6 03 00             	movb   $0x0,(%ebx)
}
    3863:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3866:	5b                   	pop    %ebx
    3867:	5e                   	pop    %esi
    3868:	5f                   	pop    %edi
    3869:	5d                   	pop    %ebp
    386a:	c3                   	ret    
    386b:	90                   	nop
    386c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3870:	8b 75 08             	mov    0x8(%ebp),%esi
    3873:	8b 45 08             	mov    0x8(%ebp),%eax
    3876:	01 de                	add    %ebx,%esi
    3878:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    387a:	c6 03 00             	movb   $0x0,(%ebx)
}
    387d:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3880:	5b                   	pop    %ebx
    3881:	5e                   	pop    %esi
    3882:	5f                   	pop    %edi
    3883:	5d                   	pop    %ebp
    3884:	c3                   	ret    
    3885:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3889:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003890 <stat>:

int
stat(char *n, struct stat *st)
{
    3890:	55                   	push   %ebp
    3891:	89 e5                	mov    %esp,%ebp
    3893:	56                   	push   %esi
    3894:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    3895:	83 ec 08             	sub    $0x8,%esp
    3898:	6a 00                	push   $0x0
    389a:	ff 75 08             	pushl  0x8(%ebp)
    389d:	e8 f0 00 00 00       	call   3992 <open>
  if(fd < 0)
    38a2:	83 c4 10             	add    $0x10,%esp
    38a5:	85 c0                	test   %eax,%eax
    38a7:	78 27                	js     38d0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    38a9:	83 ec 08             	sub    $0x8,%esp
    38ac:	ff 75 0c             	pushl  0xc(%ebp)
    38af:	89 c3                	mov    %eax,%ebx
    38b1:	50                   	push   %eax
    38b2:	e8 f3 00 00 00       	call   39aa <fstat>
  close(fd);
    38b7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    38ba:	89 c6                	mov    %eax,%esi
  close(fd);
    38bc:	e8 b9 00 00 00       	call   397a <close>
  return r;
    38c1:	83 c4 10             	add    $0x10,%esp
}
    38c4:	8d 65 f8             	lea    -0x8(%ebp),%esp
    38c7:	89 f0                	mov    %esi,%eax
    38c9:	5b                   	pop    %ebx
    38ca:	5e                   	pop    %esi
    38cb:	5d                   	pop    %ebp
    38cc:	c3                   	ret    
    38cd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    38d0:	be ff ff ff ff       	mov    $0xffffffff,%esi
    38d5:	eb ed                	jmp    38c4 <stat+0x34>
    38d7:	89 f6                	mov    %esi,%esi
    38d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000038e0 <atoi>:

int
atoi(const char *s)
{
    38e0:	55                   	push   %ebp
    38e1:	89 e5                	mov    %esp,%ebp
    38e3:	53                   	push   %ebx
    38e4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    38e7:	0f be 11             	movsbl (%ecx),%edx
    38ea:	8d 42 d0             	lea    -0x30(%edx),%eax
    38ed:	3c 09                	cmp    $0x9,%al
  n = 0;
    38ef:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    38f4:	77 1f                	ja     3915 <atoi+0x35>
    38f6:	8d 76 00             	lea    0x0(%esi),%esi
    38f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
    3900:	8d 04 80             	lea    (%eax,%eax,4),%eax
    3903:	83 c1 01             	add    $0x1,%ecx
    3906:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
    390a:	0f be 11             	movsbl (%ecx),%edx
    390d:	8d 5a d0             	lea    -0x30(%edx),%ebx
    3910:	80 fb 09             	cmp    $0x9,%bl
    3913:	76 eb                	jbe    3900 <atoi+0x20>
  return n;
}
    3915:	5b                   	pop    %ebx
    3916:	5d                   	pop    %ebp
    3917:	c3                   	ret    
    3918:	90                   	nop
    3919:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003920 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
    3920:	55                   	push   %ebp
    3921:	89 e5                	mov    %esp,%ebp
    3923:	56                   	push   %esi
    3924:	53                   	push   %ebx
    3925:	8b 5d 10             	mov    0x10(%ebp),%ebx
    3928:	8b 45 08             	mov    0x8(%ebp),%eax
    392b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    392e:	85 db                	test   %ebx,%ebx
    3930:	7e 14                	jle    3946 <memmove+0x26>
    3932:	31 d2                	xor    %edx,%edx
    3934:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    3938:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    393c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    393f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
    3942:	39 d3                	cmp    %edx,%ebx
    3944:	75 f2                	jne    3938 <memmove+0x18>
  return vdst;
}
    3946:	5b                   	pop    %ebx
    3947:	5e                   	pop    %esi
    3948:	5d                   	pop    %ebp
    3949:	c3                   	ret    

0000394a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    394a:	b8 01 00 00 00       	mov    $0x1,%eax
    394f:	cd 40                	int    $0x40
    3951:	c3                   	ret    

00003952 <exit>:
SYSCALL(exit)
    3952:	b8 02 00 00 00       	mov    $0x2,%eax
    3957:	cd 40                	int    $0x40
    3959:	c3                   	ret    

0000395a <wait>:
SYSCALL(wait)
    395a:	b8 03 00 00 00       	mov    $0x3,%eax
    395f:	cd 40                	int    $0x40
    3961:	c3                   	ret    

00003962 <pipe>:
SYSCALL(pipe)
    3962:	b8 04 00 00 00       	mov    $0x4,%eax
    3967:	cd 40                	int    $0x40
    3969:	c3                   	ret    

0000396a <read>:
SYSCALL(read)
    396a:	b8 05 00 00 00       	mov    $0x5,%eax
    396f:	cd 40                	int    $0x40
    3971:	c3                   	ret    

00003972 <write>:
SYSCALL(write)
    3972:	b8 10 00 00 00       	mov    $0x10,%eax
    3977:	cd 40                	int    $0x40
    3979:	c3                   	ret    

0000397a <close>:
SYSCALL(close)
    397a:	b8 15 00 00 00       	mov    $0x15,%eax
    397f:	cd 40                	int    $0x40
    3981:	c3                   	ret    

00003982 <kill>:
SYSCALL(kill)
    3982:	b8 06 00 00 00       	mov    $0x6,%eax
    3987:	cd 40                	int    $0x40
    3989:	c3                   	ret    

0000398a <exec>:
SYSCALL(exec)
    398a:	b8 07 00 00 00       	mov    $0x7,%eax
    398f:	cd 40                	int    $0x40
    3991:	c3                   	ret    

00003992 <open>:
SYSCALL(open)
    3992:	b8 0f 00 00 00       	mov    $0xf,%eax
    3997:	cd 40                	int    $0x40
    3999:	c3                   	ret    

0000399a <mknod>:
SYSCALL(mknod)
    399a:	b8 11 00 00 00       	mov    $0x11,%eax
    399f:	cd 40                	int    $0x40
    39a1:	c3                   	ret    

000039a2 <unlink>:
SYSCALL(unlink)
    39a2:	b8 12 00 00 00       	mov    $0x12,%eax
    39a7:	cd 40                	int    $0x40
    39a9:	c3                   	ret    

000039aa <fstat>:
SYSCALL(fstat)
    39aa:	b8 08 00 00 00       	mov    $0x8,%eax
    39af:	cd 40                	int    $0x40
    39b1:	c3                   	ret    

000039b2 <link>:
SYSCALL(link)
    39b2:	b8 13 00 00 00       	mov    $0x13,%eax
    39b7:	cd 40                	int    $0x40
    39b9:	c3                   	ret    

000039ba <mkdir>:
SYSCALL(mkdir)
    39ba:	b8 14 00 00 00       	mov    $0x14,%eax
    39bf:	cd 40                	int    $0x40
    39c1:	c3                   	ret    

000039c2 <chdir>:
SYSCALL(chdir)
    39c2:	b8 09 00 00 00       	mov    $0x9,%eax
    39c7:	cd 40                	int    $0x40
    39c9:	c3                   	ret    

000039ca <dup>:
SYSCALL(dup)
    39ca:	b8 0a 00 00 00       	mov    $0xa,%eax
    39cf:	cd 40                	int    $0x40
    39d1:	c3                   	ret    

000039d2 <getpid>:
SYSCALL(getpid)
    39d2:	b8 0b 00 00 00       	mov    $0xb,%eax
    39d7:	cd 40                	int    $0x40
    39d9:	c3                   	ret    

000039da <sbrk>:
SYSCALL(sbrk)
    39da:	b8 0c 00 00 00       	mov    $0xc,%eax
    39df:	cd 40                	int    $0x40
    39e1:	c3                   	ret    

000039e2 <sleep>:
SYSCALL(sleep)
    39e2:	b8 0d 00 00 00       	mov    $0xd,%eax
    39e7:	cd 40                	int    $0x40
    39e9:	c3                   	ret    

000039ea <uptime>:
SYSCALL(uptime)
    39ea:	b8 0e 00 00 00       	mov    $0xe,%eax
    39ef:	cd 40                	int    $0x40
    39f1:	c3                   	ret    
    39f2:	66 90                	xchg   %ax,%ax
    39f4:	66 90                	xchg   %ax,%ax
    39f6:	66 90                	xchg   %ax,%ax
    39f8:	66 90                	xchg   %ax,%ax
    39fa:	66 90                	xchg   %ax,%ax
    39fc:	66 90                	xchg   %ax,%ax
    39fe:	66 90                	xchg   %ax,%ax

00003a00 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    3a00:	55                   	push   %ebp
    3a01:	89 e5                	mov    %esp,%ebp
    3a03:	57                   	push   %edi
    3a04:	56                   	push   %esi
    3a05:	53                   	push   %ebx
    3a06:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    3a09:	85 d2                	test   %edx,%edx
{
    3a0b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
    3a0e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
    3a10:	79 76                	jns    3a88 <printint+0x88>
    3a12:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    3a16:	74 70                	je     3a88 <printint+0x88>
    x = -xx;
    3a18:	f7 d8                	neg    %eax
    neg = 1;
    3a1a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
    3a21:	31 f6                	xor    %esi,%esi
    3a23:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    3a26:	eb 0a                	jmp    3a32 <printint+0x32>
    3a28:	90                   	nop
    3a29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
    3a30:	89 fe                	mov    %edi,%esi
    3a32:	31 d2                	xor    %edx,%edx
    3a34:	8d 7e 01             	lea    0x1(%esi),%edi
    3a37:	f7 f1                	div    %ecx
    3a39:	0f b6 92 98 55 00 00 	movzbl 0x5598(%edx),%edx
  }while((x /= base) != 0);
    3a40:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
    3a42:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
    3a45:	75 e9                	jne    3a30 <printint+0x30>
  if(neg)
    3a47:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    3a4a:	85 c0                	test   %eax,%eax
    3a4c:	74 08                	je     3a56 <printint+0x56>
    buf[i++] = '-';
    3a4e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
    3a53:	8d 7e 02             	lea    0x2(%esi),%edi
    3a56:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
    3a5a:	8b 7d c0             	mov    -0x40(%ebp),%edi
    3a5d:	8d 76 00             	lea    0x0(%esi),%esi
    3a60:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
    3a63:	83 ec 04             	sub    $0x4,%esp
    3a66:	83 ee 01             	sub    $0x1,%esi
    3a69:	6a 01                	push   $0x1
    3a6b:	53                   	push   %ebx
    3a6c:	57                   	push   %edi
    3a6d:	88 45 d7             	mov    %al,-0x29(%ebp)
    3a70:	e8 fd fe ff ff       	call   3972 <write>

  while(--i >= 0)
    3a75:	83 c4 10             	add    $0x10,%esp
    3a78:	39 de                	cmp    %ebx,%esi
    3a7a:	75 e4                	jne    3a60 <printint+0x60>
    putc(fd, buf[i]);
}
    3a7c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3a7f:	5b                   	pop    %ebx
    3a80:	5e                   	pop    %esi
    3a81:	5f                   	pop    %edi
    3a82:	5d                   	pop    %ebp
    3a83:	c3                   	ret    
    3a84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    3a88:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    3a8f:	eb 90                	jmp    3a21 <printint+0x21>
    3a91:	eb 0d                	jmp    3aa0 <printf>
    3a93:	90                   	nop
    3a94:	90                   	nop
    3a95:	90                   	nop
    3a96:	90                   	nop
    3a97:	90                   	nop
    3a98:	90                   	nop
    3a99:	90                   	nop
    3a9a:	90                   	nop
    3a9b:	90                   	nop
    3a9c:	90                   	nop
    3a9d:	90                   	nop
    3a9e:	90                   	nop
    3a9f:	90                   	nop

00003aa0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    3aa0:	55                   	push   %ebp
    3aa1:	89 e5                	mov    %esp,%ebp
    3aa3:	57                   	push   %edi
    3aa4:	56                   	push   %esi
    3aa5:	53                   	push   %ebx
    3aa6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    3aa9:	8b 75 0c             	mov    0xc(%ebp),%esi
    3aac:	0f b6 1e             	movzbl (%esi),%ebx
    3aaf:	84 db                	test   %bl,%bl
    3ab1:	0f 84 b3 00 00 00    	je     3b6a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
    3ab7:	8d 45 10             	lea    0x10(%ebp),%eax
    3aba:	83 c6 01             	add    $0x1,%esi
  state = 0;
    3abd:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
    3abf:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    3ac2:	eb 2f                	jmp    3af3 <printf+0x53>
    3ac4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    3ac8:	83 f8 25             	cmp    $0x25,%eax
    3acb:	0f 84 a7 00 00 00    	je     3b78 <printf+0xd8>
  write(fd, &c, 1);
    3ad1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    3ad4:	83 ec 04             	sub    $0x4,%esp
    3ad7:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    3ada:	6a 01                	push   $0x1
    3adc:	50                   	push   %eax
    3add:	ff 75 08             	pushl  0x8(%ebp)
    3ae0:	e8 8d fe ff ff       	call   3972 <write>
    3ae5:	83 c4 10             	add    $0x10,%esp
    3ae8:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
    3aeb:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    3aef:	84 db                	test   %bl,%bl
    3af1:	74 77                	je     3b6a <printf+0xca>
    if(state == 0){
    3af3:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
    3af5:	0f be cb             	movsbl %bl,%ecx
    3af8:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    3afb:	74 cb                	je     3ac8 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    3afd:	83 ff 25             	cmp    $0x25,%edi
    3b00:	75 e6                	jne    3ae8 <printf+0x48>
      if(c == 'd'){
    3b02:	83 f8 64             	cmp    $0x64,%eax
    3b05:	0f 84 05 01 00 00    	je     3c10 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    3b0b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    3b11:	83 f9 70             	cmp    $0x70,%ecx
    3b14:	74 72                	je     3b88 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    3b16:	83 f8 73             	cmp    $0x73,%eax
    3b19:	0f 84 99 00 00 00    	je     3bb8 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    3b1f:	83 f8 63             	cmp    $0x63,%eax
    3b22:	0f 84 08 01 00 00    	je     3c30 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    3b28:	83 f8 25             	cmp    $0x25,%eax
    3b2b:	0f 84 ef 00 00 00    	je     3c20 <printf+0x180>
  write(fd, &c, 1);
    3b31:	8d 45 e7             	lea    -0x19(%ebp),%eax
    3b34:	83 ec 04             	sub    $0x4,%esp
    3b37:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    3b3b:	6a 01                	push   $0x1
    3b3d:	50                   	push   %eax
    3b3e:	ff 75 08             	pushl  0x8(%ebp)
    3b41:	e8 2c fe ff ff       	call   3972 <write>
    3b46:	83 c4 0c             	add    $0xc,%esp
    3b49:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    3b4c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    3b4f:	6a 01                	push   $0x1
    3b51:	50                   	push   %eax
    3b52:	ff 75 08             	pushl  0x8(%ebp)
    3b55:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    3b58:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    3b5a:	e8 13 fe ff ff       	call   3972 <write>
  for(i = 0; fmt[i]; i++){
    3b5f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
    3b63:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    3b66:	84 db                	test   %bl,%bl
    3b68:	75 89                	jne    3af3 <printf+0x53>
    }
  }
}
    3b6a:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3b6d:	5b                   	pop    %ebx
    3b6e:	5e                   	pop    %esi
    3b6f:	5f                   	pop    %edi
    3b70:	5d                   	pop    %ebp
    3b71:	c3                   	ret    
    3b72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
    3b78:	bf 25 00 00 00       	mov    $0x25,%edi
    3b7d:	e9 66 ff ff ff       	jmp    3ae8 <printf+0x48>
    3b82:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    3b88:	83 ec 0c             	sub    $0xc,%esp
    3b8b:	b9 10 00 00 00       	mov    $0x10,%ecx
    3b90:	6a 00                	push   $0x0
    3b92:	8b 7d d4             	mov    -0x2c(%ebp),%edi
    3b95:	8b 45 08             	mov    0x8(%ebp),%eax
    3b98:	8b 17                	mov    (%edi),%edx
    3b9a:	e8 61 fe ff ff       	call   3a00 <printint>
        ap++;
    3b9f:	89 f8                	mov    %edi,%eax
    3ba1:	83 c4 10             	add    $0x10,%esp
      state = 0;
    3ba4:	31 ff                	xor    %edi,%edi
        ap++;
    3ba6:	83 c0 04             	add    $0x4,%eax
    3ba9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    3bac:	e9 37 ff ff ff       	jmp    3ae8 <printf+0x48>
    3bb1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    3bb8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    3bbb:	8b 08                	mov    (%eax),%ecx
        ap++;
    3bbd:	83 c0 04             	add    $0x4,%eax
    3bc0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
    3bc3:	85 c9                	test   %ecx,%ecx
    3bc5:	0f 84 8e 00 00 00    	je     3c59 <printf+0x1b9>
        while(*s != 0){
    3bcb:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
    3bce:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
    3bd0:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
    3bd2:	84 c0                	test   %al,%al
    3bd4:	0f 84 0e ff ff ff    	je     3ae8 <printf+0x48>
    3bda:	89 75 d0             	mov    %esi,-0x30(%ebp)
    3bdd:	89 de                	mov    %ebx,%esi
    3bdf:	8b 5d 08             	mov    0x8(%ebp),%ebx
    3be2:	8d 7d e3             	lea    -0x1d(%ebp),%edi
    3be5:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    3be8:	83 ec 04             	sub    $0x4,%esp
          s++;
    3beb:	83 c6 01             	add    $0x1,%esi
    3bee:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    3bf1:	6a 01                	push   $0x1
    3bf3:	57                   	push   %edi
    3bf4:	53                   	push   %ebx
    3bf5:	e8 78 fd ff ff       	call   3972 <write>
        while(*s != 0){
    3bfa:	0f b6 06             	movzbl (%esi),%eax
    3bfd:	83 c4 10             	add    $0x10,%esp
    3c00:	84 c0                	test   %al,%al
    3c02:	75 e4                	jne    3be8 <printf+0x148>
    3c04:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
    3c07:	31 ff                	xor    %edi,%edi
    3c09:	e9 da fe ff ff       	jmp    3ae8 <printf+0x48>
    3c0e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
    3c10:	83 ec 0c             	sub    $0xc,%esp
    3c13:	b9 0a 00 00 00       	mov    $0xa,%ecx
    3c18:	6a 01                	push   $0x1
    3c1a:	e9 73 ff ff ff       	jmp    3b92 <printf+0xf2>
    3c1f:	90                   	nop
  write(fd, &c, 1);
    3c20:	83 ec 04             	sub    $0x4,%esp
    3c23:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    3c26:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    3c29:	6a 01                	push   $0x1
    3c2b:	e9 21 ff ff ff       	jmp    3b51 <printf+0xb1>
        putc(fd, *ap);
    3c30:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
    3c33:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    3c36:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
    3c38:	6a 01                	push   $0x1
        ap++;
    3c3a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
    3c3d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    3c40:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    3c43:	50                   	push   %eax
    3c44:	ff 75 08             	pushl  0x8(%ebp)
    3c47:	e8 26 fd ff ff       	call   3972 <write>
        ap++;
    3c4c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    3c4f:	83 c4 10             	add    $0x10,%esp
      state = 0;
    3c52:	31 ff                	xor    %edi,%edi
    3c54:	e9 8f fe ff ff       	jmp    3ae8 <printf+0x48>
          s = "(null)";
    3c59:	bb 90 55 00 00       	mov    $0x5590,%ebx
        while(*s != 0){
    3c5e:	b8 28 00 00 00       	mov    $0x28,%eax
    3c63:	e9 72 ff ff ff       	jmp    3bda <printf+0x13a>
    3c68:	66 90                	xchg   %ax,%ax
    3c6a:	66 90                	xchg   %ax,%ax
    3c6c:	66 90                	xchg   %ax,%ax
    3c6e:	66 90                	xchg   %ax,%ax

00003c70 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    3c70:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3c71:	a1 40 5f 00 00       	mov    0x5f40,%eax
{
    3c76:	89 e5                	mov    %esp,%ebp
    3c78:	57                   	push   %edi
    3c79:	56                   	push   %esi
    3c7a:	53                   	push   %ebx
    3c7b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    3c7e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
    3c81:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3c88:	39 c8                	cmp    %ecx,%eax
    3c8a:	8b 10                	mov    (%eax),%edx
    3c8c:	73 32                	jae    3cc0 <free+0x50>
    3c8e:	39 d1                	cmp    %edx,%ecx
    3c90:	72 04                	jb     3c96 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3c92:	39 d0                	cmp    %edx,%eax
    3c94:	72 32                	jb     3cc8 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
    3c96:	8b 73 fc             	mov    -0x4(%ebx),%esi
    3c99:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    3c9c:	39 fa                	cmp    %edi,%edx
    3c9e:	74 30                	je     3cd0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    3ca0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    3ca3:	8b 50 04             	mov    0x4(%eax),%edx
    3ca6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    3ca9:	39 f1                	cmp    %esi,%ecx
    3cab:	74 3a                	je     3ce7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    3cad:	89 08                	mov    %ecx,(%eax)
  freep = p;
    3caf:	a3 40 5f 00 00       	mov    %eax,0x5f40
}
    3cb4:	5b                   	pop    %ebx
    3cb5:	5e                   	pop    %esi
    3cb6:	5f                   	pop    %edi
    3cb7:	5d                   	pop    %ebp
    3cb8:	c3                   	ret    
    3cb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3cc0:	39 d0                	cmp    %edx,%eax
    3cc2:	72 04                	jb     3cc8 <free+0x58>
    3cc4:	39 d1                	cmp    %edx,%ecx
    3cc6:	72 ce                	jb     3c96 <free+0x26>
{
    3cc8:	89 d0                	mov    %edx,%eax
    3cca:	eb bc                	jmp    3c88 <free+0x18>
    3ccc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    3cd0:	03 72 04             	add    0x4(%edx),%esi
    3cd3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    3cd6:	8b 10                	mov    (%eax),%edx
    3cd8:	8b 12                	mov    (%edx),%edx
    3cda:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    3cdd:	8b 50 04             	mov    0x4(%eax),%edx
    3ce0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    3ce3:	39 f1                	cmp    %esi,%ecx
    3ce5:	75 c6                	jne    3cad <free+0x3d>
    p->s.size += bp->s.size;
    3ce7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    3cea:	a3 40 5f 00 00       	mov    %eax,0x5f40
    p->s.size += bp->s.size;
    3cef:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    3cf2:	8b 53 f8             	mov    -0x8(%ebx),%edx
    3cf5:	89 10                	mov    %edx,(%eax)
}
    3cf7:	5b                   	pop    %ebx
    3cf8:	5e                   	pop    %esi
    3cf9:	5f                   	pop    %edi
    3cfa:	5d                   	pop    %ebp
    3cfb:	c3                   	ret    
    3cfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003d00 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    3d00:	55                   	push   %ebp
    3d01:	89 e5                	mov    %esp,%ebp
    3d03:	57                   	push   %edi
    3d04:	56                   	push   %esi
    3d05:	53                   	push   %ebx
    3d06:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3d09:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    3d0c:	8b 15 40 5f 00 00    	mov    0x5f40,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3d12:	8d 78 07             	lea    0x7(%eax),%edi
    3d15:	c1 ef 03             	shr    $0x3,%edi
    3d18:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    3d1b:	85 d2                	test   %edx,%edx
    3d1d:	0f 84 9d 00 00 00    	je     3dc0 <malloc+0xc0>
    3d23:	8b 02                	mov    (%edx),%eax
    3d25:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    3d28:	39 cf                	cmp    %ecx,%edi
    3d2a:	76 6c                	jbe    3d98 <malloc+0x98>
    3d2c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    3d32:	bb 00 10 00 00       	mov    $0x1000,%ebx
    3d37:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    3d3a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    3d41:	eb 0e                	jmp    3d51 <malloc+0x51>
    3d43:	90                   	nop
    3d44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3d48:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    3d4a:	8b 48 04             	mov    0x4(%eax),%ecx
    3d4d:	39 f9                	cmp    %edi,%ecx
    3d4f:	73 47                	jae    3d98 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    3d51:	39 05 40 5f 00 00    	cmp    %eax,0x5f40
    3d57:	89 c2                	mov    %eax,%edx
    3d59:	75 ed                	jne    3d48 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    3d5b:	83 ec 0c             	sub    $0xc,%esp
    3d5e:	56                   	push   %esi
    3d5f:	e8 76 fc ff ff       	call   39da <sbrk>
  if(p == (char*)-1)
    3d64:	83 c4 10             	add    $0x10,%esp
    3d67:	83 f8 ff             	cmp    $0xffffffff,%eax
    3d6a:	74 1c                	je     3d88 <malloc+0x88>
  hp->s.size = nu;
    3d6c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    3d6f:	83 ec 0c             	sub    $0xc,%esp
    3d72:	83 c0 08             	add    $0x8,%eax
    3d75:	50                   	push   %eax
    3d76:	e8 f5 fe ff ff       	call   3c70 <free>
  return freep;
    3d7b:	8b 15 40 5f 00 00    	mov    0x5f40,%edx
      if((p = morecore(nunits)) == 0)
    3d81:	83 c4 10             	add    $0x10,%esp
    3d84:	85 d2                	test   %edx,%edx
    3d86:	75 c0                	jne    3d48 <malloc+0x48>
        return 0;
  }
}
    3d88:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    3d8b:	31 c0                	xor    %eax,%eax
}
    3d8d:	5b                   	pop    %ebx
    3d8e:	5e                   	pop    %esi
    3d8f:	5f                   	pop    %edi
    3d90:	5d                   	pop    %ebp
    3d91:	c3                   	ret    
    3d92:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    3d98:	39 cf                	cmp    %ecx,%edi
    3d9a:	74 54                	je     3df0 <malloc+0xf0>
        p->s.size -= nunits;
    3d9c:	29 f9                	sub    %edi,%ecx
    3d9e:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    3da1:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    3da4:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    3da7:	89 15 40 5f 00 00    	mov    %edx,0x5f40
}
    3dad:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    3db0:	83 c0 08             	add    $0x8,%eax
}
    3db3:	5b                   	pop    %ebx
    3db4:	5e                   	pop    %esi
    3db5:	5f                   	pop    %edi
    3db6:	5d                   	pop    %ebp
    3db7:	c3                   	ret    
    3db8:	90                   	nop
    3db9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    3dc0:	c7 05 40 5f 00 00 44 	movl   $0x5f44,0x5f40
    3dc7:	5f 00 00 
    3dca:	c7 05 44 5f 00 00 44 	movl   $0x5f44,0x5f44
    3dd1:	5f 00 00 
    base.s.size = 0;
    3dd4:	b8 44 5f 00 00       	mov    $0x5f44,%eax
    3dd9:	c7 05 48 5f 00 00 00 	movl   $0x0,0x5f48
    3de0:	00 00 00 
    3de3:	e9 44 ff ff ff       	jmp    3d2c <malloc+0x2c>
    3de8:	90                   	nop
    3de9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
    3df0:	8b 08                	mov    (%eax),%ecx
    3df2:	89 0a                	mov    %ecx,(%edx)
    3df4:	eb b1                	jmp    3da7 <malloc+0xa7>
