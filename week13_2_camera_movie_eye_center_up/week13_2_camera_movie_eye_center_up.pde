//week13_2_camera_movie_eye_center_up
//電腦圖學繪圖,會設定camera的相關係數
import processing.video.*; //要使用影片外掛
Movie movie; //要放影片變數
void setup(){
 size(720,400,P3D); //要記得加上P3D才有OpenGL功能
 movie = new Movie(this, "street.mov"); //請再把street.mov拉進來
 movie.loop(); //迴圈播放  影片解析度720x480
}
void draw(){
  background(128);
 camera(mouseX,mouseY,500,360,240,0,0,1,0); 
 
 if(movie.available())movie.read();  //有新畫面,就讀入
 image(movie,0,0); //放影片,放在0,0
}
