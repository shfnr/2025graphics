//week13_5_camera_keyPressed_keyCode_x_y_z_angle_cos_sin
//修改week13-4
//利用方向鍵(上下左右)來移動
PImage img;
void setup(){
  size(400,400,P3D);
  img = loadImage("chessboard.png"); //記得把圖檔拉進來
  textureMode(NORMAL); //有很多種貼圖
}
float x=200,y=200,z=200,angle=180;
void keyPressed(){ //按方向鍵
  if(keyCode==LEFT) angle--;
  if(keyCode==RIGHT) angle++;
  if(keyCode==UP) {
    x += cos(radians(angle));
    z += sin(radians(angle));  //是z(3D前後)不是y(3D上下)
  }
  if(keyCode==DOWN) {
   x -= cos(radians(angle));
   z -= sin(radians(angle));  //是z(3D前後)不是y(3D上下)
  }
}

void draw(){ //攝影機往前方看,左右前後移動
  if(keyPressed) keyPressed();
  camera(x,y,z,x+ cos(radians(angle)),y,z-sin(radians(angle)),0,1,0);
  background(128);  //灰背景
  beginShape(); //front正前方,z座標都放0
      texture(img); //把圖片,當貼圖
      vertex(0,0,0,0,0);  //x,y,z,u,v
      vertex(400,0,0,1,0);
      vertex(400,400,0,1,1);
      vertex(0,400,0,0,1);
  endShape();
  beginShape(); //left左方,x座標都放0
      texture(img);
      vertex(0,0,0,0,0);  //x,y,z,u,v
      vertex(0,400,0,1,0);
      vertex(0,400,400,1,1);
      vertex(0,0,400,0,1);
  endShape();
}
