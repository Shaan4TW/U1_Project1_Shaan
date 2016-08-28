// This is a fun find the dot game made by Shaan Navani. Enjoy! 
// If you click it, you win! Remember to be precise when you click!

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer song;
AudioInput input;
int screen;


void setup()
{
  size(500, 500); 

  background(0);

  frameRate(30);

  minim = new Minim(this);

  song = minim.loadFile("Scary Sound.mp3");
  screen = 0;
  
  song.loop();
  song.mute();
}


void draw()
{

  if (screen == 0)
  {
    fill(255, 0, 0);
    ellipse(321, 420, 2, 2);


    fill(255, 0, 0);
    textSize(20);
    text("Find and click the tiny red dot", 100, 100);
  }

  if (screen == 1)

  {
    song.unmute();
    background(0);

    fill(175, 0, 0);
    ellipse(250, 400, 400, 400);

    fill(175, 0, 0);
    ellipse(width/2, height/2, 400, 400);

    fill(255);
    ellipse(175, 150, 50, 50);

    fill(0);
    ellipse(175, 150, 30, 30);

    fill(255);
    ellipse(325, 150, 50, 50);

    fill(0);
    ellipse(325, 150, 30, 30);

    fill(175, 0, 0);
    ellipse(85, 140, 35, 35);

    fill(175, 0, 0);
    ellipse(85, 120, 35, 35);

    fill(175, 0, 0);
    ellipse(85, 100, 35, 35);

    fill(175, 0, 0);
    ellipse(85, 80, 35, 35);

    fill(175, 0, 0);
    ellipse(85, 60, 35, 35);

    fill(175, 0, 0);
    ellipse(85, 40, 35, 35);

    fill(175, 0, 0);
    ellipse(415, 140, 35, 35);

    fill(175, 0, 0);
    ellipse(415, 120, 35, 35);

    fill(175, 0, 0);
    ellipse(415, 100, 35, 35);

    fill(175, 0, 0);
    ellipse(415, 80, 35, 35);

    fill(175, 0, 0);
    ellipse(415, 60, 35, 35);

    fill(175, 0, 0);
    ellipse(415, 40, 35, 35);

    fill(0);
    rect(100, 250, 300, 100);

    fill(255, 0, 0);
    triangle(125, 350, 210, 350, 167.5, 255);

    fill(255, 0, 0);
    triangle(295, 350, 210, 350, 252.5, 255);

    fill(255, 0, 0);
    triangle(295, 350, 380, 350, 337.5, 255);
    
    
    song.setLoopPoints(1000,2000);
    song.unmute();
  }

  if (mousePressed && mouseX >= 321 && mouseX <= 323 && mouseY >= 420 && mouseY <= 422 && screen == 0)
  {

    screen=1;
  }
}