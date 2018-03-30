#include <FastLED.h>

#define COLOR_ORDER  GRB
#define CHIPSET      WS2811
#define BRIGHTNESS   64

const uint8_t STRIP_PIN_0 = 2;
const uint8_t nPanels = 1;
const uint8_t panelWidth = 32;
const uint8_t panelHeight = 8;
const uint8_t kMatrixWidth = nPanels * panelWidth;
const uint8_t kMatrixHeight = panelHeight;
const bool  kMatrixSerpentineLayout = true;
const int nPixels = kMatrixWidth * kMatrixHeight;
const uint16_t nLEDs = nPixels;
const uint16_t nLEDsPerStrip = nLEDs / nPanels;
CRGB leds[nLEDs + 1];
CRGB pink = CRGB(255, 0, 32);
CRGB orange = CRGB(128, 32, 0);

// Serpentine map
int16_t XY(uint8_t x, uint8_t y) {
  int i = x % 2;
  return (x + i) * kMatrixHeight - i + (i ? -y : y);
}

void setup() {
  FastLED.addLeds<CHIPSET, STRIP_PIN_0, COLOR_ORDER>(leds, 0, nLEDsPerStrip).setCorrection(TypicalSMD5050);
  FastLED.setBrightness(BRIGHTNESS);
}

void loop() {
  FastLED.clear();

  for (int i = 0; i < nLEDs; i++) {
    if (random(100) < 30) {
      leds[i] = random(100) < 50 ? pink : orange;
    }
  }

  FastLED.show();
  delay(500);
}

