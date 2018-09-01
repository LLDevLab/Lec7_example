#include "main.h"

extern void wait(uint8_t param);

int main(void)
{
	init();
	while(1)
	{
		PORTB ^= 0x20;	// Устанавливаем/сбрасываем бит 5 (биты считаются от 0) PORTB регистра (загорается/гаснет встроенный Arduino светодиод) 
		wait(50);
	}
	
	return 0;
}

static void init(void)
{
	DDRB = 0x20;			// Устанавливаем в бит 5 в DDRB (Data Direction Register B) 1 это говорит Arduino, что pin 13 на порту B будет выходным сигналом.
}
