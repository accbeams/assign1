/* please implement your assign1 code in this file. */
/*
   Assign 1
   Author: Grace
   Update: 2017/07/09
   */ 
int bg1X;
int bg2X;
int hp;
int enemyX;
int enemyY;
int treasureX;
int treasureY;
PImage bg1Img;
PImage bg2Img;
PImage enemyImg;
PImage fighterImg;
PImage hpImg;
PImage treasureImg;
void setup () {
  size(640,480) ;  // must use this size.
  // your code
  bg1X=-1;
  hp=floor(random(190));
  enemyX=-1;
  enemyY=floor(random(420));
  treasureX=floor(random(600));
  treasureY=floor(random(440));
  bg1Img=loadImage("img/bg1.png");
  bg2Img=loadImage("img/bg2.png");
  enemyImg=loadImage("img/enemy.png");
  fighterImg=loadImage("img/fighter.png");
  hpImg=loadImage("img/hp.png");
  treasureImg=loadImage("img/treasure.png");  
}

void draw() {
  // your code
  // rolling background
  if (bg1X<=639){
    bg1X=bg1X+1;
    if (bg1X>=0){
      bg2X=bg1X-640;}//(0,-640),(1,-639)........(640,0)
    else{
      bg2X=640+bg1X;}//(-639,1),(-638,2)........(0,-640)    
    }
  else {
    bg1X=-bg1X;
    bg2X=640+bg1X;//(-640,0)
    }     
  image(bg1Img,bg1X,0);
  image(bg2Img,bg2X,0);
  //moving enemy
  enemyX=(enemyX+3)%640;  
  image(enemyImg,enemyX,enemyY);
  //fighter
  image(fighterImg,580,240);
  //hp   
  stroke(#FF0000,160);
  fill(#FF0000,160);//red
  rect(10,5,hp,12);
  image(hpImg,0,0);
  //treasure
  image(treasureImg,treasureX,treasureY);  
}
