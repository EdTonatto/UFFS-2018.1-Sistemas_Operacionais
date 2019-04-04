
_sh: formato do arquivo elf32-i386


Desmontagem da seção .text:

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
      11:	eb 0a                	jmp    1d <main+0x1d>
      13:	90                   	nop
      14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(fd >= 3){
      18:	83 f8 02             	cmp    $0x2,%eax
      1b:	7f 7d                	jg     9a <main+0x9a>
  while((fd = open("console", O_RDWR)) >= 0){
      1d:	83 ec 08             	sub    $0x8,%esp
      20:	6a 02                	push   $0x2
      22:	68 39 12 00 00       	push   $0x1239
      27:	e8 06 0d 00 00       	call   d32 <open>
      2c:	83 c4 10             	add    $0x10,%esp
      2f:	85 c0                	test   %eax,%eax
      31:	79 e5                	jns    18 <main+0x18>
      33:	eb 1a                	jmp    4f <main+0x4f>
      35:	8d 76 00             	lea    0x0(%esi),%esi
    }
  }

  // Read and run input commands.
  while(getcmd(buf, sizeof(buf)) >= 0){
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      38:	80 3d 62 18 00 00 20 	cmpb   $0x20,0x1862
      3f:	74 67                	je     a8 <main+0xa8>
      buf[strlen(buf)-1] = 0;  // chop \n
      if(chdir(buf+3) < 0)
        printf(2, "cannot cd %s\n", buf+3);
      continue;
    }
    if(fork1() == 0)
      41:	e8 1a 01 00 00       	call   160 <fork1>
      46:	85 c0                	test   %eax,%eax
      48:	74 36                	je     80 <main+0x80>
      runcmd(parsecmd(buf));
    wait();
      4a:	e8 ab 0c 00 00       	call   cfa <wait>
  while(getcmd(buf, sizeof(buf)) >= 0){
      4f:	83 ec 08             	sub    $0x8,%esp
      52:	6a 64                	push   $0x64
      54:	68 60 18 00 00       	push   $0x1860
      59:	e8 92 00 00 00       	call   f0 <getcmd>
      5e:	83 c4 10             	add    $0x10,%esp
      61:	85 c0                	test   %eax,%eax
      63:	78 30                	js     95 <main+0x95>
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      65:	80 3d 60 18 00 00 63 	cmpb   $0x63,0x1860
      6c:	75 d3                	jne    41 <main+0x41>
      6e:	80 3d 61 18 00 00 64 	cmpb   $0x64,0x1861
      75:	74 c1                	je     38 <main+0x38>
    if(fork1() == 0)
      77:	e8 e4 00 00 00       	call   160 <fork1>
      7c:	85 c0                	test   %eax,%eax
      7e:	75 ca                	jne    4a <main+0x4a>
      runcmd(parsecmd(buf));
      80:	83 ec 0c             	sub    $0xc,%esp
      83:	68 60 18 00 00       	push   $0x1860
      88:	e8 a3 09 00 00       	call   a30 <parsecmd>
      8d:	89 04 24             	mov    %eax,(%esp)
      90:	e8 fb 00 00 00       	call   190 <runcmd>
  }
  exit();
      95:	e8 58 0c 00 00       	call   cf2 <exit>
      close(fd);
      9a:	83 ec 0c             	sub    $0xc,%esp
      9d:	50                   	push   %eax
      9e:	e8 77 0c 00 00       	call   d1a <close>
      break;
      a3:	83 c4 10             	add    $0x10,%esp
      a6:	eb a7                	jmp    4f <main+0x4f>
      buf[strlen(buf)-1] = 0;  // chop \n
      a8:	83 ec 0c             	sub    $0xc,%esp
      ab:	68 60 18 00 00       	push   $0x1860
      b0:	e8 6b 0a 00 00       	call   b20 <strlen>
      if(chdir(buf+3) < 0)
      b5:	c7 04 24 63 18 00 00 	movl   $0x1863,(%esp)
      buf[strlen(buf)-1] = 0;  // chop \n
      bc:	c6 80 5f 18 00 00 00 	movb   $0x0,0x185f(%eax)
      if(chdir(buf+3) < 0)
      c3:	e8 9a 0c 00 00       	call   d62 <chdir>
      c8:	83 c4 10             	add    $0x10,%esp
      cb:	85 c0                	test   %eax,%eax
      cd:	79 80                	jns    4f <main+0x4f>
        printf(2, "cannot cd %s\n", buf+3);
      cf:	50                   	push   %eax
      d0:	68 63 18 00 00       	push   $0x1863
      d5:	68 41 12 00 00       	push   $0x1241
      da:	6a 02                	push   $0x2
      dc:	e8 5f 0d 00 00       	call   e40 <printf>
      e1:	83 c4 10             	add    $0x10,%esp
      e4:	e9 66 ff ff ff       	jmp    4f <main+0x4f>
      e9:	66 90                	xchg   %ax,%ax
      eb:	66 90                	xchg   %ax,%ax
      ed:	66 90                	xchg   %ax,%ax
      ef:	90                   	nop

000000f0 <getcmd>:
{
      f0:	55                   	push   %ebp
      f1:	89 e5                	mov    %esp,%ebp
      f3:	56                   	push   %esi
      f4:	53                   	push   %ebx
      f5:	8b 75 0c             	mov    0xc(%ebp),%esi
      f8:	8b 5d 08             	mov    0x8(%ebp),%ebx
  printf(2, "$ ");
      fb:	83 ec 08             	sub    $0x8,%esp
      fe:	68 98 11 00 00       	push   $0x1198
     103:	6a 02                	push   $0x2
     105:	e8 36 0d 00 00       	call   e40 <printf>
  memset(buf, 0, nbuf);
     10a:	83 c4 0c             	add    $0xc,%esp
     10d:	56                   	push   %esi
     10e:	6a 00                	push   $0x0
     110:	53                   	push   %ebx
     111:	e8 3a 0a 00 00       	call   b50 <memset>
  gets(buf, nbuf);
     116:	58                   	pop    %eax
     117:	5a                   	pop    %edx
     118:	56                   	push   %esi
     119:	53                   	push   %ebx
     11a:	e8 91 0a 00 00       	call   bb0 <gets>
  if(buf[0] == 0) // EOF
     11f:	83 c4 10             	add    $0x10,%esp
     122:	31 c0                	xor    %eax,%eax
     124:	80 3b 00             	cmpb   $0x0,(%ebx)
     127:	0f 94 c0             	sete   %al
}
     12a:	8d 65 f8             	lea    -0x8(%ebp),%esp
  if(buf[0] == 0) // EOF
     12d:	f7 d8                	neg    %eax
}
     12f:	5b                   	pop    %ebx
     130:	5e                   	pop    %esi
     131:	5d                   	pop    %ebp
     132:	c3                   	ret    
     133:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     139:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000140 <panic>:
}

void
panic(char *s)
{
     140:	55                   	push   %ebp
     141:	89 e5                	mov    %esp,%ebp
     143:	83 ec 0c             	sub    $0xc,%esp
  printf(2, "%s\n", s);
     146:	ff 75 08             	pushl  0x8(%ebp)
     149:	68 35 12 00 00       	push   $0x1235
     14e:	6a 02                	push   $0x2
     150:	e8 eb 0c 00 00       	call   e40 <printf>
  exit();
     155:	e8 98 0b 00 00       	call   cf2 <exit>
     15a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000160 <fork1>:
}

