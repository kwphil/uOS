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
    *(char *)VGA_BUF = "s\0t\0r\0t\0 \0b\0t\0";

    
}