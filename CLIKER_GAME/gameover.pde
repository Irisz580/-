void gameover() {
  gameover.play();
  theme.pause();
  background(255, 180, 182);
  fill(255);
  tactilegameover(50, 650, 300, 80);
  rect(50, 650, 300, 80);
  tactilegameover(550, 650, 200, 80);
  rect(550, 650, 200, 80);
  fill(0);
  textSize(70);
  text("QUIT", 560, 720);
  textSize(65);
  text("RESTART", 60, 720);
  if (score>highscore) {
    highscore = score;
  }
  fill(255, 0, 0);
  text("GAME OVER", 200, 280);
  textSize(50);
  fill(0);
  text("HIGH SCORE :"+highscore, 200, 380);
}
void reset() {
  //target
  x=width/2;
  y=height/2;
  vx= random(-5, 5);
  vy= random(-5, 5);

  //game initialization
  score=0;
  lives=3;
  sliderY=460;
}



void gameoverClicks() {
  reset();
  if (mouseX>50&&mouseX<350&&mouseY>650&&mouseY<730) {
    mode=INTRO;
  }
  if (mouseX>550&& mouseX<750&& mouseY>650&&mouseY<730) {
    exit();
  }
}

void tactilegameover(int x, int y, int w, int h) {//=======
  if (mouseX>x&&mouseX<x+w&& mouseY>y&&mouseY<y+h) {
    strokeWeight(5);
    stroke(142, 250, 255);
  } else {
    strokeWeight(2);
    stroke(0);
  }
}