int
fork1(void)
{
     160:	55                   	push   %ebp
     161:	89 e5                	mov    %esp,%ebp
     163:	83 ec 14             	sub    $0x14,%esp
  int pid;

  pid = fork(0);
     166:	6a 00                	push   $0x0
     168:	e8 7d 0b 00 00       	call   cea <fork>
  if(pid == -1)
     16d:	83 c4 10             	add    $0x10,%esp
     170:	83 f8 ff             	cmp    $0xffffffff,%eax
     173:	74 02                	je     177 <fork1+0x17>
    panic("fork");
  return pid;
}
     175:	c9                   	leave  
     176:	c3                   	ret    
    panic("fork");
     177:	83 ec 0c             	sub    $0xc,%esp
     17a:	68 9b 11 00 00       	push   $0x119b
     17f:	e8 bc ff ff ff       	call   140 <panic>
     184:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     18a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000190 <runcmd>:
{
     190:	55                   	push   %ebp
     191:	89 e5                	mov    %esp,%ebp
     193:	53                   	push   %ebx
     194:	83 ec 14             	sub    $0x14,%esp
     197:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(cmd == 0)
     19a:	85 db                	test   %ebx,%ebx
     19c:	74 6a                	je     208 <runcmd+0x78>
  switch(cmd->type){
     19e:	83 3b 05             	cmpl   $0x5,(%ebx)
     1a1:	0f 87 f1 00 00 00    	ja     298 <runcmd+0x108>
     1a7:	8b 03                	mov    (%ebx),%eax
     1a9:	ff 24 85 50 12 00 00 	jmp    *0x1250(,%eax,4)
    if(pipe(p) < 0)
     1b0:	8d 45 f0             	lea    -0x10(%ebp),%eax
     1b3:	83 ec 0c             	sub    $0xc,%esp
     1b6:	50                   	push   %eax
     1b7:	e8 46 0b 00 00       	call   d02 <pipe>
     1bc:	83 c4 10             	add    $0x10,%esp
     1bf:	85 c0                	test   %eax,%eax
     1c1:	0f 88 de 00 00 00    	js     2a5 <runcmd+0x115>
    if(fork1() == 0){
     1c7:	e8 94 ff ff ff       	call   160 <fork1>
     1cc:	85 c0                	test   %eax,%eax
     1ce:	0f 84 0c 01 00 00    	je     2e0 <runcmd+0x150>
    if(fork1() == 0){
     1d4:	e8 87 ff ff ff       	call   160 <fork1>
     1d9:	85 c0                	test   %eax,%eax
     1db:	0f 84 d1 00 00 00    	je     2b2 <runcmd+0x122>
    close(p[0]);
     1e1:	83 ec 0c             	sub    $0xc,%esp
     1e4:	ff 75 f0             	pushl  -0x10(%ebp)
     1e7:	e8 2e 0b 00 00       	call   d1a <close>
    close(p[1]);
     1ec:	58                   	pop    %eax
     1ed:	ff 75 f4             	pushl  -0xc(%ebp)
     1f0:	e8 25 0b 00 00       	call   d1a <close>
    wait();
     1f5:	e8 00 0b 00 00       	call   cfa <wait>
    wait();
     1fa:	e8 fb 0a 00 00       	call   cfa <wait>
    break;
     1ff:	83 c4 10             	add    $0x10,%esp
     202:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    exit();
     208:	e8 e5 0a 00 00       	call   cf2 <exit>
    if(fork1() == 0)
     20d:	e8 4e ff ff ff       	call   160 <fork1>
     212:	85 c0                	test   %eax,%eax
     214:	75 f2                	jne    208 <runcmd+0x78>
      runcmd(bcmd->cmd);
     216:	83 ec 0c             	sub    $0xc,%esp
     219:	ff 73 04             	pushl  0x4(%ebx)
     21c:	e8 6f ff ff ff       	call   190 <runcmd>
    if(ecmd->argv[0] == 0)
     221:	8b 43 04             	mov    0x4(%ebx),%eax
     224:	85 c0                	test   %eax,%eax
     226:	74 e0                	je     208 <runcmd+0x78>
    exec(ecmd->argv[0], ecmd->argv);
     228:	52                   	push   %edx
     229:	52                   	push   %edx
     22a:	8d 53 04             	lea    0x4(%ebx),%edx
     22d:	52                   	push   %edx
     22e:	50                   	push   %eax
     22f:	e8 f6 0a 00 00       	call   d2a <exec>
    printf(2, "exec %s failed\n", ecmd->argv[0]);
     234:	83 c4 0c             	add    $0xc,%esp
     237:	ff 73 04             	pushl  0x4(%ebx)
     23a:	68 a7 11 00 00       	push   $0x11a7
     23f:	6a 02                	push   $0x2
     241:	e8 fa 0b 00 00       	call   e40 <printf>
    break;
     246:	83 c4 10             	add    $0x10,%esp
     249:	eb bd                	jmp    208 <runcmd+0x78>
    if(fork1() == 0)
     24b:	e8 10 ff ff ff       	call   160 <fork1>
     250:	85 c0                	test   %eax,%eax
     252:	74 c2                	je     216 <runcmd+0x86>
    wait();
     254:	e8 a1 0a 00 00       	call   cfa <wait>
    runcmd(lcmd->right);
     259:	83 ec 0c             	sub    $0xc,%esp
     25c:	ff 73 08             	pushl  0x8(%ebx)
     25f:	e8 2c ff ff ff       	call   190 <runcmd>
    close(rcmd->fd);
     264:	83 ec 0c             	sub    $0xc,%esp
     267:	ff 73 14             	pushl  0x14(%ebx)
     26a:	e8 ab 0a 00 00       	call   d1a <close>
    if(open(rcmd->file, rcmd->mode) < 0){
     26f:	59                   	pop    %ecx
     270:	58                   	pop    %eax
     271:	ff 73 10             	pushl  0x10(%ebx)
     274:	ff 73 08             	pushl  0x8(%ebx)
     277:	e8 b6 0a 00 00       	call   d32 <open>
     27c:	83 c4 10             	add    $0x10,%esp
     27f:	85 c0                	test   %eax,%eax
     281:	79 93                	jns    216 <runcmd+0x86>
      printf(2, "open %s failed\n", rcmd->file);
     283:	52                   	push   %edx
     284:	ff 73 08             	pushl  0x8(%ebx)
     287:	68 b7 11 00 00       	push   $0x11b7
     28c:	6a 02                	push   $0x2
     28e:	e8 ad 0b 00 00       	call   e40 <printf>
      exit();
     293:	e8 5a 0a 00 00       	call   cf2 <exit>
    panic("runcmd");
     298:	83 ec 0c             	sub    $0xc,%esp
     29b:	68 a0 11 00 00       	push   $0x11a0
     2a0:	e8 9b fe ff ff       	call   140 <panic>
      panic("pipe");
     2a5:	83 ec 0c             	sub    $0xc,%esp
     2a8:	68 c7 11 00 00       	push   $0x11c7
     2ad:	e8 8e fe ff ff       	call   140 <panic>
      close(0);
     2b2:	83 ec 0c             	sub    $0xc,%esp
     2b5:	6a 00                	push   $0x0
     2b7:	e8 5e 0a 00 00       	call   d1a <close>
      dup(p[0]);
     2bc:	5a                   	pop    %edx
     2bd:	ff 75 f0             	pushl  -0x10(%ebp)
     2c0:	e8 a5 0a 00 00       	call   d6a <dup>
      close(p[0]);
     2c5:	59                   	pop    %ecx
     2c6:	ff 75 f0             	pushl  -0x10(%ebp)
     2c9:	e8 4c 0a 00 00       	call   d1a <close>
      close(p[1]);
     2ce:	58                   	pop    %eax
     2cf:	ff 75 f4             	pushl  -0xc(%ebp)
     2d2:	e8 43 0a 00 00       	call   d1a <close>
      runcmd(pcmd->right);
     2d7:	58                   	pop    %eax
     2d8:	ff 73 08             	pushl  0x8(%ebx)
     2db:	e8 b0 fe ff ff       	call   190 <runcmd>
      close(1);
     2e0:	83 ec 0c             	sub    $0xc,%esp
     2e3:	6a 01                	push   $0x1
     2e5:	e8 30 0a 00 00       	call   d1a <close>
      dup(p[1]);
     2ea:	58                   	pop    %eax
     2eb:	ff 75 f4             	pushl  -0xc(%ebp)
     2ee:	e8 77 0a 00 00       	call   d6a <dup>
      close(p[0]);
     2f3:	58                   	pop    %eax
     2f4:	ff 75 f0             	pushl  -0x10(%ebp)
     2f7:	e8 1e 0a 00 00       	call   d1a <close>
      close(p[1]);
     2fc:	58                   	pop    %eax
     2fd:	ff 75 f4             	pushl  -0xc(%ebp)
     300:	e8 15 0a 00 00       	call   d1a <close>
      runcmd(pcmd->left);
     305:	58                   	pop    %eax
     306:	ff 73 04             	pushl  0x4(%ebx)
     309:	e8 82 fe ff ff       	call   190 <runcmd>
     30e:	66 90                	xchg   %ax,%ax

00000310 <execcmd>:
//PAGEBREAK!
// Constructors

struct cmd*
execcmd(void)
{
     310:	55                   	push   %ebp
     311:	89 e5                	mov    %esp,%ebp
     313:	53                   	push   %ebx
     314:	83 ec 10             	sub    $0x10,%esp
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     317:	6a 54                	push   $0x54
     319:	e8 82 0d 00 00       	call   10a0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     31e:	83 c4 0c             	add    $0xc,%esp
  cmd = malloc(sizeof(*cmd));
     321:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     323:	6a 54                	push   $0x54
     325:	6a 00                	push   $0x0
     327:	50                   	push   %eax
     328:	e8 23 08 00 00       	call   b50 <memset>
  cmd->type = EXEC;
     32d:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
  return (struct cmd*)cmd;
}
     333:	89 d8                	mov    %ebx,%eax
     335:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     338:	c9                   	leave  
     339:	c3                   	ret    
     33a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000340 <redircmd>:

struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
     340:	55                   	push   %ebp
     341:	89 e5                	mov    %esp,%ebp
     343:	53                   	push   %ebx
     344:	83 ec 10             	sub    $0x10,%esp
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
     347:	6a 18                	push   $0x18
     349:	e8 52 0d 00 00       	call   10a0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     34e:	83 c4 0c             	add    $0xc,%esp
  cmd = malloc(sizeof(*cmd));
     351:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     353:	6a 18                	push   $0x18
     355:	6a 00                	push   $0x0
     357:	50                   	push   %eax
     358:	e8 f3 07 00 00       	call   b50 <memset>
  cmd->type = REDIR;
  cmd->cmd = subcmd;
     35d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = REDIR;
     360:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
  cmd->cmd = subcmd;
     366:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->file = file;
     369:	8b 45 0c             	mov    0xc(%ebp),%eax
     36c:	89 43 08             	mov    %eax,0x8(%ebx)
  cmd->efile = efile;
     36f:	8b 45 10             	mov    0x10(%ebp),%eax
     372:	89 43 0c             	mov    %eax,0xc(%ebx)
  cmd->mode = mode;
     375:	8b 45 14             	mov    0x14(%ebp),%eax
     378:	89 43 10             	mov    %eax,0x10(%ebx)
  cmd->fd = fd;
     37b:	8b 45 18             	mov    0x18(%ebp),%eax
     37e:	89 43 14             	mov    %eax,0x14(%ebx)
  return (struct cmd*)cmd;
}
     381:	89 d8                	mov    %ebx,%eax
     383:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     386:	c9                   	leave  
     387:	c3                   	ret    
     388:	90                   	nop
     389:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000390 <pipecmd>:

struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
     390:	55                   	push   %ebp
     391:	89 e5                	mov    %esp,%ebp
     393:	53                   	push   %ebx
     394:	83 ec 10             	sub    $0x10,%esp
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
     397:	6a 0c                	push   $0xc
     399:	e8 02 0d 00 00       	call   10a0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     39e:	83 c4 0c             	add    $0xc,%esp
  cmd = malloc(sizeof(*cmd));
     3a1:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     3a3:	6a 0c                	push   $0xc
     3a5:	6a 00                	push   $0x0
     3a7:	50                   	push   %eax
     3a8:	e8 a3 07 00 00       	call   b50 <memset>
  cmd->type = PIPE;
  cmd->left = left;
     3ad:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = PIPE;
     3b0:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
  cmd->left = left;
     3b6:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     3b9:	8b 45 0c             	mov    0xc(%ebp),%eax
     3bc:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     3bf:	89 d8                	mov    %ebx,%eax
     3c1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     3c4:	c9                   	leave  
     3c5:	c3                   	ret    
     3c6:	8d 76 00             	lea    0x0(%esi),%esi
     3c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000003d0 <listcmd>:

struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
     3d0:	55                   	push   %ebp
     3d1:	89 e5                	mov    %esp,%ebp
     3d3:	53                   	push   %ebx
     3d4:	83 ec 10             	sub    $0x10,%esp
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     3d7:	6a 0c                	push   $0xc
     3d9:	e8 c2 0c 00 00       	call   10a0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     3de:	83 c4 0c             	add    $0xc,%esp
  cmd = malloc(sizeof(*cmd));
     3e1:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     3e3:	6a 0c                	push   $0xc
     3e5:	6a 00                	push   $0x0
     3e7:	50                   	push   %eax
     3e8:	e8 63 07 00 00       	call   b50 <memset>
  cmd->type = LIST;
  cmd->left = left;
     3ed:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = LIST;
     3f0:	c7 03 04 00 00 00    	movl   $0x4,(%ebx)
  cmd->left = left;
     3f6:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     3f9:	8b 45 0c             	mov    0xc(%ebp),%eax
     3fc:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     3ff:	89 d8                	mov    %ebx,%eax
     401:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     404:	c9                   	leave  
     405:	c3                   	ret    
     406:	8d 76 00             	lea    0x0(%esi),%esi
     409:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000410 <backcmd>:

struct cmd*
backcmd(struct cmd *subcmd)
{
     410:	55                   	push   %ebp
     411:	89 e5                	mov    %esp,%ebp
     413:	53                   	push   %ebx
     414:	83 ec 10             	sub    $0x10,%esp
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     417:	6a 08                	push   $0x8
     419:	e8 82 0c 00 00       	call   10a0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     41e:	83 c4 0c             	add    $0xc,%esp
  cmd = malloc(sizeof(*cmd));
     421:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     423:	6a 08                	push   $0x8
     425:	6a 00                	push   $0x0
     427:	50                   	push   %eax
     428:	e8 23 07 00 00       	call   b50 <memset>
  cmd->type = BACK;
  cmd->cmd = subcmd;
     42d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = BACK;
     430:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
  cmd->cmd = subcmd;
     436:	89 43 04             	mov    %eax,0x4(%ebx)
  return (struct cmd*)cmd;
}
     439:	89 d8                	mov    %ebx,%eax
     43b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     43e:	c9                   	leave  
     43f:	c3                   	ret    

00000440 <gettoken>:
char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
     440:	55                   	push   %ebp
     441:	89 e5                	mov    %esp,%ebp
     443:	57                   	push   %edi
     444:	56                   	push   %esi
     445:	53                   	push   %ebx
     446:	83 ec 0c             	sub    $0xc,%esp
  char *s;
  int ret;

  s = *ps;
     449:	8b 45 08             	mov    0x8(%ebp),%eax
{
     44c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     44f:	8b 7d 10             	mov    0x10(%ebp),%edi
  s = *ps;
     452:	8b 30                	mov    (%eax),%esi
  while(s < es && strchr(whitespace, *s))
     454:	39 de                	cmp    %ebx,%esi
     456:	72 0f                	jb     467 <gettoken+0x27>
     458:	eb 25                	jmp    47f <gettoken+0x3f>
     45a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    s++;
     460:	83 c6 01             	add    $0x1,%esi
  while(s < es && strchr(whitespace, *s))
     463:	39 f3                	cmp    %esi,%ebx
     465:	74 18                	je     47f <gettoken+0x3f>
     467:	0f be 06             	movsbl (%esi),%eax
     46a:	83 ec 08             	sub    $0x8,%esp
     46d:	50                   	push   %eax
     46e:	68 4c 18 00 00       	push   $0x184c
     473:	e8 f8 06 00 00       	call   b70 <strchr>
     478:	83 c4 10             	add    $0x10,%esp
     47b:	85 c0                	test   %eax,%eax
     47d:	75 e1                	jne    460 <gettoken+0x20>
  if(q)
     47f:	85 ff                	test   %edi,%edi
     481:	74 02                	je     485 <gettoken+0x45>
    *q = s;
     483:	89 37                	mov    %esi,(%edi)
  ret = *s;
     485:	0f be 06             	movsbl (%esi),%eax
  switch(*s){
     488:	3c 29                	cmp    $0x29,%al
     48a:	7f 54                	jg     4e0 <gettoken+0xa0>
     48c:	3c 28                	cmp    $0x28,%al
     48e:	0f 8d c8 00 00 00    	jge    55c <gettoken+0x11c>
     494:	31 ff                	xor    %edi,%edi
     496:	84 c0                	test   %al,%al
     498:	0f 85 d2 00 00 00    	jne    570 <gettoken+0x130>
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
      s++;
    break;
  }
  if(eq)
     49e:	8b 55 14             	mov    0x14(%ebp),%edx
     4a1:	85 d2                	test   %edx,%edx
     4a3:	74 05                	je     4aa <gettoken+0x6a>
    *eq = s;
     4a5:	8b 45 14             	mov    0x14(%ebp),%eax
     4a8:	89 30                	mov    %esi,(%eax)

  while(s < es && strchr(whitespace, *s))
     4aa:	39 de                	cmp    %ebx,%esi
     4ac:	72 09                	jb     4b7 <gettoken+0x77>
     4ae:	eb 1f                	jmp    4cf <gettoken+0x8f>
    s++;
     4b0:	83 c6 01             	add    $0x1,%esi
  while(s < es && strchr(whitespace, *s))
     4b3:	39 f3                	cmp    %esi,%ebx
     4b5:	74 18                	je     4cf <gettoken+0x8f>
     4b7:	0f be 06             	movsbl (%esi),%eax
     4ba:	83 ec 08             	sub    $0x8,%esp
     4bd:	50                   	push   %eax
     4be:	68 4c 18 00 00       	push   $0x184c
     4c3:	e8 a8 06 00 00       	call   b70 <strchr>
     4c8:	83 c4 10             	add    $0x10,%esp
     4cb:	85 c0                	test   %eax,%eax
     4cd:	75 e1                	jne    4b0 <gettoken+0x70>
  *ps = s;
     4cf:	8b 45 08             	mov    0x8(%ebp),%eax
     4d2:	89 30                	mov    %esi,(%eax)
  return ret;
}
     4d4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     4d7:	89 f8                	mov    %edi,%eax
     4d9:	5b                   	pop    %ebx
     4da:	5e                   	pop    %esi
     4db:	5f                   	pop    %edi
     4dc:	5d                   	pop    %ebp
     4dd:	c3                   	ret    
     4de:	66 90                	xchg   %ax,%ax
  switch(*s){
     4e0:	3c 3e                	cmp    $0x3e,%al
     4e2:	75 1c                	jne    500 <gettoken+0xc0>
    if(*s == '>'){
     4e4:	80 7e 01 3e          	cmpb   $0x3e,0x1(%esi)
    s++;
     4e8:	8d 46 01             	lea    0x1(%esi),%eax
    if(*s == '>'){
     4eb:	0f 84 a4 00 00 00    	je     595 <gettoken+0x155>
    s++;
     4f1:	89 c6                	mov    %eax,%esi
     4f3:	bf 3e 00 00 00       	mov    $0x3e,%edi
     4f8:	eb a4                	jmp    49e <gettoken+0x5e>
     4fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  switch(*s){
     500:	7f 56                	jg     558 <gettoken+0x118>
     502:	8d 48 c5             	lea    -0x3b(%eax),%ecx
     505:	80 f9 01             	cmp    $0x1,%cl
     508:	76 52                	jbe    55c <gettoken+0x11c>
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     50a:	39 f3                	cmp    %esi,%ebx
     50c:	77 24                	ja     532 <gettoken+0xf2>
     50e:	eb 70                	jmp    580 <gettoken+0x140>
     510:	0f be 06             	movsbl (%esi),%eax
     513:	83 ec 08             	sub    $0x8,%esp
     516:	50                   	push   %eax
     517:	68 44 18 00 00       	push   $0x1844
     51c:	e8 4f 06 00 00       	call   b70 <strchr>
     521:	83 c4 10             	add    $0x10,%esp
     524:	85 c0                	test   %eax,%eax
     526:	75 1f                	jne    547 <gettoken+0x107>
      s++;
     528:	83 c6 01             	add    $0x1,%esi
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     52b:	39 f3                	cmp    %esi,%ebx
     52d:	74 51                	je     580 <gettoken+0x140>
     52f:	0f be 06             	movsbl (%esi),%eax
     532:	83 ec 08             	sub    $0x8,%esp
     535:	50                   	push   %eax
     536:	68 4c 18 00 00       	push   $0x184c
     53b:	e8 30 06 00 00       	call   b70 <strchr>
     540:	83 c4 10             	add    $0x10,%esp
     543:	85 c0                	test   %eax,%eax
     545:	74 c9                	je     510 <gettoken+0xd0>
    ret = 'a';
     547:	bf 61 00 00 00       	mov    $0x61,%edi
     54c:	e9 4d ff ff ff       	jmp    49e <gettoken+0x5e>
     551:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  switch(*s){
     558:	3c 7c                	cmp    $0x7c,%al
     55a:	75 ae                	jne    50a <gettoken+0xca>
  ret = *s;
     55c:	0f be f8             	movsbl %al,%edi
    s++;
     55f:	83 c6 01             	add    $0x1,%esi
    break;
     562:	e9 37 ff ff ff       	jmp    49e <gettoken+0x5e>
     567:	89 f6                	mov    %esi,%esi
     569:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  switch(*s){
     570:	3c 26                	cmp    $0x26,%al
     572:	75 96                	jne    50a <gettoken+0xca>
     574:	eb e6                	jmp    55c <gettoken+0x11c>
     576:	8d 76 00             	lea    0x0(%esi),%esi
     579:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  if(eq)
     580:	8b 45 14             	mov    0x14(%ebp),%eax
     583:	bf 61 00 00 00       	mov    $0x61,%edi
     588:	85 c0                	test   %eax,%eax
     58a:	0f 85 15 ff ff ff    	jne    4a5 <gettoken+0x65>
     590:	e9 3a ff ff ff       	jmp    4cf <gettoken+0x8f>
      s++;
     595:	83 c6 02             	add    $0x2,%esi
      ret = '+';
     598:	bf 2b 00 00 00       	mov    $0x2b,%edi
     59d:	e9 fc fe ff ff       	jmp    49e <gettoken+0x5e>
     5a2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     5a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000005b0 <peek>:

int
peek(char **ps, char *es, char *toks)
{
     5b0:	55                   	push   %ebp
     5b1:	89 e5                	mov    %esp,%ebp
     5b3:	57                   	push   %edi
     5b4:	56                   	push   %esi
     5b5:	53                   	push   %ebx
     5b6:	83 ec 0c             	sub    $0xc,%esp
     5b9:	8b 7d 08             	mov    0x8(%ebp),%edi
     5bc:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *s;

  s = *ps;
     5bf:	8b 1f                	mov    (%edi),%ebx
  while(s < es && strchr(whitespace, *s))
     5c1:	39 f3                	cmp    %esi,%ebx
     5c3:	72 12                	jb     5d7 <peek+0x27>
     5c5:	eb 28                	jmp    5ef <peek+0x3f>
     5c7:	89 f6                	mov    %esi,%esi
     5c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    s++;
     5d0:	83 c3 01             	add    $0x1,%ebx
  while(s < es && strchr(whitespace, *s))
     5d3:	39 de                	cmp    %ebx,%esi
     5d5:	74 18                	je     5ef <peek+0x3f>
     5d7:	0f be 03             	movsbl (%ebx),%eax
     5da:	83 ec 08             	sub    $0x8,%esp
     5dd:	50                   	push   %eax
     5de:	68 4c 18 00 00       	push   $0x184c
     5e3:	e8 88 05 00 00       	call   b70 <strchr>
     5e8:	83 c4 10             	add    $0x10,%esp
     5eb:	85 c0                	test   %eax,%eax
     5ed:	75 e1                	jne    5d0 <peek+0x20>
  *ps = s;
     5ef:	89 1f                	mov    %ebx,(%edi)
  return *s && strchr(toks, *s);
     5f1:	0f be 13             	movsbl (%ebx),%edx
     5f4:	31 c0                	xor    %eax,%eax
     5f6:	84 d2                	test   %dl,%dl
     5f8:	74 17                	je     611 <peek+0x61>
     5fa:	83 ec 08             	sub    $0x8,%esp
     5fd:	52                   	push   %edx
     5fe:	ff 75 10             	pushl  0x10(%ebp)
     601:	e8 6a 05 00 00       	call   b70 <strchr>
     606:	83 c4 10             	add    $0x10,%esp
     609:	85 c0                	test   %eax,%eax
     60b:	0f 95 c0             	setne  %al
     60e:	0f b6 c0             	movzbl %al,%eax
}
     611:	8d 65 f4             	lea    -0xc(%ebp),%esp
     614:	5b                   	pop    %ebx
     615:	5e                   	pop    %esi
     616:	5f                   	pop    %edi
     617:	5d                   	pop    %ebp
     618:	c3                   	ret    
     619:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000620 <parseredirs>:
  return cmd;
}

struct cmd*
parseredirs(struct cmd *cmd, char **ps, char *es)
{
     620:	55                   	push   %ebp
     621:	89 e5                	mov    %esp,%ebp
     623:	57                   	push   %edi
     624:	56                   	push   %esi
     625:	53                   	push   %ebx
     626:	83 ec 1c             	sub    $0x1c,%esp
     629:	8b 75 0c             	mov    0xc(%ebp),%esi
     62c:	8b 5d 10             	mov    0x10(%ebp),%ebx
     62f:	90                   	nop
  int tok;
  char *q, *eq;

  while(peek(ps, es, "<>")){
     630:	83 ec 04             	sub    $0x4,%esp
     633:	68 e9 11 00 00       	push   $0x11e9
     638:	53                   	push   %ebx
     639:	56                   	push   %esi
     63a:	e8 71 ff ff ff       	call   5b0 <peek>
     63f:	83 c4 10             	add    $0x10,%esp
     642:	85 c0                	test   %eax,%eax
     644:	74 6a                	je     6b0 <parseredirs+0x90>
    tok = gettoken(ps, es, 0, 0);
     646:	6a 00                	push   $0x0
     648:	6a 00                	push   $0x0
     64a:	53                   	push   %ebx
     64b:	56                   	push   %esi
     64c:	e8 ef fd ff ff       	call   440 <gettoken>
     651:	89 c7                	mov    %eax,%edi
    if(gettoken(ps, es, &q, &eq) != 'a')
     653:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     656:	50                   	push   %eax
     657:	8d 45 e0             	lea    -0x20(%ebp),%eax
     65a:	50                   	push   %eax
     65b:	53                   	push   %ebx
     65c:	56                   	push   %esi
     65d:	e8 de fd ff ff       	call   440 <gettoken>
     662:	83 c4 20             	add    $0x20,%esp
     665:	83 f8 61             	cmp    $0x61,%eax
     668:	75 51                	jne    6bb <parseredirs+0x9b>
      panic("missing file for redirection");
    switch(tok){
     66a:	83 ff 3c             	cmp    $0x3c,%edi
     66d:	74 31                	je     6a0 <parseredirs+0x80>
     66f:	83 ff 3e             	cmp    $0x3e,%edi
     672:	74 05                	je     679 <parseredirs+0x59>
     674:	83 ff 2b             	cmp    $0x2b,%edi
     677:	75 b7                	jne    630 <parseredirs+0x10>
      break;
    case '>':
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    case '+':  // >>
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     679:	83 ec 0c             	sub    $0xc,%esp
     67c:	6a 01                	push   $0x1
     67e:	68 01 02 00 00       	push   $0x201
     683:	ff 75 e4             	pushl  -0x1c(%ebp)
     686:	ff 75 e0             	pushl  -0x20(%ebp)
     689:	ff 75 08             	pushl  0x8(%ebp)
     68c:	e8 af fc ff ff       	call   340 <redircmd>
      break;
     691:	83 c4 20             	add    $0x20,%esp
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     694:	89 45 08             	mov    %eax,0x8(%ebp)
      break;
     697:	eb 97                	jmp    630 <parseredirs+0x10>
     699:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     6a0:	83 ec 0c             	sub    $0xc,%esp
     6a3:	6a 00                	push   $0x0
     6a5:	6a 00                	push   $0x0
     6a7:	eb da                	jmp    683 <parseredirs+0x63>
     6a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
  }
  return cmd;
}
     6b0:	8b 45 08             	mov    0x8(%ebp),%eax
     6b3:	8d 65 f4             	lea    -0xc(%ebp),%esp
     6b6:	5b                   	pop    %ebx
     6b7:	5e                   	pop    %esi
     6b8:	5f                   	pop    %edi
     6b9:	5d                   	pop    %ebp
     6ba:	c3                   	ret    
      panic("missing file for redirection");
     6bb:	83 ec 0c             	sub    $0xc,%esp
     6be:	68 cc 11 00 00       	push   $0x11cc
     6c3:	e8 78 fa ff ff       	call   140 <panic>
     6c8:	90                   	nop
     6c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000006d0 <parseexec>:
  return cmd;
}

struct cmd*
parseexec(char **ps, char *es)
{
     6d0:	55                   	push   %ebp
     6d1:	89 e5                	mov    %esp,%ebp
     6d3:	57                   	push   %edi
     6d4:	56                   	push   %esi
     6d5:	53                   	push   %ebx
     6d6:	83 ec 30             	sub    $0x30,%esp
     6d9:	8b 75 08             	mov    0x8(%ebp),%esi
     6dc:	8b 7d 0c             	mov    0xc(%ebp),%edi
  char *q, *eq;
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
     6df:	68 ec 11 00 00       	push   $0x11ec
     6e4:	57                   	push   %edi
     6e5:	56                   	push   %esi
     6e6:	e8 c5 fe ff ff       	call   5b0 <peek>
     6eb:	83 c4 10             	add    $0x10,%esp
     6ee:	85 c0                	test   %eax,%eax
     6f0:	0f 85 92 00 00 00    	jne    788 <parseexec+0xb8>
     6f6:	89 c3                	mov    %eax,%ebx
    return parseblock(ps, es);

  ret = execcmd();
     6f8:	e8 13 fc ff ff       	call   310 <execcmd>
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
     6fd:	83 ec 04             	sub    $0x4,%esp
  ret = execcmd();
     700:	89 45 d0             	mov    %eax,-0x30(%ebp)
  ret = parseredirs(ret, ps, es);
     703:	57                   	push   %edi
     704:	56                   	push   %esi
     705:	50                   	push   %eax
     706:	e8 15 ff ff ff       	call   620 <parseredirs>
     70b:	83 c4 10             	add    $0x10,%esp
     70e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
     711:	eb 18                	jmp    72b <parseexec+0x5b>
     713:	90                   	nop
     714:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    cmd->argv[argc] = q;
    cmd->eargv[argc] = eq;
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
     718:	83 ec 04             	sub    $0x4,%esp
     71b:	57                   	push   %edi
     71c:	56                   	push   %esi
     71d:	ff 75 d4             	pushl  -0x2c(%ebp)
     720:	e8 fb fe ff ff       	call   620 <parseredirs>
     725:	83 c4 10             	add    $0x10,%esp
     728:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
     72b:	83 ec 04             	sub    $0x4,%esp
     72e:	68 03 12 00 00       	push   $0x1203
     733:	57                   	push   %edi
     734:	56                   	push   %esi
     735:	e8 76 fe ff ff       	call   5b0 <peek>
     73a:	83 c4 10             	add    $0x10,%esp
     73d:	85 c0                	test   %eax,%eax
     73f:	75 67                	jne    7a8 <parseexec+0xd8>
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
     741:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     744:	50                   	push   %eax
     745:	8d 45 e0             	lea    -0x20(%ebp),%eax
     748:	50                   	push   %eax
     749:	57                   	push   %edi
     74a:	56                   	push   %esi
     74b:	e8 f0 fc ff ff       	call   440 <gettoken>
     750:	83 c4 10             	add    $0x10,%esp
     753:	85 c0                	test   %eax,%eax
     755:	74 51                	je     7a8 <parseexec+0xd8>
    if(tok != 'a')
     757:	83 f8 61             	cmp    $0x61,%eax
     75a:	75 6b                	jne    7c7 <parseexec+0xf7>
    cmd->argv[argc] = q;
     75c:	8b 45 e0             	mov    -0x20(%ebp),%eax
     75f:	8b 55 d0             	mov    -0x30(%ebp),%edx
     762:	89 44 9a 04          	mov    %eax,0x4(%edx,%ebx,4)
    cmd->eargv[argc] = eq;
     766:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     769:	89 44 9a 2c          	mov    %eax,0x2c(%edx,%ebx,4)
    argc++;
     76d:	83 c3 01             	add    $0x1,%ebx
    if(argc >= MAXARGS)
     770:	83 fb 0a             	cmp    $0xa,%ebx
     773:	75 a3                	jne    718 <parseexec+0x48>
      panic("too many args");
     775:	83 ec 0c             	sub    $0xc,%esp
     778:	68 f5 11 00 00       	push   $0x11f5
     77d:	e8 be f9 ff ff       	call   140 <panic>
     782:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    return parseblock(ps, es);
     788:	83 ec 08             	sub    $0x8,%esp
     78b:	57                   	push   %edi
     78c:	56                   	push   %esi
     78d:	e8 5e 01 00 00       	call   8f0 <parseblock>
     792:	83 c4 10             	add    $0x10,%esp
     795:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  }
  cmd->argv[argc] = 0;
  cmd->eargv[argc] = 0;
  return ret;
}
     798:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     79b:	8d 65 f4             	lea    -0xc(%ebp),%esp
     79e:	5b                   	pop    %ebx
     79f:	5e                   	pop    %esi
     7a0:	5f                   	pop    %edi
     7a1:	5d                   	pop    %ebp
     7a2:	c3                   	ret    
     7a3:	90                   	nop
     7a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     7a8:	8b 45 d0             	mov    -0x30(%ebp),%eax
     7ab:	8d 04 98             	lea    (%eax,%ebx,4),%eax
  cmd->argv[argc] = 0;
     7ae:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  cmd->eargv[argc] = 0;
     7b5:	c7 40 2c 00 00 00 00 	movl   $0x0,0x2c(%eax)
}
     7bc:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     7bf:	8d 65 f4             	lea    -0xc(%ebp),%esp
     7c2:	5b                   	pop    %ebx
     7c3:	5e                   	pop    %esi
     7c4:	5f                   	pop    %edi
     7c5:	5d                   	pop    %ebp
     7c6:	c3                   	ret    
      panic("syntax");
     7c7:	83 ec 0c             	sub    $0xc,%esp
     7ca:	68 ee 11 00 00       	push   $0x11ee
     7cf:	e8 6c f9 ff ff       	call   140 <panic>
     7d4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     7da:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000007e0 <parsepipe>:
{
     7e0:	55                   	push   %ebp
     7e1:	89 e5                	mov    %esp,%ebp
     7e3:	57                   	push   %edi
     7e4:	56                   	push   %esi
     7e5:	53                   	push   %ebx
     7e6:	83 ec 14             	sub    $0x14,%esp
     7e9:	8b 5d 08             	mov    0x8(%ebp),%ebx
     7ec:	8b 75 0c             	mov    0xc(%ebp),%esi
  cmd = parseexec(ps, es);
     7ef:	56                   	push   %esi
     7f0:	53                   	push   %ebx
     7f1:	e8 da fe ff ff       	call   6d0 <parseexec>
  if(peek(ps, es, "|")){
     7f6:	83 c4 0c             	add    $0xc,%esp
  cmd = parseexec(ps, es);
     7f9:	89 c7                	mov    %eax,%edi
  if(peek(ps, es, "|")){
     7fb:	68 08 12 00 00       	push   $0x1208
     800:	56                   	push   %esi
     801:	53                   	push   %ebx
     802:	e8 a9 fd ff ff       	call   5b0 <peek>
     807:	83 c4 10             	add    $0x10,%esp
     80a:	85 c0                	test   %eax,%eax
     80c:	75 12                	jne    820 <parsepipe+0x40>
}
     80e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     811:	89 f8                	mov    %edi,%eax
     813:	5b                   	pop    %ebx
     814:	5e                   	pop    %esi
     815:	5f                   	pop    %edi
     816:	5d                   	pop    %ebp
     817:	c3                   	ret    
     818:	90                   	nop
     819:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    gettoken(ps, es, 0, 0);
     820:	6a 00                	push   $0x0
     822:	6a 00                	push   $0x0
     824:	56                   	push   %esi
     825:	53                   	push   %ebx
     826:	e8 15 fc ff ff       	call   440 <gettoken>
    cmd = pipecmd(cmd, parsepipe(ps, es));
     82b:	58                   	pop    %eax
     82c:	5a                   	pop    %edx
     82d:	56                   	push   %esi
     82e:	53                   	push   %ebx
     82f:	e8 ac ff ff ff       	call   7e0 <parsepipe>
     834:	89 7d 08             	mov    %edi,0x8(%ebp)
     837:	89 45 0c             	mov    %eax,0xc(%ebp)
     83a:	83 c4 10             	add    $0x10,%esp
}
     83d:	8d 65 f4             	lea    -0xc(%ebp),%esp
     840:	5b                   	pop    %ebx
     841:	5e                   	pop    %esi
     842:	5f                   	pop    %edi
     843:	5d                   	pop    %ebp
    cmd = pipecmd(cmd, parsepipe(ps, es));
     844:	e9 47 fb ff ff       	jmp    390 <pipecmd>
     849:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000850 <parseline>:
{
     850:	55                   	push   %ebp
     851:	89 e5                	mov    %esp,%ebp
     853:	57                   	push   %edi
     854:	56                   	push   %esi
     855:	53                   	push   %ebx
     856:	83 ec 14             	sub    $0x14,%esp
     859:	8b 5d 08             	mov    0x8(%ebp),%ebx
     85c:	8b 75 0c             	mov    0xc(%ebp),%esi
  cmd = parsepipe(ps, es);
     85f:	56                   	push   %esi
     860:	53                   	push   %ebx
     861:	e8 7a ff ff ff       	call   7e0 <parsepipe>
  while(peek(ps, es, "&")){
     866:	83 c4 10             	add    $0x10,%esp
  cmd = parsepipe(ps, es);
     869:	89 c7                	mov    %eax,%edi
  while(peek(ps, es, "&")){
     86b:	eb 1b                	jmp    888 <parseline+0x38>
     86d:	8d 76 00             	lea    0x0(%esi),%esi
    gettoken(ps, es, 0, 0);
     870:	6a 00                	push   $0x0
     872:	6a 00                	push   $0x0
     874:	56                   	push   %esi
     875:	53                   	push   %ebx
     876:	e8 c5 fb ff ff       	call   440 <gettoken>
    cmd = backcmd(cmd);
     87b:	89 3c 24             	mov    %edi,(%esp)
     87e:	e8 8d fb ff ff       	call   410 <backcmd>
     883:	83 c4 10             	add    $0x10,%esp
     886:	89 c7                	mov    %eax,%edi
  while(peek(ps, es, "&")){
     888:	83 ec 04             	sub    $0x4,%esp
     88b:	68 0a 12 00 00       	push   $0x120a
     890:	56                   	push   %esi
     891:	53                   	push   %ebx
     892:	e8 19 fd ff ff       	call   5b0 <peek>
     897:	83 c4 10             	add    $0x10,%esp
     89a:	85 c0                	test   %eax,%eax
     89c:	75 d2                	jne    870 <parseline+0x20>
  if(peek(ps, es, ";")){
     89e:	83 ec 04             	sub    $0x4,%esp
     8a1:	68 06 12 00 00       	push   $0x1206
     8a6:	56                   	push   %esi
     8a7:	53                   	push   %ebx
     8a8:	e8 03 fd ff ff       	call   5b0 <peek>
     8ad:	83 c4 10             	add    $0x10,%esp
     8b0:	85 c0                	test   %eax,%eax
     8b2:	75 0c                	jne    8c0 <parseline+0x70>
}
     8b4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     8b7:	89 f8                	mov    %edi,%eax
     8b9:	5b                   	pop    %ebx
     8ba:	5e                   	pop    %esi
     8bb:	5f                   	pop    %edi
     8bc:	5d                   	pop    %ebp
     8bd:	c3                   	ret    
     8be:	66 90                	xchg   %ax,%ax
    gettoken(ps, es, 0, 0);
     8c0:	6a 00                	push   $0x0
     8c2:	6a 00                	push   $0x0
     8c4:	56                   	push   %esi
     8c5:	53                   	push   %ebx
     8c6:	e8 75 fb ff ff       	call   440 <gettoken>
    cmd = listcmd(cmd, parseline(ps, es));
     8cb:	58                   	pop    %eax
     8cc:	5a                   	pop    %edx
     8cd:	56                   	push   %esi
     8ce:	53                   	push   %ebx
     8cf:	e8 7c ff ff ff       	call   850 <parseline>
     8d4:	89 7d 08             	mov    %edi,0x8(%ebp)
     8d7:	89 45 0c             	mov    %eax,0xc(%ebp)
     8da:	83 c4 10             	add    $0x10,%esp
}
     8dd:	8d 65 f4             	lea    -0xc(%ebp),%esp
     8e0:	5b                   	pop    %ebx
     8e1:	5e                   	pop    %esi
     8e2:	5f                   	pop    %edi
     8e3:	5d                   	pop    %ebp
    cmd = listcmd(cmd, parseline(ps, es));
     8e4:	e9 e7 fa ff ff       	jmp    3d0 <listcmd>
     8e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000008f0 <parseblock>:
{
     8f0:	55                   	push   %ebp
     8f1:	89 e5                	mov    %esp,%ebp
     8f3:	57                   	push   %edi
     8f4:	56                   	push   %esi
     8f5:	53                   	push   %ebx
     8f6:	83 ec 10             	sub    $0x10,%esp
     8f9:	8b 5d 08             	mov    0x8(%ebp),%ebx
     8fc:	8b 75 0c             	mov    0xc(%ebp),%esi
  if(!peek(ps, es, "("))
     8ff:	68 ec 11 00 00       	push   $0x11ec
     904:	56                   	push   %esi
     905:	53                   	push   %ebx
     906:	e8 a5 fc ff ff       	call   5b0 <peek>
     90b:	83 c4 10             	add    $0x10,%esp
     90e:	85 c0                	test   %eax,%eax
     910:	74 4a                	je     95c <parseblock+0x6c>
  gettoken(ps, es, 0, 0);
     912:	6a 00                	push   $0x0
     914:	6a 00                	push   $0x0
     916:	56                   	push   %esi
     917:	53                   	push   %ebx
     918:	e8 23 fb ff ff       	call   440 <gettoken>
  cmd = parseline(ps, es);
     91d:	58                   	pop    %eax
     91e:	5a                   	pop    %edx
     91f:	56                   	push   %esi
     920:	53                   	push   %ebx
     921:	e8 2a ff ff ff       	call   850 <parseline>
  if(!peek(ps, es, ")"))
     926:	83 c4 0c             	add    $0xc,%esp
  cmd = parseline(ps, es);
     929:	89 c7                	mov    %eax,%edi
  if(!peek(ps, es, ")"))
     92b:	68 28 12 00 00       	push   $0x1228
     930:	56                   	push   %esi
     931:	53                   	push   %ebx
     932:	e8 79 fc ff ff       	call   5b0 <peek>
     937:	83 c4 10             	add    $0x10,%esp
     93a:	85 c0                	test   %eax,%eax
     93c:	74 2b                	je     969 <parseblock+0x79>
  gettoken(ps, es, 0, 0);
     93e:	6a 00                	push   $0x0
     940:	6a 00                	push   $0x0
     942:	56                   	push   %esi
     943:	53                   	push   %ebx
     944:	e8 f7 fa ff ff       	call   440 <gettoken>
  cmd = parseredirs(cmd, ps, es);
     949:	83 c4 0c             	add    $0xc,%esp
     94c:	56                   	push   %esi
     94d:	53                   	push   %ebx
     94e:	57                   	push   %edi
     94f:	e8 cc fc ff ff       	call   620 <parseredirs>
}
     954:	8d 65 f4             	lea    -0xc(%ebp),%esp
     957:	5b                   	pop    %ebx
     958:	5e                   	pop    %esi
     959:	5f                   	pop    %edi
     95a:	5d                   	pop    %ebp
     95b:	c3                   	ret    
    panic("parseblock");
     95c:	83 ec 0c             	sub    $0xc,%esp
     95f:	68 0c 12 00 00       	push   $0x120c
     964:	e8 d7 f7 ff ff       	call   140 <panic>
    panic("syntax - missing )");
     969:	83 ec 0c             	sub    $0xc,%esp
     96c:	68 17 12 00 00       	push   $0x1217
     971:	e8 ca f7 ff ff       	call   140 <panic>
     976:	8d 76 00             	lea    0x0(%esi),%esi
     979:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000980 <nulterminate>:

// NUL-terminate all the counted strings.
struct cmd*
nulterminate(struct cmd *cmd)
{
     980:	55                   	push   %ebp
     981:	89 e5                	mov    %esp,%ebp
     983:	53                   	push   %ebx
     984:	83 ec 04             	sub    $0x4,%esp
     987:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
     98a:	85 db                	test   %ebx,%ebx
     98c:	74 20                	je     9ae <nulterminate+0x2e>
    return 0;

  switch(cmd->type){
     98e:	83 3b 05             	cmpl   $0x5,(%ebx)
     991:	77 1b                	ja     9ae <nulterminate+0x2e>
     993:	8b 03                	mov    (%ebx),%eax
     995:	ff 24 85 68 12 00 00 	jmp    *0x1268(,%eax,4)
     99c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    nulterminate(lcmd->right);
    break;

  case BACK:
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
     9a0:	83 ec 0c             	sub    $0xc,%esp
     9a3:	ff 73 04             	pushl  0x4(%ebx)
     9a6:	e8 d5 ff ff ff       	call   980 <nulterminate>
    break;
     9ab:	83 c4 10             	add    $0x10,%esp
  }
  return cmd;
}
     9ae:	89 d8                	mov    %ebx,%eax
     9b0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     9b3:	c9                   	leave  
     9b4:	c3                   	ret    
     9b5:	8d 76 00             	lea    0x0(%esi),%esi
    nulterminate(lcmd->left);
     9b8:	83 ec 0c             	sub    $0xc,%esp
     9bb:	ff 73 04             	pushl  0x4(%ebx)
     9be:	e8 bd ff ff ff       	call   980 <nulterminate>
    nulterminate(lcmd->right);
     9c3:	58                   	pop    %eax
     9c4:	ff 73 08             	pushl  0x8(%ebx)
     9c7:	e8 b4 ff ff ff       	call   980 <nulterminate>
}
     9cc:	89 d8                	mov    %ebx,%eax
    break;
     9ce:	83 c4 10             	add    $0x10,%esp
}
     9d1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     9d4:	c9                   	leave  
     9d5:	c3                   	ret    
     9d6:	8d 76 00             	lea    0x0(%esi),%esi
     9d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    for(i=0; ecmd->argv[i]; i++)
     9e0:	8b 4b 04             	mov    0x4(%ebx),%ecx
     9e3:	8d 43 08             	lea    0x8(%ebx),%eax
     9e6:	85 c9                	test   %ecx,%ecx
     9e8:	74 c4                	je     9ae <nulterminate+0x2e>
     9ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      *ecmd->eargv[i] = 0;
     9f0:	8b 50 24             	mov    0x24(%eax),%edx
     9f3:	83 c0 04             	add    $0x4,%eax
     9f6:	c6 02 00             	movb   $0x0,(%edx)
    for(i=0; ecmd->argv[i]; i++)
     9f9:	8b 50 fc             	mov    -0x4(%eax),%edx
     9fc:	85 d2                	test   %edx,%edx
     9fe:	75 f0                	jne    9f0 <nulterminate+0x70>
}
     a00:	89 d8                	mov    %ebx,%eax
     a02:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     a05:	c9                   	leave  
     a06:	c3                   	ret    
     a07:	89 f6                	mov    %esi,%esi
     a09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    nulterminate(rcmd->cmd);
     a10:	83 ec 0c             	sub    $0xc,%esp
     a13:	ff 73 04             	pushl  0x4(%ebx)
     a16:	e8 65 ff ff ff       	call   980 <nulterminate>
    *rcmd->efile = 0;
     a1b:	8b 43 0c             	mov    0xc(%ebx),%eax
    break;
     a1e:	83 c4 10             	add    $0x10,%esp
    *rcmd->efile = 0;
     a21:	c6 00 00             	movb   $0x0,(%eax)
}
     a24:	89 d8                	mov    %ebx,%eax
     a26:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     a29:	c9                   	leave  
     a2a:	c3                   	ret    
     a2b:	90                   	nop
     a2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000a30 <parsecmd>:
{
     a30:	55                   	push   %ebp
     a31:	89 e5                	mov    %esp,%ebp
     a33:	56                   	push   %esi
     a34:	53                   	push   %ebx
  es = s + strlen(s);
     a35:	8b 5d 08             	mov    0x8(%ebp),%ebx
     a38:	83 ec 0c             	sub    $0xc,%esp
     a3b:	53                   	push   %ebx
     a3c:	e8 df 00 00 00       	call   b20 <strlen>
  cmd = parseline(&s, es);
     a41:	59                   	pop    %ecx
  es = s + strlen(s);
     a42:	01 c3                	add    %eax,%ebx
  cmd = parseline(&s, es);
     a44:	8d 45 08             	lea    0x8(%ebp),%eax
     a47:	5e                   	pop    %esi
     a48:	53                   	push   %ebx
     a49:	50                   	push   %eax
     a4a:	e8 01 fe ff ff       	call   850 <parseline>
     a4f:	89 c6                	mov    %eax,%esi
  peek(&s, es, "");
     a51:	8d 45 08             	lea    0x8(%ebp),%eax
     a54:	83 c4 0c             	add    $0xc,%esp
     a57:	68 b6 11 00 00       	push   $0x11b6
     a5c:	53                   	push   %ebx
     a5d:	50                   	push   %eax
     a5e:	e8 4d fb ff ff       	call   5b0 <peek>
  if(s != es){
     a63:	8b 45 08             	mov    0x8(%ebp),%eax
     a66:	83 c4 10             	add    $0x10,%esp
     a69:	39 d8                	cmp    %ebx,%eax
     a6b:	75 12                	jne    a7f <parsecmd+0x4f>
  nulterminate(cmd);
     a6d:	83 ec 0c             	sub    $0xc,%esp
     a70:	56                   	push   %esi
     a71:	e8 0a ff ff ff       	call   980 <nulterminate>
}
     a76:	8d 65 f8             	lea    -0x8(%ebp),%esp
     a79:	89 f0                	mov    %esi,%eax
     a7b:	5b                   	pop    %ebx
     a7c:	5e                   	pop    %esi
     a7d:	5d                   	pop    %ebp
     a7e:	c3                   	ret    
    printf(2, "leftovers: %s\n", s);
     a7f:	52                   	push   %edx
     a80:	50                   	push   %eax
     a81:	68 2a 12 00 00       	push   $0x122a
     a86:	6a 02                	push   $0x2
     a88:	e8 b3 03 00 00       	call   e40 <printf>
    panic("syntax");
     a8d:	c7 04 24 ee 11 00 00 	movl   $0x11ee,(%esp)
     a94:	e8 a7 f6 ff ff       	call   140 <panic>
     a99:	66 90                	xchg   %ax,%ax
     a9b:	66 90                	xchg   %ax,%ax
     a9d:	66 90                	xchg   %ax,%ax
     a9f:	90                   	nop

00000aa0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
     aa0:	55                   	push   %ebp
     aa1:	89 e5                	mov    %esp,%ebp
     aa3:	53                   	push   %ebx
     aa4:	8b 45 08             	mov    0x8(%ebp),%eax
     aa7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     aaa:	89 c2                	mov    %eax,%edx
     aac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     ab0:	83 c1 01             	add    $0x1,%ecx
     ab3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
     ab7:	83 c2 01             	add    $0x1,%edx
     aba:	84 db                	test   %bl,%bl
     abc:	88 5a ff             	mov    %bl,-0x1(%edx)
     abf:	75 ef                	jne    ab0 <strcpy+0x10>
    ;
  return os;
}
     ac1:	5b                   	pop    %ebx
     ac2:	5d                   	pop    %ebp
     ac3:	c3                   	ret    
     ac4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     aca:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000ad0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     ad0:	55                   	push   %ebp
     ad1:	89 e5                	mov    %esp,%ebp
     ad3:	53                   	push   %ebx
     ad4:	8b 55 08             	mov    0x8(%ebp),%edx
     ad7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
     ada:	0f b6 02             	movzbl (%edx),%eax
     add:	0f b6 19             	movzbl (%ecx),%ebx
     ae0:	84 c0                	test   %al,%al
     ae2:	75 1c                	jne    b00 <strcmp+0x30>
     ae4:	eb 2a                	jmp    b10 <strcmp+0x40>
     ae6:	8d 76 00             	lea    0x0(%esi),%esi
     ae9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
     af0:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
     af3:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
     af6:	83 c1 01             	add    $0x1,%ecx
     af9:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
     afc:	84 c0                	test   %al,%al
     afe:	74 10                	je     b10 <strcmp+0x40>
     b00:	38 d8                	cmp    %bl,%al
     b02:	74 ec                	je     af0 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
     b04:	29 d8                	sub    %ebx,%eax
}
     b06:	5b                   	pop    %ebx
     b07:	5d                   	pop    %ebp
     b08:	c3                   	ret    
     b09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     b10:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
     b12:	29 d8                	sub    %ebx,%eax
}
     b14:	5b                   	pop    %ebx
     b15:	5d                   	pop    %ebp
     b16:	c3                   	ret    
     b17:	89 f6                	mov    %esi,%esi
     b19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000b20 <strlen>:

uint
strlen(char *s)
{
     b20:	55                   	push   %ebp
     b21:	89 e5                	mov    %esp,%ebp
     b23:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
     b26:	80 39 00             	cmpb   $0x0,(%ecx)
     b29:	74 15                	je     b40 <strlen+0x20>
     b2b:	31 d2                	xor    %edx,%edx
     b2d:	8d 76 00             	lea    0x0(%esi),%esi
     b30:	83 c2 01             	add    $0x1,%edx
     b33:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
     b37:	89 d0                	mov    %edx,%eax
     b39:	75 f5                	jne    b30 <strlen+0x10>
    ;
  return n;
}
     b3b:	5d                   	pop    %ebp
     b3c:	c3                   	ret    
     b3d:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
     b40:	31 c0                	xor    %eax,%eax
}
     b42:	5d                   	pop    %ebp
     b43:	c3                   	ret    
     b44:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     b4a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000b50 <memset>:

void*
memset(void *dst, int c, uint n)
{
     b50:	55                   	push   %ebp
     b51:	89 e5                	mov    %esp,%ebp
     b53:	57                   	push   %edi
     b54:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     b57:	8b 4d 10             	mov    0x10(%ebp),%ecx
     b5a:	8b 45 0c             	mov    0xc(%ebp),%eax
     b5d:	89 d7                	mov    %edx,%edi
     b5f:	fc                   	cld    
     b60:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     b62:	89 d0                	mov    %edx,%eax
     b64:	5f                   	pop    %edi
     b65:	5d                   	pop    %ebp
     b66:	c3                   	ret    
     b67:	89 f6                	mov    %esi,%esi
     b69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000b70 <strchr>:

char*
strchr(const char *s, char c)
{
     b70:	55                   	push   %ebp
     b71:	89 e5                	mov    %esp,%ebp
     b73:	53                   	push   %ebx
     b74:	8b 45 08             	mov    0x8(%ebp),%eax
     b77:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
     b7a:	0f b6 10             	movzbl (%eax),%edx
     b7d:	84 d2                	test   %dl,%dl
     b7f:	74 1d                	je     b9e <strchr+0x2e>
    if(*s == c)
     b81:	38 d3                	cmp    %dl,%bl
     b83:	89 d9                	mov    %ebx,%ecx
     b85:	75 0d                	jne    b94 <strchr+0x24>
     b87:	eb 17                	jmp    ba0 <strchr+0x30>
     b89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     b90:	38 ca                	cmp    %cl,%dl
     b92:	74 0c                	je     ba0 <strchr+0x30>
  for(; *s; s++)
     b94:	83 c0 01             	add    $0x1,%eax
     b97:	0f b6 10             	movzbl (%eax),%edx
     b9a:	84 d2                	test   %dl,%dl
     b9c:	75 f2                	jne    b90 <strchr+0x20>
      return (char*)s;
  return 0;
     b9e:	31 c0                	xor    %eax,%eax
}
     ba0:	5b                   	pop    %ebx
     ba1:	5d                   	pop    %ebp
     ba2:	c3                   	ret    
     ba3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     ba9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000bb0 <gets>:

char*
gets(char *buf, int max)
{
     bb0:	55                   	push   %ebp
     bb1:	89 e5                	mov    %esp,%ebp
     bb3:	57                   	push   %edi
     bb4:	56                   	push   %esi
     bb5:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     bb6:	31 f6                	xor    %esi,%esi
     bb8:	89 f3                	mov    %esi,%ebx
{
     bba:	83 ec 1c             	sub    $0x1c,%esp
     bbd:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
     bc0:	eb 2f                	jmp    bf1 <gets+0x41>
     bc2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
     bc8:	8d 45 e7             	lea    -0x19(%ebp),%eax
     bcb:	83 ec 04             	sub    $0x4,%esp
     bce:	6a 01                	push   $0x1
     bd0:	50                   	push   %eax
     bd1:	6a 00                	push   $0x0
     bd3:	e8 32 01 00 00       	call   d0a <read>
    if(cc < 1)
     bd8:	83 c4 10             	add    $0x10,%esp
     bdb:	85 c0                	test   %eax,%eax
     bdd:	7e 1c                	jle    bfb <gets+0x4b>
      break;
    buf[i++] = c;
     bdf:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
     be3:	83 c7 01             	add    $0x1,%edi
     be6:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
     be9:	3c 0a                	cmp    $0xa,%al
     beb:	74 23                	je     c10 <gets+0x60>
     bed:	3c 0d                	cmp    $0xd,%al
     bef:	74 1f                	je     c10 <gets+0x60>
  for(i=0; i+1 < max; ){
     bf1:	83 c3 01             	add    $0x1,%ebx
     bf4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     bf7:	89 fe                	mov    %edi,%esi
     bf9:	7c cd                	jl     bc8 <gets+0x18>
     bfb:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
     bfd:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
     c00:	c6 03 00             	movb   $0x0,(%ebx)
}
     c03:	8d 65 f4             	lea    -0xc(%ebp),%esp
     c06:	5b                   	pop    %ebx
     c07:	5e                   	pop    %esi
     c08:	5f                   	pop    %edi
     c09:	5d                   	pop    %ebp
     c0a:	c3                   	ret    
     c0b:	90                   	nop
     c0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     c10:	8b 75 08             	mov    0x8(%ebp),%esi
     c13:	8b 45 08             	mov    0x8(%ebp),%eax
     c16:	01 de                	add    %ebx,%esi
     c18:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
     c1a:	c6 03 00             	movb   $0x0,(%ebx)
}
     c1d:	8d 65 f4             	lea    -0xc(%ebp),%esp
     c20:	5b                   	pop    %ebx
     c21:	5e                   	pop    %esi
     c22:	5f                   	pop    %edi
     c23:	5d                   	pop    %ebp
     c24:	c3                   	ret    
     c25:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     c29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000c30 <stat>:

int
stat(char *n, struct stat *st)
{
     c30:	55                   	push   %ebp
     c31:	89 e5                	mov    %esp,%ebp
     c33:	56                   	push   %esi
     c34:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     c35:	83 ec 08             	sub    $0x8,%esp
     c38:	6a 00                	push   $0x0
     c3a:	ff 75 08             	pushl  0x8(%ebp)
     c3d:	e8 f0 00 00 00       	call   d32 <open>
  if(fd < 0)
     c42:	83 c4 10             	add    $0x10,%esp
     c45:	85 c0                	test   %eax,%eax
     c47:	78 27                	js     c70 <stat+0x40>
    return -1;
  r = fstat(fd, st);
     c49:	83 ec 08             	sub    $0x8,%esp
     c4c:	ff 75 0c             	pushl  0xc(%ebp)
     c4f:	89 c3                	mov    %eax,%ebx
     c51:	50                   	push   %eax
     c52:	e8 f3 00 00 00       	call   d4a <fstat>
  close(fd);
     c57:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
     c5a:	89 c6                	mov    %eax,%esi
  close(fd);
     c5c:	e8 b9 00 00 00       	call   d1a <close>
  return r;
     c61:	83 c4 10             	add    $0x10,%esp
}
     c64:	8d 65 f8             	lea    -0x8(%ebp),%esp
     c67:	89 f0                	mov    %esi,%eax
     c69:	5b                   	pop    %ebx
     c6a:	5e                   	pop    %esi
     c6b:	5d                   	pop    %ebp
     c6c:	c3                   	ret    
     c6d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
     c70:	be ff ff ff ff       	mov    $0xffffffff,%esi
     c75:	eb ed                	jmp    c64 <stat+0x34>
     c77:	89 f6                	mov    %esi,%esi
     c79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000c80 <atoi>:

int
atoi(const char *s)
{
     c80:	55                   	push   %ebp
     c81:	89 e5                	mov    %esp,%ebp
     c83:	53                   	push   %ebx
     c84:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     c87:	0f be 11             	movsbl (%ecx),%edx
     c8a:	8d 42 d0             	lea    -0x30(%edx),%eax
     c8d:	3c 09                	cmp    $0x9,%al
  n = 0;
     c8f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
     c94:	77 1f                	ja     cb5 <atoi+0x35>
     c96:	8d 76 00             	lea    0x0(%esi),%esi
     c99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
     ca0:	8d 04 80             	lea    (%eax,%eax,4),%eax
     ca3:	83 c1 01             	add    $0x1,%ecx
     ca6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
     caa:	0f be 11             	movsbl (%ecx),%edx
     cad:	8d 5a d0             	lea    -0x30(%edx),%ebx
     cb0:	80 fb 09             	cmp    $0x9,%bl
     cb3:	76 eb                	jbe    ca0 <atoi+0x20>
  return n;
}
     cb5:	5b                   	pop    %ebx
     cb6:	5d                   	pop    %ebp
     cb7:	c3                   	ret    
     cb8:	90                   	nop
     cb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000cc0 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
     cc0:	55                   	push   %ebp
     cc1:	89 e5                	mov    %esp,%ebp
     cc3:	56                   	push   %esi
     cc4:	53                   	push   %ebx
     cc5:	8b 5d 10             	mov    0x10(%ebp),%ebx
     cc8:	8b 45 08             	mov    0x8(%ebp),%eax
     ccb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     cce:	85 db                	test   %ebx,%ebx
     cd0:	7e 14                	jle    ce6 <memmove+0x26>
     cd2:	31 d2                	xor    %edx,%edx
     cd4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
     cd8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
     cdc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
     cdf:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
     ce2:	39 d3                	cmp    %edx,%ebx
     ce4:	75 f2                	jne    cd8 <memmove+0x18>
  return vdst;
}
     ce6:	5b                   	pop    %ebx
     ce7:	5e                   	pop    %esi
     ce8:	5d                   	pop    %ebp
     ce9:	c3                   	ret    

00000cea <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
     cea:	b8 01 00 00 00       	mov    $0x1,%eax
     cef:	cd 40                	int    $0x40
     cf1:	c3                   	ret    

00000cf2 <exit>:
SYSCALL(exit)
     cf2:	b8 02 00 00 00       	mov    $0x2,%eax
     cf7:	cd 40                	int    $0x40
     cf9:	c3                   	ret    

00000cfa <wait>:
SYSCALL(wait)
     cfa:	b8 03 00 00 00       	mov    $0x3,%eax
     cff:	cd 40                	int    $0x40
     d01:	c3                   	ret    

00000d02 <pipe>:
SYSCALL(pipe)
     d02:	b8 04 00 00 00       	mov    $0x4,%eax
     d07:	cd 40                	int    $0x40
     d09:	c3                   	ret    

00000d0a <read>:
SYSCALL(read)
     d0a:	b8 05 00 00 00       	mov    $0x5,%eax
     d0f:	cd 40                	int    $0x40
     d11:	c3                   	ret    

00000d12 <write>:
SYSCALL(write)
     d12:	b8 10 00 00 00       	mov    $0x10,%eax
     d17:	cd 40                	int    $0x40
     d19:	c3                   	ret    

00000d1a <close>:
SYSCALL(close)
     d1a:	b8 15 00 00 00       	mov    $0x15,%eax
     d1f:	cd 40                	int    $0x40
     d21:	c3                   	ret    

00000d22 <kill>:
SYSCALL(kill)
     d22:	b8 06 00 00 00       	mov    $0x6,%eax
     d27:	cd 40                	int    $0x40
     d29:	c3                   	ret    

00000d2a <exec>:
SYSCALL(exec)
     d2a:	b8 07 00 00 00       	mov    $0x7,%eax
     d2f:	cd 40                	int    $0x40
     d31:	c3                   	ret    

00000d32 <open>:
SYSCALL(open)
     d32:	b8 0f 00 00 00       	mov    $0xf,%eax
     d37:	cd 40                	int    $0x40
     d39:	c3                   	ret    

00000d3a <mknod>:
SYSCALL(mknod)
     d3a:	b8 11 00 00 00       	mov    $0x11,%eax
     d3f:	cd 40                	int    $0x40
     d41:	c3                   	ret    

00000d42 <unlink>:
SYSCALL(unlink)
     d42:	b8 12 00 00 00       	mov    $0x12,%eax
     d47:	cd 40                	int    $0x40
     d49:	c3                   	ret    

00000d4a <fstat>:
SYSCALL(fstat)
     d4a:	b8 08 00 00 00       	mov    $0x8,%eax
     d4f:	cd 40                	int    $0x40
     d51:	c3                   	ret    

00000d52 <link>:
SYSCALL(link)
     d52:	b8 13 00 00 00       	mov    $0x13,%eax
     d57:	cd 40                	int    $0x40
     d59:	c3                   	ret    

00000d5a <mkdir>:
SYSCALL(mkdir)
     d5a:	b8 14 00 00 00       	mov    $0x14,%eax
     d5f:	cd 40                	int    $0x40
     d61:	c3                   	ret    

00000d62 <chdir>:
SYSCALL(chdir)
     d62:	b8 09 00 00 00       	mov    $0x9,%eax
     d67:	cd 40                	int    $0x40
     d69:	c3                   	ret    

00000d6a <dup>:
SYSCALL(dup)
     d6a:	b8 0a 00 00 00       	mov    $0xa,%eax
     d6f:	cd 40                	int    $0x40
     d71:	c3                   	ret    

00000d72 <getpid>:
SYSCALL(getpid)
     d72:	b8 0b 00 00 00       	mov    $0xb,%eax
     d77:	cd 40                	int    $0x40
     d79:	c3                   	ret    

00000d7a <sbrk>:
SYSCALL(sbrk)
     d7a:	b8 0c 00 00 00       	mov    $0xc,%eax
     d7f:	cd 40                	int    $0x40
     d81:	c3                   	ret    

00000d82 <sleep>:
SYSCALL(sleep)
     d82:	b8 0d 00 00 00       	mov    $0xd,%eax
     d87:	cd 40                	int    $0x40
     d89:	c3                   	ret    

00000d8a <uptime>:
SYSCALL(uptime)
     d8a:	b8 0e 00 00 00       	mov    $0xe,%eax
     d8f:	cd 40                	int    $0x40
     d91:	c3                   	ret    
     d92:	66 90                	xchg   %ax,%ax
     d94:	66 90                	xchg   %ax,%ax
     d96:	66 90                	xchg   %ax,%ax
     d98:	66 90                	xchg   %ax,%ax
     d9a:	66 90                	xchg   %ax,%ax
     d9c:	66 90                	xchg   %ax,%ax
     d9e:	66 90                	xchg   %ax,%ax

00000da0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
     da0:	55                   	push   %ebp
     da1:	89 e5                	mov    %esp,%ebp
     da3:	57                   	push   %edi
     da4:	56                   	push   %esi
     da5:	53                   	push   %ebx
     da6:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
     da9:	85 d2                	test   %edx,%edx
{
     dab:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
     dae:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
     db0:	79 76                	jns    e28 <printint+0x88>
     db2:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
     db6:	74 70                	je     e28 <printint+0x88>
    x = -xx;
     db8:	f7 d8                	neg    %eax
    neg = 1;
     dba:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
     dc1:	31 f6                	xor    %esi,%esi
     dc3:	8d 5d d7             	lea    -0x29(%ebp),%ebx
     dc6:	eb 0a                	jmp    dd2 <printint+0x32>
     dc8:	90                   	nop
     dc9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
     dd0:	89 fe                	mov    %edi,%esi
     dd2:	31 d2                	xor    %edx,%edx
     dd4:	8d 7e 01             	lea    0x1(%esi),%edi
     dd7:	f7 f1                	div    %ecx
     dd9:	0f b6 92 88 12 00 00 	movzbl 0x1288(%edx),%edx
  }while((x /= base) != 0);
     de0:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
     de2:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
     de5:	75 e9                	jne    dd0 <printint+0x30>
  if(neg)
     de7:	8b 45 c4             	mov    -0x3c(%ebp),%eax
     dea:	85 c0                	test   %eax,%eax
     dec:	74 08                	je     df6 <printint+0x56>
    buf[i++] = '-';
     dee:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
     df3:	8d 7e 02             	lea    0x2(%esi),%edi
     df6:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
     dfa:	8b 7d c0             	mov    -0x40(%ebp),%edi
     dfd:	8d 76 00             	lea    0x0(%esi),%esi
     e00:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
     e03:	83 ec 04             	sub    $0x4,%esp
     e06:	83 ee 01             	sub    $0x1,%esi
     e09:	6a 01                	push   $0x1
     e0b:	53                   	push   %ebx
     e0c:	57                   	push   %edi
     e0d:	88 45 d7             	mov    %al,-0x29(%ebp)
     e10:	e8 fd fe ff ff       	call   d12 <write>

  while(--i >= 0)
     e15:	83 c4 10             	add    $0x10,%esp
     e18:	39 de                	cmp    %ebx,%esi
     e1a:	75 e4                	jne    e00 <printint+0x60>
    putc(fd, buf[i]);
}
     e1c:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e1f:	5b                   	pop    %ebx
     e20:	5e                   	pop    %esi
     e21:	5f                   	pop    %edi
     e22:	5d                   	pop    %ebp
     e23:	c3                   	ret    
     e24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
     e28:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
     e2f:	eb 90                	jmp    dc1 <printint+0x21>
     e31:	eb 0d                	jmp    e40 <printf>
     e33:	90                   	nop
     e34:	90                   	nop
     e35:	90                   	nop
     e36:	90                   	nop
     e37:	90                   	nop
     e38:	90                   	nop
     e39:	90                   	nop
     e3a:	90                   	nop
     e3b:	90                   	nop
     e3c:	90                   	nop
     e3d:	90                   	nop
     e3e:	90                   	nop
     e3f:	90                   	nop

00000e40 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
     e40:	55                   	push   %ebp
     e41:	89 e5                	mov    %esp,%ebp
     e43:	57                   	push   %edi
     e44:	56                   	push   %esi
     e45:	53                   	push   %ebx
     e46:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     e49:	8b 75 0c             	mov    0xc(%ebp),%esi
     e4c:	0f b6 1e             	movzbl (%esi),%ebx
     e4f:	84 db                	test   %bl,%bl
     e51:	0f 84 b3 00 00 00    	je     f0a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
     e57:	8d 45 10             	lea    0x10(%ebp),%eax
     e5a:	83 c6 01             	add    $0x1,%esi
  state = 0;
     e5d:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
     e5f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
     e62:	eb 2f                	jmp    e93 <printf+0x53>
     e64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
     e68:	83 f8 25             	cmp    $0x25,%eax
     e6b:	0f 84 a7 00 00 00    	je     f18 <printf+0xd8>
  write(fd, &c, 1);
     e71:	8d 45 e2             	lea    -0x1e(%ebp),%eax
     e74:	83 ec 04             	sub    $0x4,%esp
     e77:	88 5d e2             	mov    %bl,-0x1e(%ebp)
     e7a:	6a 01                	push   $0x1
     e7c:	50                   	push   %eax
     e7d:	ff 75 08             	pushl  0x8(%ebp)
     e80:	e8 8d fe ff ff       	call   d12 <write>
     e85:	83 c4 10             	add    $0x10,%esp
     e88:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
     e8b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
     e8f:	84 db                	test   %bl,%bl
     e91:	74 77                	je     f0a <printf+0xca>
    if(state == 0){
     e93:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
     e95:	0f be cb             	movsbl %bl,%ecx
     e98:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
     e9b:	74 cb                	je     e68 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
     e9d:	83 ff 25             	cmp    $0x25,%edi
     ea0:	75 e6                	jne    e88 <printf+0x48>
      if(c == 'd'){
     ea2:	83 f8 64             	cmp    $0x64,%eax
     ea5:	0f 84 05 01 00 00    	je     fb0 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
     eab:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
     eb1:	83 f9 70             	cmp    $0x70,%ecx
     eb4:	74 72                	je     f28 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
     eb6:	83 f8 73             	cmp    $0x73,%eax
     eb9:	0f 84 99 00 00 00    	je     f58 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
     ebf:	83 f8 63             	cmp    $0x63,%eax
     ec2:	0f 84 08 01 00 00    	je     fd0 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
     ec8:	83 f8 25             	cmp    $0x25,%eax
     ecb:	0f 84 ef 00 00 00    	je     fc0 <printf+0x180>
  write(fd, &c, 1);
     ed1:	8d 45 e7             	lea    -0x19(%ebp),%eax
     ed4:	83 ec 04             	sub    $0x4,%esp
     ed7:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
     edb:	6a 01                	push   $0x1
     edd:	50                   	push   %eax
     ede:	ff 75 08             	pushl  0x8(%ebp)
     ee1:	e8 2c fe ff ff       	call   d12 <write>
     ee6:	83 c4 0c             	add    $0xc,%esp
     ee9:	8d 45 e6             	lea    -0x1a(%ebp),%eax
     eec:	88 5d e6             	mov    %bl,-0x1a(%ebp)
     eef:	6a 01                	push   $0x1
     ef1:	50                   	push   %eax
     ef2:	ff 75 08             	pushl  0x8(%ebp)
     ef5:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
     ef8:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
     efa:	e8 13 fe ff ff       	call   d12 <write>
  for(i = 0; fmt[i]; i++){
     eff:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
     f03:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
     f06:	84 db                	test   %bl,%bl
     f08:	75 89                	jne    e93 <printf+0x53>
    }
  }
}
     f0a:	8d 65 f4             	lea    -0xc(%ebp),%esp
     f0d:	5b                   	pop    %ebx
     f0e:	5e                   	pop    %esi
     f0f:	5f                   	pop    %edi
     f10:	5d                   	pop    %ebp
     f11:	c3                   	ret    
     f12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
     f18:	bf 25 00 00 00       	mov    $0x25,%edi
     f1d:	e9 66 ff ff ff       	jmp    e88 <printf+0x48>
     f22:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
     f28:	83 ec 0c             	sub    $0xc,%esp
     f2b:	b9 10 00 00 00       	mov    $0x10,%ecx
     f30:	6a 00                	push   $0x0
     f32:	8b 7d d4             	mov    -0x2c(%ebp),%edi
     f35:	8b 45 08             	mov    0x8(%ebp),%eax
     f38:	8b 17                	mov    (%edi),%edx
     f3a:	e8 61 fe ff ff       	call   da0 <printint>
        ap++;
     f3f:	89 f8                	mov    %edi,%eax
     f41:	83 c4 10             	add    $0x10,%esp
      state = 0;
     f44:	31 ff                	xor    %edi,%edi
        ap++;
     f46:	83 c0 04             	add    $0x4,%eax
     f49:	89 45 d4             	mov    %eax,-0x2c(%ebp)
     f4c:	e9 37 ff ff ff       	jmp    e88 <printf+0x48>
     f51:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
     f58:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     f5b:	8b 08                	mov    (%eax),%ecx
        ap++;
     f5d:	83 c0 04             	add    $0x4,%eax
     f60:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
     f63:	85 c9                	test   %ecx,%ecx
     f65:	0f 84 8e 00 00 00    	je     ff9 <printf+0x1b9>
        while(*s != 0){
     f6b:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
     f6e:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
     f70:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
     f72:	84 c0                	test   %al,%al
     f74:	0f 84 0e ff ff ff    	je     e88 <printf+0x48>
     f7a:	89 75 d0             	mov    %esi,-0x30(%ebp)
     f7d:	89 de                	mov    %ebx,%esi
     f7f:	8b 5d 08             	mov    0x8(%ebp),%ebx
     f82:	8d 7d e3             	lea    -0x1d(%ebp),%edi
     f85:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
     f88:	83 ec 04             	sub    $0x4,%esp
          s++;
     f8b:	83 c6 01             	add    $0x1,%esi
     f8e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
     f91:	6a 01                	push   $0x1
     f93:	57                   	push   %edi
     f94:	53                   	push   %ebx
     f95:	e8 78 fd ff ff       	call   d12 <write>
        while(*s != 0){
     f9a:	0f b6 06             	movzbl (%esi),%eax
     f9d:	83 c4 10             	add    $0x10,%esp
     fa0:	84 c0                	test   %al,%al
     fa2:	75 e4                	jne    f88 <printf+0x148>
     fa4:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
     fa7:	31 ff                	xor    %edi,%edi
     fa9:	e9 da fe ff ff       	jmp    e88 <printf+0x48>
     fae:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
     fb0:	83 ec 0c             	sub    $0xc,%esp
     fb3:	b9 0a 00 00 00       	mov    $0xa,%ecx
     fb8:	6a 01                	push   $0x1
     fba:	e9 73 ff ff ff       	jmp    f32 <printf+0xf2>
     fbf:	90                   	nop
  write(fd, &c, 1);
     fc0:	83 ec 04             	sub    $0x4,%esp
     fc3:	88 5d e5             	mov    %bl,-0x1b(%ebp)
     fc6:	8d 45 e5             	lea    -0x1b(%ebp),%eax
     fc9:	6a 01                	push   $0x1
     fcb:	e9 21 ff ff ff       	jmp    ef1 <printf+0xb1>
        putc(fd, *ap);
     fd0:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
     fd3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
     fd6:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
     fd8:	6a 01                	push   $0x1
        ap++;
     fda:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
     fdd:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
     fe0:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     fe3:	50                   	push   %eax
     fe4:	ff 75 08             	pushl  0x8(%ebp)
     fe7:	e8 26 fd ff ff       	call   d12 <write>
        ap++;
     fec:	89 7d d4             	mov    %edi,-0x2c(%ebp)
     fef:	83 c4 10             	add    $0x10,%esp
      state = 0;
     ff2:	31 ff                	xor    %edi,%edi
     ff4:	e9 8f fe ff ff       	jmp    e88 <printf+0x48>
          s = "(null)";
     ff9:	bb 80 12 00 00       	mov    $0x1280,%ebx
        while(*s != 0){
     ffe:	b8 28 00 00 00       	mov    $0x28,%eax
    1003:	e9 72 ff ff ff       	jmp    f7a <printf+0x13a>
    1008:	66 90                	xchg   %ax,%ax
    100a:	66 90                	xchg   %ax,%ax
    100c:	66 90                	xchg   %ax,%ax
    100e:	66 90                	xchg   %ax,%ax

00001010 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1010:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1011:	a1 c4 18 00 00       	mov    0x18c4,%eax
{
    1016:	89 e5                	mov    %esp,%ebp
    1018:	57                   	push   %edi
    1019:	56                   	push   %esi
    101a:	53                   	push   %ebx
    101b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    101e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
    1021:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1028:	39 c8                	cmp    %ecx,%eax
    102a:	8b 10                	mov    (%eax),%edx
    102c:	73 32                	jae    1060 <free+0x50>
    102e:	39 d1                	cmp    %edx,%ecx
    1030:	72 04                	jb     1036 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1032:	39 d0                	cmp    %edx,%eax
    1034:	72 32                	jb     1068 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1036:	8b 73 fc             	mov    -0x4(%ebx),%esi
    1039:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    103c:	39 fa                	cmp    %edi,%edx
    103e:	74 30                	je     1070 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    1040:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    1043:	8b 50 04             	mov    0x4(%eax),%edx
    1046:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1049:	39 f1                	cmp    %esi,%ecx
    104b:	74 3a                	je     1087 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    104d:	89 08                	mov    %ecx,(%eax)
  freep = p;
    104f:	a3 c4 18 00 00       	mov    %eax,0x18c4
}
    1054:	5b                   	pop    %ebx
    1055:	5e                   	pop    %esi
    1056:	5f                   	pop    %edi
    1057:	5d                   	pop    %ebp
    1058:	c3                   	ret    
    1059:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1060:	39 d0                	cmp    %edx,%eax
    1062:	72 04                	jb     1068 <free+0x58>
    1064:	39 d1                	cmp    %edx,%ecx
    1066:	72 ce                	jb     1036 <free+0x26>
{
    1068:	89 d0                	mov    %edx,%eax
    106a:	eb bc                	jmp    1028 <free+0x18>
    106c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    1070:	03 72 04             	add    0x4(%edx),%esi
    1073:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1076:	8b 10                	mov    (%eax),%edx
    1078:	8b 12                	mov    (%edx),%edx
    107a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    107d:	8b 50 04             	mov    0x4(%eax),%edx
    1080:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1083:	39 f1                	cmp    %esi,%ecx
    1085:	75 c6                	jne    104d <free+0x3d>
    p->s.size += bp->s.size;
    1087:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    108a:	a3 c4 18 00 00       	mov    %eax,0x18c4
    p->s.size += bp->s.size;
    108f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1092:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1095:	89 10                	mov    %edx,(%eax)
}
    1097:	5b                   	pop    %ebx
    1098:	5e                   	pop    %esi
    1099:	5f                   	pop    %edi
    109a:	5d                   	pop    %ebp
    109b:	c3                   	ret    
    109c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000010a0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    10a0:	55                   	push   %ebp
    10a1:	89 e5                	mov    %esp,%ebp
    10a3:	57                   	push   %edi
    10a4:	56                   	push   %esi
    10a5:	53                   	push   %ebx
    10a6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    10a9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    10ac:	8b 15 c4 18 00 00    	mov    0x18c4,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    10b2:	8d 78 07             	lea    0x7(%eax),%edi
    10b5:	c1 ef 03             	shr    $0x3,%edi
    10b8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    10bb:	85 d2                	test   %edx,%edx
    10bd:	0f 84 9d 00 00 00    	je     1160 <malloc+0xc0>
    10c3:	8b 02                	mov    (%edx),%eax
    10c5:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    10c8:	39 cf                	cmp    %ecx,%edi
    10ca:	76 6c                	jbe    1138 <malloc+0x98>
    10cc:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    10d2:	bb 00 10 00 00       	mov    $0x1000,%ebx
    10d7:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    10da:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    10e1:	eb 0e                	jmp    10f1 <malloc+0x51>
    10e3:	90                   	nop
    10e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    10e8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    10ea:	8b 48 04             	mov    0x4(%eax),%ecx
    10ed:	39 f9                	cmp    %edi,%ecx
    10ef:	73 47                	jae    1138 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    10f1:	39 05 c4 18 00 00    	cmp    %eax,0x18c4
    10f7:	89 c2                	mov    %eax,%edx
    10f9:	75 ed                	jne    10e8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    10fb:	83 ec 0c             	sub    $0xc,%esp
    10fe:	56                   	push   %esi
    10ff:	e8 76 fc ff ff       	call   d7a <sbrk>
  if(p == (char*)-1)
    1104:	83 c4 10             	add    $0x10,%esp
    1107:	83 f8 ff             	cmp    $0xffffffff,%eax
    110a:	74 1c                	je     1128 <malloc+0x88>
  hp->s.size = nu;
    110c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    110f:	83 ec 0c             	sub    $0xc,%esp
    1112:	83 c0 08             	add    $0x8,%eax
    1115:	50                   	push   %eax
    1116:	e8 f5 fe ff ff       	call   1010 <free>
  return freep;
    111b:	8b 15 c4 18 00 00    	mov    0x18c4,%edx
      if((p = morecore(nunits)) == 0)
    1121:	83 c4 10             	add    $0x10,%esp
    1124:	85 d2                	test   %edx,%edx
    1126:	75 c0                	jne    10e8 <malloc+0x48>
        return 0;
  }
}
    1128:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    112b:	31 c0                	xor    %eax,%eax
}
    112d:	5b                   	pop    %ebx
    112e:	5e                   	pop    %esi
    112f:	5f                   	pop    %edi
    1130:	5d                   	pop    %ebp
    1131:	c3                   	ret    
    1132:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    1138:	39 cf                	cmp    %ecx,%edi
    113a:	74 54                	je     1190 <malloc+0xf0>
        p->s.size -= nunits;
    113c:	29 f9                	sub    %edi,%ecx
    113e:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    1141:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    1144:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    1147:	89 15 c4 18 00 00    	mov    %edx,0x18c4
}
    114d:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    1150:	83 c0 08             	add    $0x8,%eax
}
    1153:	5b                   	pop    %ebx
    1154:	5e                   	pop    %esi
    1155:	5f                   	pop    %edi
    1156:	5d                   	pop    %ebp
    1157:	c3                   	ret    
    1158:	90                   	nop
    1159:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    1160:	c7 05 c4 18 00 00 c8 	movl   $0x18c8,0x18c4
    1167:	18 00 00 
    116a:	c7 05 c8 18 00 00 c8 	movl   $0x18c8,0x18c8
    1171:	18 00 00 
    base.s.size = 0;
    1174:	b8 c8 18 00 00       	mov    $0x18c8,%eax
    1179:	c7 05 cc 18 00 00 00 	movl   $0x0,0x18cc
    1180:	00 00 00 
    1183:	e9 44 ff ff ff       	jmp    10cc <malloc+0x2c>
    1188:	90                   	nop
    1189:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
    1190:	8b 08                	mov    (%eax),%ecx
    1192:	89 0a                	mov    %ecx,(%edx)
    1194:	eb b1                	jmp    1147 <malloc+0xa7>
