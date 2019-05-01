#ifndef HALL_EFFECT_H
#define HALL_EFFECT_H

//function declarations
void Hall_Init(void);
void Hall_Decoder(void);

void EXTI4_IRQHandler(void);
void EXTI9_5_IRQHandler(void);
void EXTI0_IRQHandler(void);
void TIM1_BRK_TIM9_IRQHandler(void);

#endif