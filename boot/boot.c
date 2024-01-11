/*****************************
 * uOS Boot software         *
 *                           *
 * For simplicity, boot will *
 * use VGA to write to the   *
 * screen                    *
 *                           *
 * Memory map:               *
 *     0x0 + ------------ +  *
 *         |  bootloader  |  *
 *   0x100 + ------------ +  *
 *         |              |  *
 *         |              |  *
 *         |  Operat Sys  |  *
 *         |              |  *
 *         |              |  *
 * 0x30000 + ------------ +  *
 *                           *
 * OS created by: kwphil     *
 *****************************/

#include <stdint.h>

#define VGA_BUF 0xb8000

int _start() {
    *(char *)VGA_BUF = "strt bt";

    
}

int vga_print(char *input, ) {
    register uint8_t curr_offset;
    __asm__("addi %0,0,[1]"
            : curr_offset);
    
    for(uint8_t i = 0; i < )
}