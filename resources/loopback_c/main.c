# include "uart_lpc_serial.h"

int main(int argc, char **argv) {
    uart_init_ppc();
    const char my_char[1] = {'A'};
    mp_hal_stdout_tx_strn(my_char, 1);

    while (1) {
    }

    return 0;
}
