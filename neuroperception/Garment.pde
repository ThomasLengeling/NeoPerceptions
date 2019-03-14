class GarmentManager {
  Accordion accordion;
  ArrayList<Garment> garments;

  //Serial
  Serial port;
  String strPort;

  GarmentManager(int numG) {
    garments = new ArrayList<Garment>();

    for (int i = 0; i < numG; i++) {
      Garment gm = new Garment(8);
      //update Position
      garments.add(gm);
    }
    
  }

  //Serial
  void setupSerial(PApplet p, String str) {
    strPort = str;
    port = new Serial(p, strPort, 9600);
  }

  //void create GUI
  void createGUI() {
  }

  void draw() {
  }
}

/*
Garmet 
 */
class Garment {

  ArrayList<RGBLED> mLEDs;

  Garment(int numLEDs) {
    mLEDs = new ArrayList<RGBLED>();

    for (int i = 0; i < numLEDs; i++) {
      RGBLED led = new RGBLED();
      //set postion
      //set color

      mLEDs.add(led);
    }
  }



  //draw garment
  void draw() {
    for (RGBLED led : mLEDs) {
      led.draw();
    }
  }

  void sendValues() {
  }
}

//LED
class RGBLED {

  //property color
  color colorLED;

  //disply mode
  float posX;
  float posY;

  RGBLED() {
    posX = 100;
    posY = 100;
  }

  //draw color
  void draw() {
    noStroke();
    fill(0, 150, 190);
    ellipse(posX, posY, 50, 50);
  }
}
