//week13_3_texture_textureMode_beginShape_vertex_endShape
//先教貼圖,之後再加進去
PImage img;
void setup(){
  size(400,400,P3D); //要記得加上P3D才有OpenGL功能
  img = loadImage("chessboard.png"); //記得把圖檔拉進來
  textureMode(NORMAL); //有很多種貼圖
} 
void draw(){
  background(128);  //灰背景
  beginShape(); //開始畫
    texture(img); //把圖片,當貼圖
    vertex(40,80,0,0);  //4個頂點vertex的四邊形,會截出兩個三角形
    vertex(320,20,1,0);
    vertex(380,360,1,1);
    vertex(160,380,0,1);
  endShape();
}
