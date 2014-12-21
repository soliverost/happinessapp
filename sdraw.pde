void setup() {
  size(400,600);
}
void draw(){
   if (mousePressed == true){
     point(mouseX,mouseY);
   }
}

void keyPressed(){
  if (key == 'b'){
    background(random(255),random(255),random(255));
    draw_top_line();
  }
  if (key=='c'){
    stroke(random(255),random(255),random(255));
    draw_top_line();
  }
}

void draw_top_line(){
  strokeWeight(7);
  line(0,0,width,0);
  strokeWeight(3);
}
