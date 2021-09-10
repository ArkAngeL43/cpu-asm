section .data ;tell it to work
        string db "Current Branded CPU => < XXXXXXXXXXXX >",0xA
section .text
global _start
_start:
       xor eax,eax
       cpuid 
       mov edi,string
       mov [edi+25],ebx ;why am i doing this 
       mov [edi+29],edx
       mov [edi+33],ecx
       mov eax,4
       mov ebx,1
       mov ecx,string
       mov edx,41
       int 0x80 ; i hate myself for ever thinking i could be good at this lang XD
       mov eax,1
       xor ebx,ebx
       int 0x80 ; finally that took a while 
