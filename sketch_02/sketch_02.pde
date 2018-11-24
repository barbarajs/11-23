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
 frameRate(20);
}

void draw () {

 
 for (int i = 0; i < 100; i++) {
  float r = random(600);
  stroke(r*5);
  rect(0, 340+r, 490, i);
}
  if (mouseY<height-200) {
  ellipse(mouseX,mouseY,60,60);
  stroke(355);
  fill(random(0,360),100,50,100);
  strokeWeight(7);
  }
  else{
   fill(181,65,random(0,360));
   ellipse(mouseX,mouseY,45,70);
    noStroke();
  
  }
} 

void keyPressed(){
   if(key == 'p'){
     saveFrame("portada-##########.svg");
     exit();
   }
 }
