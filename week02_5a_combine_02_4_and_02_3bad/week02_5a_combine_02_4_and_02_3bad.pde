//week02_5a_combine_02_4_and_02_3bad
//要描圖卻錯
PImage img;
void setup(){
 size(400,400);
 img=loadImage("cute.png");
}//記得把圖檔,拉到程式裡
void draw(){
 background(img); 
 fill(255,200); // 半透明色彩 白色,alpha值是128
 rect(0,0,400,400); //畫超大的四邊形,全部蓋住
 
 stroke(255,0,0);//紅色的線
 if(mousePressed) line(mouseX,mouseY,pmouseX,pmouseY);
}
