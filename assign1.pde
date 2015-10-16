PImage img1,img2,enemy,fighter,hp,treasure;
int x=0,m=0,n=0,g1=0,g2=640;
void setup () 
{
  size(640,480);
  img1=loadImage("img/bg1.png");
  img2=loadImage("img/bg2.png");
  enemy=loadImage("img/enemy.png");
  fighter=loadImage("img/fighter.png");
  hp=loadImage("img/hp.png");
  treasure=loadImage("img/treasure.png"); 
}
void draw() {
  background(0);
  x%=640;
  g1%=1280;
  g2%=1280;
  image(img1,-640+g1,0);
  image(img2,-640+g2,0);
  image(enemy,x-20,80);
  image(fighter,550,240);
  fill(250,0,0);
  if(x==0)
    m=40*floor(random(6));
  rect(5,5,205-m,20);
  image(hp,2,2);
  x+=2;
  g1+=1;
  g2+=1;
  image(treasure,100,230);
}
