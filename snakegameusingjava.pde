  /**  * Background Image.   *   * This example presents the 
  fastest way to load a background image  * into Processing. To load an 
  image as the background, it must be  * the same width and 
  height as the program.  */ 
ArrayList<Integer> x_pos=new ArrayList<Integer>();
ArrayList<Integer> y_pos=new ArrayList<Integer>();
PImage bg; 
int y;  
int hgt =24,wdt=24;
int block=15;
int dir=2;
int f_x_pos=15;
int f_y_pos=15;
int speed=10;
int []x_dir={0,0,1,-1};
int []y_dir={1,-1,0,0};
boolean gamestatus = false;
void setup() 
{
size(500,500);   // The background image must be the same size as the parameters   // 
//into the size() method. In this program, the size of the image   // is 1680 x 1050 pixels.   

   x_pos.add(4);
   y_pos.add(15);
}  
void draw() 
{ 
    background(0);
    fill(color(#09B226));    
for(int i=0;i<x_pos.size();i++)
  rect(x_pos.get(i)*block,y_pos.get(i)*block,block,block);
  if (!gamestatus)
{
fill(color(#09B226));
rect(f_x_pos*block,f_y_pos*block,block,block);
textAlign(LEFT); //alignment
textSize(25); // position

fill(255);
text("Score:" + x_pos.size(),0,20);
}
  if(frameCount%8==0)
  {
    x_pos.add(0,x_pos.get(0)+x_dir[dir]);
    y_pos.add(0,y_pos.get(0)+y_dir[dir]);
    
      if(x_pos.get(0)<0 || y_pos.get(0)<0 || x_pos.get(0)>wdt|| y_pos.get(0)>hgt)
          {
            gamestatus=true;
          }
for(int i=1;i<x_pos.size();i++)
   {
       if(x_pos.get(0)==x_pos.get(i) && y_pos.get(0)==y_pos.get(i))
           gamestatus=true;
   }

if(x_pos.get(0)==f_x_pos && y_pos.get(0)==f_y_pos)
    { 
      if(x_pos.size()%2==0 && speed>=2 )
    {
         speed=speed-1;
    }
      f_x_pos=(int)random(0,wdt);
      f_y_pos=(int)random(0,hgt);
    }
else 
   {
      x_pos.remove(x_pos.size()-1);
      y_pos.remove(y_pos.size()-1);
   }
fill(222, 9, 12);
textAlign(CENTER);
textSize(30);
text("Game Over \n Score: " + x_pos.size() + "\n Press Enter", 500/2,500/2);
   if(keyCode ==ENTER)
     {
         x_pos.clear();
         y_pos.clear();
         x_pos.add(4);
         y_pos.add(15);
         dir =2;
         speed=10;
         gamestatus = false;
     }
   }
}
  
void keyPressed()
{
  int new_dir=keyCode;
  if(keyCode==DOWN)
     new_dir=0;
  else if(keyCode==UP)
     new_dir=1;
  else if(keyCode==LEFT)
     new_dir=3;
  else if(keyCode==RIGHT)
     new_dir=2;
  else
     new_dir=-1;
  if(new_dir!=-1)
     dir=new_dir;
}
