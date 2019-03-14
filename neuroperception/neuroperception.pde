import controlP5.*;
import processing.serial.*;

ControlP5 cp5;

//garmet
GarmentManager manager;

//hyligher
Hylighter      hylighters;

void setup() {
  size(800, 800);
  smooth(16);

  //gui
  cp5 = new ControlP5(this);

  //manager
  String portNameG= "";
  manager = new GarmentManager(5);
  manager.setupSerial(this, portNameG);

  //create Hylighter
  String portNameH= "";
  hylighters = new Hylighter();
  manager.setupSerial(this, portNameH);
}

void draw() {
  background(200);


  manager.draw();
  hylighters.draw();
}
