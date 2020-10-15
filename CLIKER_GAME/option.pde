void option() {
  imageMode(CENTER);
  background(255, 248, 191);

  image(sakura, 240, 230, 200, 200);

  image(zz, 540, 230, 200, 200);
  
  textSize(60);
  fill(0);
  text("OPTION", 100, 110);
  image(selection, 350, 500, thickness, thickness);
  fill(255);

  rect( 600, 500, 100, 50);
  fill(0);
  textSize(50);
  text("OK", 610, 545);
  thickness= map(sliderY, 450, 560, 100, 250);
  //slider
  if (dist(100, sliderY, mouseX, mouseY)<10) {
    strokeWeight(8);
  } else {
    strokeWeight(5);
  }
  stroke(0);

  line (100, 460, 100, 580);
  fill(255);
  circle(100, sliderY, 20);
}


void optionClicks() {
  controlSlider();
  if (dist(240, 230, mouseX, mouseY)<100) {

    selection=sakura;
  }
  if (dist(540, 230, mouseX, mouseY)<100) {

    selection=zz ;
  }
  if (mouseX>600&&mouseX<700&&mouseY>500&&mouseY<550) {
    mode=GAME;
  }
}




void mouseDragged() {
  controlSlider();
}

void controlSlider() {//===== 
  if (mouseX>90 && mouseX<110&& mouseY>460 &&mouseY<580) {
    sliderY=mouseY;
  }
}

void tactileimage() {
  if ( dist(240, 230, mouseX, mouseY) <100) {
    stroke(255, 213, 98);
    strokeWeight(5);
  } else { 
    stroke(0);
  }
  if (mouseX>600&&mouseX<700&&mouseY>500&&mouseY<150) {
    strokeWeight(5);
  } else {
    strokeWeight(2);
  }
}
