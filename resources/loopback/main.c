# include "uart_lpc_serial.h"

int main() {
    uart_init_ppc();
    while (1) {
        char my_char[1] = {'A'};
        mp_hal_stdout_tx_strn(my_char, 1);
    }
    return 0;
}