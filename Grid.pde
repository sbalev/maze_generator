class Grid {
  int rows, cols;
  float x0, y0, cellSize;
  boolean[][] hLinks, vLinks;

  Grid(int rows, int cols, float x0, float y0, float cellSize) {
    this.rows = rows;
    this.cols = cols;
    this.x0 = x0;
    this.y0 = y0;
    this.cellSize = cellSize;
    hLinks = new boolean[rows][cols - 1];
    vLinks = new boolean[rows - 1][cols];

    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        if (j < cols - 1) hLinks[i][j] = true;
        if (i < rows - 1) vLinks[i][j] = true;
      }
    }
  }

  void display() {
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        if (j < cols - 1 && hLinks[i][j]) {
          line(xCell(j), yCell(i), xCell(j + 1), yCell(i));
        }
        if (i < rows - 1 && vLinks[i][j]) {
          line(xCell(j), yCell(i), xCell(j), yCell(i + 1));
        }
      }
    }
  }
  
  float xCell(int j) {
    return x0 + j * cellSize;
  }

  float yCell(int i) {
    return y0 + i * cellSize;
  }
}
