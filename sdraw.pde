//Simple drawing Processing script.
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
	size(1000,1000);
	background(255,255,255);
	smooth();
}

void draw(){
	fill(205);
	rect(0,900,1000,1000);
	strokeWeight(1);
	fill(red);
	rect(10, 910, 25, 25 );
	fill(blue);
	rect(35, 910, 25, 25 );
	fill(green);
	rect(10, 935, 25, 25);
	fill(yellow);
	rect(35, 935, 25, 25);
	fill(orange);
	rect(10, 960, 25, 25);
	fill(purple);
	rect(35, 960, 25, 25);
	fill(blueGreen);
	rect(60, 960, 25, 25);
	fill(yellowGreen);
	rect(85, 960, 25, 25);
	fill(pink);
	rect(60, 910, 25, 25);
	fill(yellowOrange);
	rect(85, 910, 25, 25);
	fill(white);
	rect(60, 935, 25, 25);
	fill(black);
	rect(85, 935, 25, 25);
	line(850, 930, 950, 930);
	strokeWeight(4);
	line(850, 950, 950, 950);
	strokeWeight(8);
	line(850, 980, 950, 980);
	strokeWeight(1);
	fill(205);
	rect(120, 910, 25, 25);
	fill(color(a,b,c));
	rect(120,940,25,25);
	if (mousePressed == true){
		point(mouseX,mouseY);
	}
	if(mousePressed) {
		if(mouseY>910 && mouseY<935){
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
	if(mouseY>935 && mouseY<960){
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
	if(mouseY>960 && mouseY<985){
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
	if(mouseY > 930 && mouseY<950){
	if (mouseX>850 && mouseX<950){
	mainStroke = 1;
	}
	}
	if(mouseY>950 && mouseY < 980){
	if (mouseX>850 && mouseX<950){
	mainStroke = 4;
	}
	}
if(mouseY>980 && mouseY<990){
if(mouseX>850 && mouseX<950){
mainStroke = 8;
}
}
strokeWeight(mainStroke);
}
if(mousePressed){
if(mouseY>910 && mouseY<935){
if(mouseX>120 && mouseX<145){
background(255);
a=255;
b=255;
c=255;
}
}
if(mousePressed){
if(mouseY>940 && mouseY<965){
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
rect(120,935,25,25);
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


