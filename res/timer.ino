// include the library code:
#include <LiquidCrystal.h>
#include <avr/interrupt.h>
// initialize the library with the numbers of the interface pins
LiquidCrystal lcd(48, 46, 44, 42, 40, 38, 36, 34, 32, 30, 28);
int __counter = 0;
int hour = 12;
int minute = 0;
int second = 0;


boolean set = false;
boolean b = false;

//arduino runs the setup function first, then the loop function below
void setup() {
  pinMode(24, OUTPUT); //K
  pinMode(26, OUTPUT); //A
  pinMode(54, OUTPUT); //VSS
  pinMode(52, OUTPUT); //VDD
  pinMode(50, OUTPUT); //Contrasty pin

  // digitalWrite(50, LOW);
  digitalWrite(24, LOW); //Backlight
  digitalWrite(26, HIGH); //Backlight
  digitalWrite(54, LOW); //GND
  digitalWrite(52, HIGH); //VDD
  // set up the LCD's number of columns and rows:
  lcd.begin(16, 2);
  // initialize the serial communications:
  Serial.begin(9600);
  // Timer0 is used for millis() - we'll just interrupt
  // in the middle and call the compA
  OCR0A = 0x01;
  TIMSK0 |= _BV(OCIE0A);
}

SIGNAL(TIMER0_COMPA_vect) 
{
   __counter++;
   if (__counter > 14){
      digitalWrite(50,HIGH);
      __counter = 0;
   }
   else if (__counter > 3){
      digitalWrite(50, LOW);
   }
}

//Here is where your code goes. Arduino runs this function in an infinite loop after running the setup function
void loop() {
  String inputString = "";
  inputString = Serial.readString();
  inputString.trim();
  if (inputString != ""){
    if (inputString.startsWith("set timer")){
      Serial.println("> Timer Set");
      hour = inputString.substring(10, 12).toInt();
      minute = inputString.substring(12, 14).toInt();
      second = inputString.substring(14, 16).toInt();
      
    } else if (inputString == "start timer"){
      Serial.println("> Timer Started");
      set = true;
    } else if (inputString == "stop timer"){
      Serial.println("> Timer Stopped");
      set = false;
    }
  }

  if (set){
      lcd.home();
      lcd.clear();
      lcd.setCursor(0, 0);
      lcd.print("Current Time:");
      lcd.setCursor(0, 1);
      lcd.print(currentTime());
      second ++;
      if (second >= 60){
        second = 0;
        minute ++;
      }
      if (minute >= 60){
        minute = 0;
        hour ++;
      }
  } else {
    if (b){
      lcd.home();
      lcd.clear();
      lcd.setCursor(0, 0);
      lcd.print("Current Time:");
      lcd.setCursor(0, 1);
      lcd.print(currentTime());
    } else {
      lcd.home();
      lcd.clear();
      lcd.setCursor(0, 0);
      lcd.print("Current Time:");
    }
    b = !b;
  }


  
}

String prettyInt(int timez){
  if (timez <= 9){
    return "0" + String(timez);
  }
  else{
    return String(timez);
  }
}

String currentTime(){
  return prettyInt(hour) + ":" + prettyInt(minute) + ":" + prettyInt(second);
}


