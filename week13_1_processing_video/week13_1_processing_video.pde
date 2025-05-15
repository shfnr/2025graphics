//week13_1_processing_video
import processing.video.*; //java使用外掛匯入
//有視訊鏡頭,用這個版本
Capture video;
//Movie movie; 沒有鏡頭,用這個
void setup(){
  size(640,480); //常見的視訊
  video = new Capture(this,640,480);
  video.start(); //打開視訊
}
void draw(){
  if(video.available())video.read();
  image(video,0,480); 
}
