/* please implement your assign1 code in this file. */

PImage img1,img2,enemy,fighter,hp,treasure;
int x=0,m,n;

void setup () {
  size(640,480) ;  // must use this size.
  // your code
  img1=loadImage("img/bg1.png");
  img2=loadImage("img/bg2.png");
  enemy=loadImage("img/enemy.png");
  fighter=loadImage("img/fighter.png");
  hp=loadImage("img/hp.png");
  treasure=loadImage("img/treasure.png");
  
}

void draw() {
  // your code
  background(0);
  x++;
  x%=640;
  image(img1,0,0);
  image(enemy,x-20,80);
  image(fighter,550,240);
  image(hp,2,2);
  if(x%640==1)
  {
    m=floor(random(100));
    n=floor(random(-100,100));
  }
  image(treasure,m,230+n);

}
