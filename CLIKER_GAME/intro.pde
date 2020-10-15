void intro(){
  theme.play();
    background(219,255,211);
   
//START BUTTON: CLICK TO START
fill(255);


strokeWeight(1);
fill(0); 
textSize(60);
text("CLIKER GAME",180,400);
fill(255);
tactileintro(400,530,200,80);
rect(440,530,200,80);
fill(0);
text("start",470,590);
fill(255);
tactileintro(140,530,200,80);
rect(140,530,200,80);
fill(0);
text("option",150,590);
}


void introClicks(){
  if (mouseX>440&&mouseX<640&&mouseY>530&&mouseY<610)
  mode=GAME;
  if (mouseX>140&&mouseX<340&&mouseY>530&&mouseY<610)
  mode=OPTION;
}

void tactileintro(int x, int y, int w, int h){
  if (mouseX>x&&mouseX<x+w&& mouseY>y&&mouseY<y+h) {
    stroke(252,171,171);
    strokeWeight(5);
     } else {
       stroke(0);
       strokeWeight(2);
     }
     }
