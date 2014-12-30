float oldX;
float oldY;
color red= color(255, 0, 0);
color green= color(0, 255, 0);
color blue= color(0, 0, 255);
color yellow= color(247, 240, 0);
color orange= color(247, 112, 0);
color purple= color(110, 0, 220);
color blueGreen= color(0, 247, 146);
color yellowGreen= color(157, 250, 0);
color pink= color(255, 28, 97);
color yellowOrange= color(255, 159, 3);
color white= color(255);
color black= color(0);
float mainStroke= 1;
float a = 205;
float b = 205;
float c = 205;


void setup() {
  size(700,700);
  background(255,255,255);  
  
    smooth();
  
}
void draw(){
   fill(205);
   rect(0,0,1000,100);
   
   strokeWeight(1);
   fill(red);
   rect(10, 10, 25, 25 );
   fill(blue);
   rect(35, 10, 25, 25 );
   fill(green);
   rect(10, 35, 25, 25);
   fill(yellow);
   rect(35, 35, 25, 25);
   fill(orange);
   rect(10, 60, 25, 25);
   fill(purple);
   rect(35, 60, 25, 25);
   fill(blueGreen);
   rect(60, 60, 25, 25);
   fill(yellowGreen);
   rect(85, 60, 25, 25);
   fill(pink);
   rect(60, 10, 25, 25);
   fill(yellowOrange);
   rect(85, 10, 25, 25);
   fill(white);
   rect(60, 35, 25, 25);
   fill(black);
   rect(85, 35, 25, 25);
   
   line(550, 30, 650, 30);
   strokeWeight(4);
   line(550, 50, 650, 50);
   strokeWeight(8);
   line(550, 80, 650, 80);
   strokeWeight(1);
   fill(205);
   rect(120, 10, 25, 25);
   
   fill(color(a,b,c));
   rect(120,40,25,25);

   if (mousePressed == true){
     point(mouseX,mouseY);
   }
  
   if(mousePressed) {
    
    if(mouseY>10 && mouseY<35){
      
      if(mouseX>10 && mouseX<35){
        stroke(red); 
      }
      if(mouseX>35 && mouseX<60){
        stroke(blue);
      }
      if(mouseX>60 && mouseX<85){
        stroke(pink);
      }
      if(mouseX>85 && mouseX<110){
        stroke(yellowOrange);
      }
    }
    if(mouseY>35 && mouseY<60){
      
      if(mouseX>10 && mouseX<35){
        stroke(green); 
      }
      if(mouseX>35 && mouseX<60){
        stroke(yellow);
      }
      if(mouseX>60 && mouseX<85){
        stroke(white);
      }
      if(mouseX>85 && mouseX<110){
        stroke(black);
      }
    }
    if(mouseY>60 && mouseY<85){
      
      if(mouseX>10 && mouseX<35){
        stroke(orange); 
      }
      if(mouseX>35 && mouseX<60){
        stroke(purple);
      }
      if(mouseX>60 && mouseX<85){
        stroke(blueGreen);
      }
      if(mouseX>85 && mouseX<110){
        stroke(yellowGreen);
      }
    }
    
    if(mousePressed){
      if(mouseY>30 && mouseY<50){
        if (mouseX>550 && mouseX<650){
          mainStroke = 1;
        }
      }
      if(mouseY>50 && mouseY < 80){
        if (mouseX>550 && mouseX<650){
          mainStroke = 4;
        }
     }
     if(mouseY>80 && mouseY<90){
        if(mouseX>550 && mouseX<650){
          mainStroke = 8;
        }
     }
     strokeWeight(mainStroke);
    } 
    
    if(mousePressed){
      if(mouseY>10 && mouseY<35){
        if(mouseX>120 && mouseX<145){
          background(255);
          a=255;
          b=255;
          c=255;
      }
    }
    
    if(mousePressed){
      if(mouseY>40 && mouseY<65){
        if(mouseX>120 && mouseX<145){
          background(a,b,c);
        }
      }
    }
    
  }   
  if(mousePressed){
     line(mouseX,mouseY,oldX,oldY);
  } 
  }  
  oldX = mouseX;
  oldY = mouseY;
  
}

void keyPressed(){
  if (key == 'b'){
    background(a = random(255), b = random(255), c = random(255));
    draw_top_line();
    
    rect(120,35,25,25);
  }
  if (key=='c'){
    stroke(random(255),random(255),random(255));
    draw_top_line();
  }
}

void draw_top_line(){
  strokeWeight(7);
  line(0,0,width,0);
  strokeWeight(5);
}
