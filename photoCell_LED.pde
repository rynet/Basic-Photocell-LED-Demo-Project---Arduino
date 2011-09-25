int ledPin =  13;    // LED connected to digital pin 13
int photoPin = 0;

int photoReading;

// The setup() method runs once, when the sketch starts

void setup()   {                
  // initialize the digital pin as an output:
  pinMode(ledPin, OUTPUT);  
  Serial.begin(9600);  
}

// the loop() method runs over and over again,
// as long as the Arduino has power

void loop()                     
{
  
  photoReading=analogRead(photoPin);
  if (photoReading <400){
    digitalWrite(ledPin, HIGH);
  }else{
     digitalWrite(ledPin, LOW); 
  }
  Serial.println(photoReading);
  delay(1000);  
}
