class Maze {
  int rows, cols;
  float x0, y0, cellSize;
  boolean[][] hWalls, vWalls;
  Edge[] edges;

  Maze(int rows, int cols, float x0, float y0, float cellSize) {
    this.rows = rows;
    this.cols = cols;
    this.x0 = x0;
    this.y0 = y0;
    this.cellSize = cellSize;
    hWalls = new boolean[rows + 1][cols];
    vWalls = new boolean[rows][cols + 1];

    edges = new Edge[2 * rows * cols - rows - cols];
    int k = 0;
    for (int i = 0; i <= rows; i++) {
      for (int j = 0; j <= cols; j++) {
        println(i, j);
        if (j < cols) hWalls[i][j] = true;
        if (i < rows) vWalls[i][j] = true;
        if (i < rows && j < cols - 1) edges[k++] = new Edge(i, j, i, j + 1);
        if (i < rows - 1 && j < cols) edges[k++] = new Edge(i, j, i + 1, j);
      }
    }
    println(k);
  }

  void display() {
    for (int i = 0; i <= rows; i++) {
      for (int j = 0; j <= cols; j++) {
        if (j < cols && hWalls[i][j]) {
          line(xCell(j), yCell(i), xCell(j + 1), yCell(i));
        }
        if (i < rows && vWalls[i][j]) {
          line(xCell(j), yCell(i), xCell(j), yCell(i + 1));
        }
      }
    }
  }
  
  void displayEdges() {
    for (Edge e : edges) {
      line(xCell(e.j0) + cellSize / 2, yCell(e.i0) + cellSize / 2, xCell(e.j1) + cellSize / 2, yCell(e.i1) + cellSize / 2);
    }
  }

  float xCell(int j) {
    return x0 + j * cellSize;
  }

  float yCell(int i) {
    return y0 + i * cellSize;
  }
}
