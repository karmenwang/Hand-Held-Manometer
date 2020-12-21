#include <Wire.h>
#include <Arduino.h>
#include "AllSensors_DLHR.h"

//ADAFRUIT NOKIA 5110 Library
// #include <SPI.h>
// #include <Adafruit_GFX.h>
// #include <Adafruit_PCD8544.h>

//LCD Graph Library
#include "LCD5110_Graph.h"
extern unsigned char SmallFont[];
extern unsigned char TinyFont[];

//multiplier
#define cm_H2O_multiplier 0.0101972
#define in_H2O_multiplier 0.00401865
#define KPa_multiplier 0.001
#define PSI_multiplier 0.000145038

//defini
#define LOGO16_GLCD_HEIGHT 16
#define LOGO16_GLCD_WIDTH  16

LCD5110 lcd(9,8,4,3,2);         //sck, mosi, dc, rst, cs

enum Units {
  CM_H20 = 0,
  IN_H20,
  KPA,
  PSI,
  PA
};

AllSensors_DLHR_L30D_8 gagePressure(&Wire);

///Averaging stuff///
float initAverage = 0;
int counter = 0;
float prev = 0;
float total = 0;

///mode switching///
const int buttonPin = 1;
Units currentUnit = PA;

//GLOBAL//
float sensor_pressure;

void initLCD()
{
  lcd.InitLCD();
}

void setup() {
  Serial.begin(115200);

  Wire.begin();

  gagePressure.setPressureUnit(AllSensors_DLHR::PressureUnit::PASCAL);
  gagePressure.startMeasurement();

  ///mode switching setup///
  pinMode(buttonPin, INPUT);
  
  //initialize LCD
  initLCD();
}

//Converts the default unit (Pascals) into selected unit
float ConvertUnit(){
  float adjustedpressure = sensor_pressure-initAverage;
  float displayPressure = sensor_pressure;

  switch(currentUnit){
    case int(CM_H20):
      displayPressure = adjustedpressure * cm_H2O_multiplier;                   // 1 Pascal = 0.0101972 cmH2O
    break;

    case int(IN_H20):
      displayPressure = adjustedpressure * in_H2O_multiplier;                 // 1 Pascal = 0.00401865 inH2O
    break;

    case int(KPA):
      displayPressure = adjustedpressure * KPa_multiplier;                       // 1 Pascal = 0.001 KPa
    break;

    case int(PSI):
      displayPressure = adjustedpressure * PSI_multiplier;                 // 1 Pascal = 0.000145038 PSI
    break;

    case int(PA):
      displayPressure = adjustedpressure;                   //setting cmH2O as default unit
    break;
  }

  return (displayPressure);
}

void updatePressureSensor()
{
if(!gagePressure.readData(false))                                   //done reading
{
    sensor_pressure = gagePressure.pressure;
    gagePressure.startMeasurement();
    delay(200);
  }
  else
  {
    delay(3);
  }
}

void checkButton()
{
  static int previous_reading = LOW;
  int reading = digitalRead(buttonPin);

  if (reading == HIGH && previous_reading == LOW ) {
    if (currentUnit < 4){
      currentUnit = Units(int(currentUnit) + 1);
    }
    else{
      currentUnit = Units(0);
    }
  }
  previous_reading = reading;
}

void printData(float pressure)
{
  Serial.print("Pressure: ");
  Serial.print(pressure);

    ////Displaying selected unit////
  if (currentUnit == CM_H20){
    Serial.print(" cmH2O");
  }

  else if(currentUnit == IN_H20){
    Serial.print(" inH2O");
  }

  else if (currentUnit == KPA){
    Serial.print(" KPa");
  }

  else if (currentUnit == PSI){
    Serial.print(" PSI");
  }

  else if (currentUnit == PA){
    Serial.print (" Pa");
  }
    //////////////////////////////////

    Serial.print(" Temperature: ");
    Serial.print(gagePressure.temperature);
    Serial.println(" Celcius");
}

void getAverage(){
    if (counter < 50)
    {
      total = prev + sensor_pressure;
      prev = total;
      initAverage = total/counter;
      counter++;
    }

    else
    {
    Serial.print("Initial Average: ");
    Serial.println(initAverage);
    }
}

void DisplayLCD(float data, String unit, float battery_life){
  lcd.disableSleep();
  lcd.clrScr();
  lcd.setFont(TinyFont);
  lcd.print("PRESSURE",LEFT+10,0);
  lcd.print("UNIT",LEFT+62,0);
  lcd.print("BATTERY",CENTER,30);

  lcd.setFont(SmallFont);
  char buffer_data[10];
  char buffer_battery[10];
  snprintf(buffer_data,10,"%8.3f",data);
  snprintf(buffer_battery,10,"%5.3f",battery_life);

  lcd.print(buffer_data,LEFT,10);
  lcd.print(unit,LEFT+50,10);
  lcd.print(buffer_battery,12,40);
  lcd.print("V", 48,40);
  lcd.update();
}

String DisplayUnit()
{
  String unit_to_display;
  switch (currentUnit){
    
    case int(CM_H20):
      unit_to_display = "cmH2O";                   
    break;

    case int(IN_H20):
      unit_to_display = "inH2O";                
    break;

    case int(KPA):
      unit_to_display = "KPA";                      
    break;

    case int(PSI):
      unit_to_display = "PSI";                        
    break;

    case int(PA):
     unit_to_display = "PA";                
    break;
  }
   return unit_to_display;
}

float displayBattery(){
  int batterySensorValue = analogRead(ADC_BATTERY);
  // Convert the analog reading (which goes from 0 - 1023) to a voltage
  float batteryVoltage = batterySensorValue * (4.3/1023.0);
  Serial.print(batteryVoltage);
  Serial.println("V");
  return batteryVoltage;
}

void loop() {
  updatePressureSensor();
  checkButton();
  float converted_pressure = ConvertUnit();
  String unit_string = DisplayUnit();
  printData(converted_pressure);
  getAverage();
  float BatteryLife = displayBattery();

  if (counter < 50){
    lcd.setFont(SmallFont);
    lcd.print("Calibrating",CENTER,0);
    lcd.print("Please wait", CENTER, 40);
    lcd.update();
  }
  else{
    DisplayLCD(converted_pressure, unit_string, BatteryLife);
  }

}
