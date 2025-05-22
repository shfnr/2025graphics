//week14_5_ik_inverse_kinematics_part3
//用簡單的線段,來解真的ID的運算
void setup(){
 size(400,400);
 for(int i=0; i<2;i++){  //
  p[i] = new PVector(200, 350-50*i); 
 }
}
PVector [] p = new PVector[6];  //有6點頂點
void draw(){
  background(255);
  for(int i=0;i<2;i++){  //用迴圈畫點畫字
   if(i>0) line(p[i-1].x,p[i-1].y,p[i].x,p[i].y);
   fill(255,0,0);  //紅色的圈圈
   ellipse(p[i].x,p[i].y,8,8);
   fill(0); //黑色的字
   text("p:"+i,p[i].x+10,p[i].y); //字往右一點點
  }
  ellipse(mouseX,mouseY,6,6);  //滑鼠也有一個小點,要控制座標移動
  line(p[0].x,p[0].y,mouseX,mouseY);
}
