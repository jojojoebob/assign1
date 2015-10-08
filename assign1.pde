PImage img1,img2,enemy,fighter,hp,treasure;
int x=0,m,n,g1=-640,g2=0;

void setup () {
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
  g1+=1;
  g2+=1;
  if(g1==640)
  g1=-640;
  if(g2==640)
  g2=-640;
  image(img1,g1,0);
  image(img2,g2,0);
  image(enemy,x-20,80);
  image(fighter,550,240);
  fill(250,0,0);
  rect(13,5,60,20);
  image(hp,2,2);
  if(x%640==0)
  {
    m=floor(random(100));
    n=floor(random(-100,100));
  }
  x+=2;
  image(treasure,m,230+n);
}
