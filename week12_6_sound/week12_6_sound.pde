//week12_6_sound
//要有聲音,需要聲音library函式庫
//Sketch - Library - managed Libraries找sound
//會看到Sound | provides a simple way to work with audio
//選他,右下角Install下載安裝
//安裝好Sound後,會看到file-Examples點開Library核心函式庫
//Soundfile 那堆範例看SimplePlayBack簡單播放音樂
import processing.sound.*; //抄範例
SoundFile mySound; //抄範例,改檔名
void setup(){
 size(400,400);
 mySound = new SoundFile(this, "music.mp3");
 mySound.play();
}
void draw(){
  
}
