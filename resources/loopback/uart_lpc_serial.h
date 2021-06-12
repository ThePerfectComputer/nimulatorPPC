#include <stdint.h>
typedef unsigned int mp_uint_t;

int mp_hal_stdin_rx_chr(void);
//void uart_init_ppc(void);
void mp_hal_stdout_tx_strn(const char *str, mp_uint_t len);
