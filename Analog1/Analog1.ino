void setup() {
  Serial.begin(1200);
  pinMode(LED_BUILTIN,OUTPUT);
  //pinMode(A0,INPUT); //connected to D7
  
}
int sig;
int now;
void loop() {
  digitalWrite(LED_BUILTIN, HIGH); 
  int const threshold=945;
  int period=0,last=0;
  
  sig=analogRead(A0);
  now=millis();
  Serial.print(now);
  Serial.print(",");
  Serial.println(sig);

    if(sig>threshold) 
   {
        while(sig > threshold){
          sig=analogRead(A0);
          now=millis();
          Serial.print(now);
          Serial.print(",");
          Serial.println(sig);
        }
        now = millis();
        period = 0.7*period + 0.3*(now-last);
        last = now;
        int heartrate = 60000/period;
      
        if (heartrate >= 60 && heartrate <=100) 
           digitalWrite(LED_BUILTIN, LOW);
        else 
           digitalWrite(LED_BUILTIN, HIGH); 
      }
      //delay(150);
  }
  
 
