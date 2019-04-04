#include "types.h"
#include "stat.h"
#include "user.h"
#include "fs.h"

#define N 10 // N é o numero de processos que serao criados

unsigned int lcg = 3; // Variavel de controle da randomização dos tickets

unsigned int lcg_rand(unsigned int state) // Função de randomização
{
    state = ((unsigned int)state * 48271u) % 0x7fffffff;
    return state;
}


void testfork(void){
  int n, pid;

  printf(1, "Executando testes\n");

  for(n = 0; n < N; n++){
    lcg = lcg_rand(lcg) % 101; // Sorteia um valor para definir a quantia de ticket do processo a ser criado
    pid = fork(lcg);
    if(pid < 0) break;
    if(pid == 0){
      for(;;);
    }
  }

  if(n == N){
    printf(1, "Fork foi chamado %d vezes!\n", N);
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
