class Hylighter {
  Accordion accordion;
  ArrayList<HyperLED> hyperLEDs;
  //multi light

  Serial port;
  String strPort;

  Hylighter() {
    hyperLEDs = new ArrayList<HyperLED>();
  }

  //Serial
  void setupSerial(PApplet p, String str) {
    strPort = str;
    port = new Serial(p, strPort, 9600);
  }

  void draw() {
  }
}



class HyperLED {

  //wavelength -> float
  ArrayList<Float> waves;

  //number of LEDs
  int numWave;

  HyperLED() {
    waves = new ArrayList<Float>();

    for (int i = 0; i < numWave; i++) {
      float wav = 0.0;
      waves.add(wav);
    }
  }

  void draw() {
  }
}
