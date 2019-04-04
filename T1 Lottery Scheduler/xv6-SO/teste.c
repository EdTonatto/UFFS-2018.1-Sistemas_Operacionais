/*
#include "types.h"
#include "param.h"
#include "stat.h"
#include "user.h"


#define MAX 1123
#define nprocs 10

int main(void){
   int pid;
   for(int i = 0; i < 2; i++){
     if(i)
       pid = fork(1000);
     else
       pid = fork(1);
     if(pid == 0){
       for(;;);
     }
   }
 return 0;
}
*/
//------------------------------------------------------------------------------------------------------------
#include "types.h"
#include "stat.h"
#include "user.h"
#include "fs.h"

#define N 60

unsigned int lcg = 3;

unsigned int lcg_rand(unsigned int state)
{
    state = ((unsigned int)state * 48271u) % 0x7fffffff;
    return state;
}


void testfork(void){
  int n, pid;

  printf(1, "test fork\n");

  for(n = 0; n < N; n++){//escolhido = lcg = lcg_rand(lcg) % totalTickets + 1;
    lcg = lcg_rand(lcg) % 101;
    pid = fork(lcg);
    if(pid < 0) break;
    if(pid == 0){
      for(;;);
    }
  }

  if(n == N){
    printf(1, "fork claimed to work %d times!\n", N);
  }

  for(; n > 0; n--){
    wait();
  }

  exit();
}

int main(void){
  testfork();
  exit();
}
