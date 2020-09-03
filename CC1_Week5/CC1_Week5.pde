
import ddf.minim.*;
Minim minim;

AudioPlayer icfire;




int playerX = 100;
int playerY = 100;


int enemyX = 500;
int enemyY = 400;
int enemySpeed = 4;






int X = 100;
int Y = 300;



int score = 0;





//int 10 -16
//float 3.14,  -.7666

PImage Sunset;


void setup()
{
  size(800, 800);
  
  imageMode(CENTER);
  
  
    // we pass this to Minim so that it can load files from the data directory
  minim = new Minim(this);

  icfire = minim.loadFile("ISeeFire.mp3");
  
  
  Sunset = loadImage("sunset.jpg");
  Sunset.resize(100,100);
  
  
  
  //icfire.play();
  
}

void draw()
{
  background(0);
  
  
  image(Sunset,X,Y);
  
 // ellipse(X, Y, 40, 40);
  
  X = X + 1;
  
  text(score, 20, 20);
  
  fill(255,0,255);
  rect(350,350,50,50);
  
  
  
  float Distance = dist(playerX, playerY, enemyX, enemyY);
  
  if(Distance < 25 + 25)
  {
    //COLLISION
    background(255,0,123);
    score += 1;
    playerX = 100;
  }
  
  
  if(mouseX > 350)
  {
    if(mouseX < 350+ 50)
    {
      //DO THIS
      if(mouseY > 350)
      {
        if(mouseY < 350 + 50)
        {
          background(255,255,0);
        }
      }
      
    }
  }
  
  
  fill(0, 255, 0);
  ellipse(playerX, playerY, 50, 50); 

  DrawEnemy();
  
  //Move when mouse pressed
  if(mousePressed)
  {
    playerX = playerX + 4;
  }
  //Collisions!
  //Circle On Circle Collision
  fill(0, 0, 255);
  ellipse(mouseX, mouseY, 50, 50);

  float D = dist(mouseX, mouseY, enemyX, enemyY);

  // if Distance is less than r1 + r2
  if (D < 25 + 25)
  {
    //COLLISION!!
    background(255, 0, 0);
    score+=1;
    
  }
  
 
}







void DrawEnemy()
{
  fill(255, 0, 0);
  ellipse(enemyX, enemyY, 50, 50); 

  enemyY = enemyY + enemySpeed;

  if (enemyY > height)
  {
    enemySpeed = -4;
  }
  if (enemyY < 0)
  {
    enemySpeed = 4;
  }
}



void keyPressed()
{
  if (key == 'a')
  {
    playerX -= 5;
  }
  if (key == 'd')
  {
    playerX += 5;
  }
}