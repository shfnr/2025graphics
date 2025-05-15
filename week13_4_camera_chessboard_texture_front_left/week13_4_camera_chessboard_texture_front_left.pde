//week13_4_camera_chessboard_texture_front_left
//把貼圖,跟camera整合再一起
PImage img;
void setup(){
  size(400,400,P3D);
  img = loadImage("chessboard.png"); //記得把圖檔拉進來
  textureMode(NORMAL); //有很多種貼圖
}
void draw(){ //攝影機往前方看,左右前後移動
  camera(mouseX,200,mouseY,mouseX,200,mouseY-10,0,1,0);
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
