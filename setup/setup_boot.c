register unsigned short VGA_OFFSET = 0;

void main() {
    print_mono_vga("Starting boot!");
    print_mono_vga("Step 1: Ensure proper USB->Flash memory connection");

    step1();
}

void print_mono_vga(char *data) {
    (char *)(0xb0000 + VGA_OFFSET) = data;
    VGA_OFFSET += 480;
}