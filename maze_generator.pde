int rows = 3;
int cols = 4;
float x0 = 100;
float y0 = 100;
float cellSize = 100;

void setup() {
  size(600, 500);
  Grid maze = new Grid(rows + 1, cols + 1, x0, y0, cellSize);
  stroke(0);
  maze.display();
  
  stroke(255, 0, 0);
  Grid tree = new Grid(rows, cols, x0 + cellSize / 2, y0 + cellSize / 2, cellSize);
  tree.display();
}

void draw() {
}
