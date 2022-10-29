Maze maze;

void setup() {
  size(600, 500);
  maze = new Maze(3, 4, 100, 100, 100);
  stroke(0);
  maze.display();
  stroke(255, 0, 0);
  maze.displayEdges();
}

void draw() {
}
