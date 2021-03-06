import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//mode framework
int mode;
final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;
final int OPTION=4;
//target variables
float x,y,r;
int score, lives;
int highscore;
//soudn variables
Minim minim;
AudioPlayer theme, coin, bump, gameover;

//image variables
 float vx,vy;
 float sliderY;
 float thickness;
 PImage sakura;
 PImage zz;
 PImage selection;
 
void setup() {
  size(800, 800);
  mode= INTRO;
  sliderY= 460;
  // initialize target 
  x=width/2;
  y=height/2;
  score=0;
  lives=3; 
  selection=sakura;
  thickness=100;
  //minim
  minim= new Minim (this);
  theme=minim.loadFile("mario bros theme.mp3");
   coin=minim.loadFile("coin.wav");
    bump=minim.loadFile("bump.wav");
    gameover=minim.loadFile("gameover.wav");
    vx=1;
vy=1;
x=width/2;
y=height/2;
r=100;
vx=random(-3,3);
vy=random(-3,3);
sakura= loadImage("sakura.png");
zz=loadImage("zz.png");
selection=sakura;
}



void draw() {
  if (mode==INTRO) {
    intro();
  } else if (mode== GAME) {
    game();
    
  } else if (mode== PAUSE) {
    pause();
    
  } else if (mode== GAMEOVER) {
    gameover();
    
    
  } else if (mode== OPTION) {
    option();
    
  } else {
    println("Error:Mode="+ mode);
  }
}
