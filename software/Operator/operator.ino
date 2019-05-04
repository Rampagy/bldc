void setup()
{
    Serial.begin(9600);
}

void loop()
{
    while (1)
    {
        Serial.write(100);
        delay(1000);
    }
}
