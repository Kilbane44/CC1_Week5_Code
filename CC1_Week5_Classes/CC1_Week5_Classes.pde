Player billy = new Player();
Player tommy = new Player();

Player[] Players = new Player[100];
void setup()
{
  size(800,800);
  
  for(int i=0; i < 100; i++)
  {
    Players[i] = new Player();
  }
  
}

void draw()
{
  background(0);
  fill(255);


  for(int i=0; i < 100; i++)
  {
    Players[i].Draw();
    Players[i].Move();
  }
  
  
  billy.Draw();
  billy.Move();
  
  tommy.Draw();
  tommy.Move();
}