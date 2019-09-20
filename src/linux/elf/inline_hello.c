char msg[] = "hello world.\n";
int _start(){
long len = sizeof(msg);	
 __asm__ ("movq $1,%%rax\n\t"
	  "movq $1,%%rdi\n\t"
 	  "leaq %0,%%rsi\n\t"
 	  "movq %1,%%rdx\n\t"
	  "syscall"
	   : 
	   : "m"(msg),"g"(len)
	   : "%rdi","%rsi","%rdx","%rax"
		 );
 __asm__ ("movq $60,%rax\n\t"
	  "movq $0,%rdi\n\t"
	  "syscall");
return 0;
}
