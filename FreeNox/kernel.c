#include "include/kb.h"
kmain()
{
	  isr_install();
       clearScreen();
       print("Hi and Welcome to  operating system\nPlease enter a command");
       printch('\n');
       
       while (1)
       {
		print("NIDOS> ");
                string ch = readStr();
                print("\n");
                print(ch);
  
       }
        
}
