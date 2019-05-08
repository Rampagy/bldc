void setup()
{
    //Setup Timers
    SetupTimer0();

    //Start the serial port
    Serial.begin(9600);

    // sets the built in LED as output
    pinMode(LED_BUILTIN, OUTPUT);  
}


//**************************************
//  10 ms Task Rate
//  Creates a periodic Task
//  Vector Address 15
//**************************************
ISR(TIMER0_COMPA_vect)
{
    Serial.write(100);
    digitalWrite(LED_BUILTIN, digitalRead(LED_BUILTIN)^1);
}

//*********************************************
//  Configure Timer 0
//*********************************************
void SetupTimer0()
{
  TCCR0A = 0; // set entire TCCR0A register to 0
  TCCR0B = 0; // same for TCCR0B
  TCNT0  = 0; //initialize counter value to 0
  // set compare match register for 2khz increments
  OCR0A = 155;// = (16*10^6) / (100*1024) - 1 = 155(must be <256)
  // turn on CTC mode
  TCCR0A |= (1 << WGM01);
  // 1024 prescaler - page 142 of datasheet
  TCCR0B |= (1 << CS00);
  TCCR0B |= (1 << CS02);
  // enable timer compare interrupt
  TIMSK0 |= (1 << OCIE0A);
}

void loop()
{
    while (1)
    {
        //nop
    }
}
