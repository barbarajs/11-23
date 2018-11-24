import processing.svg.*;

PFont font;
PFont fuente;

void setup () {

  colorMode(HSB,360,100,100);
  size (490,634);
  background(38,5,92);
  noStroke();
  beginRecord(SVG,"portada.svg");
  font = (loadFont("AkzidenzGroteskBE-Md-48.vlw"));
  fuente = (loadFont("Helvetica-48.vlw"));
    stroke(100);
  line(490, 65, 0, 65);
  line(490, 210, 0,210);
  fill(181,65,78); 
  textFont(fuente, 48);
  textSize(15);
  text("A Pelican Original 64",330,50);
  fill(17,74,91);
  textFont(font, 48);  
  textSize(25);
  textLeading(25);
  text("The Queen's Courts",250,100);
  fill(181,65,78);
  textFont(fuente, 48);
  textSize(20);
  fill(241,90,41);
  text("Peter Archer",370, 200);
  noStroke();
  fill(17,74,91);
 rect(0, 245, 490, 55);
  fill(241,90,41);
   rect(0, 300, 490, 140); 
  fill(181,65,78);     
  rect(0, 440, 490, 200);
}

void draw () {
  colorMode(HSB,360,100,100);
  stroke(355);
  fill(241,90,41);
  strokeWeight(5);
  ellipse(mouseX,272,35,35);
 
  if (mouseY<height-200) {
  ellipse(mouseX,mouseY,100,100);
  stroke(355);
  fill(0);
  strokeWeight(7);
  }
  else{
   fill(181,65,78);
   ellipse(mouseX,mouseY,45,70);
    noStroke();
  
  }
}

void keyPressed(){
   if(key == 'p'){
     saveFrame("portada-######.svg")
     endRecord();
     exit();
   }
 }
