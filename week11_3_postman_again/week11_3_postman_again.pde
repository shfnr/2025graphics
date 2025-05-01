//week11_3_postman_again
//重新來一次
PImage postman, head, body, uparm1, hand1, uparm2, hand2,foot1,foot2;
void setup(){  //把圖都拉近新專案
  size(570,570);
  postman = loadImage("postman.png");
  head = loadImage("head.png");
  body = loadImage("body.png");
  uparm1 = loadImage("uparm1.png");
  uparm2 = loadImage("uparml2.png");
  hand1 = loadImage("head1.png");
  hand2 = loadImage("head2.png");
  foot1 = loadImage("foot1.png"); //增加腳 選轉中心220,375
  foot2 = loadImage("foot2.png"); //增加腳 選轉中心260,372
}
float[] angleX = new float[10]; //在3D的世界裡,我們旋轉
float[] angleY = new float[10];
int ID = 0; //一開始是頭的關節
void keyPressed(){
  if(key=='1') ID = 1; // 左邊臂
  if(key=='2') ID = 2; // 左邊手
  if(key=='3') ID = 3; // 右邊臂
  if(key=='4') ID = 4; // 右邊手
  if(key=='5') ID = 5; // 左邊腳
  if(key=='6') ID = 6; // 右邊腳
  if(key=='0') ID = 0; // 頭
}
void mouseDragged(){
  angle[ID] += mouseX - pmouseX;
  angle[ID] += mouseY - pmouseY; //多了這一行
}
void draw(){
  background(#FFFFF2);
  image(body, 0, 0); //先畫身體
  
  pushMatrix();
    translate(+236, +231); // 再放回去正確的位置
    rotate(radians(angleX[0]));
    translate(-236, -231); // 把頭的旋轉中心, 放到(0,0)
    image(head, 0, 0); // 再畫頭
  popMatrix();
  
  pushMatrix(); //腳 foot1
    translate(220,375);
    rotate(radians(angleX[5]));
    translate(-220,-375);
    image(foot1,0,0);
  popMatrix();
  pushMatrix(); //腳 foot2
    translate(260,372);
    rotate(radians(angleX[6]));
    translate(-260,-372);
    image(foot2,0,0);
  popMatrix();

  pushMatrix(); // 要畫左邊的上手臂、手肘
    translate(+185, +261);
    rotate(radians(angleX[1]));
    translate(-185, -261);
    image(uparm1, 0, 0); // 上手臂
    pushMatrix();
      translate(+116, +265);
      rotate(radians(angleX[2]));
      translate(-116, -265);
      image(hand1, 0, 0);
    popMatrix();
    
   pushMatrix(); // 要畫右邊的上手臂、手肘
    translate(290, 262);
    rotate(radians(angleX[3]));
    translate(-290, -262);
    image(uparm2, 0, 0);
    pushMatrix();
      translate(357, 259);
      rotate(radians(angleX[4]));
      translate(-357, -259);
      image(hand2, 0, 0);
    popMatrix();
  popMatrix();
  popMatrix();
