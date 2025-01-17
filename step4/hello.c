char *str = "hello, world\n";

void
myprint()
{
  asm("mov $1, %%eax \n"
      "mov $1, %%edi \n"
      "movq %0, %%rsi \n"
      "mov $13, %%edx \n"
      "syscall \n"
      : // no output
      : "r"(str)
      : "eax", "edi", "rsi", "edx");
}

void
myexit()
{
  asm("mov $60, %eax \n"
      "xor %edi, %edi \n"
      "syscall \n");
}

int
nomain()
{
  myprint();
  myexit();
}
