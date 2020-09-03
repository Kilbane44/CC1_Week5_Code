//   Name
class Player
{
  //Member Data
  float X;
  float Y;
  float Size;
  float Speed;
  color col;
  
  
  //Constuctors
  //Default  vs Overloaded
  //Default
  Player()
  {
    
    X = random(0,800);
    Y = random(200,500);
    Size = random(5,50);
    Speed = random(-2,2);
    col = color(random(255),random(255),random(255));
    
  }
  
  //Functions / Methods / Actions
  void Draw()
  {
    
    fill(col);
    ellipse(X,Y,Size,Size);
  }
  
  void Move()
  {
    X += Speed;
    
    if(X > width)
    {
      X = 0;
    }
    if(X < 0)
    {
      X = width;
    }
    
  }
  
}