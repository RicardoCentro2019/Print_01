size(600, 600);
background(255);

int numTilesX = 50;
int numTilesY = 100;

float widthTile = width / float(numTilesX);
float heightTile = height / float(numTilesY);

for (int i = 0; i < numTilesX; i++) {
  for (int j = 0; j < numTilesY; j++) {
    float x = i * widthTile;
    float y = j * widthTile;

    int coin = int(random(0, 2));
    if (coin == 0) {
      line(x, y, x + widthTile, y - widthTile);
    } else {
      line (x + widthTile, y, x, y + widthTile);
    }
  }
}
