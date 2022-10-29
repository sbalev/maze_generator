class Maze {
  int rows, cols;
  float x0, y0, cellSize;
  boolean[][] hWalls, vWalls;

  Maze(int rows, int cols, float x0, float y0, float cellSize) {
    this.rows = rows;
    this.cols = cols;
    this.x0 = x0;
    this.y0 = y0;
    this.cellSize = cellSize;

    hWalls = new boolean[rows + 1][cols];
    for (int i = 0; i <= rows; i++) {
      for (int j = 0; j < cols; j++) {
        hWalls[i][j] = true;
      }
    }

    vWalls = new boolean[rows][cols + 1];
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j <= cols; j++) {
        vWalls[i][j] = true;
      }
    }
  }

  void display() {
    for (int i = 0; i <= rows; i++) {
      for (int j = 0; j < cols; j++) {
        if (hWalls[i][j]) {
          line(xCell(j), yCell(i), xCell(j + 1), yCell(i));
        }
      }
    }

    for (int i = 0; i < rows; i++) {
      for (int j = 0; j <= cols; j++) {
        if (vWalls[i][j]) {
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
