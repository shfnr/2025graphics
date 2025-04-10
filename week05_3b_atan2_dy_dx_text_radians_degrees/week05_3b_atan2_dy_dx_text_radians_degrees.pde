//week05_3b_atan2_dy_dx_text_radians_degrees
void setup(){
  size(400,400);
}
void draw(){
  background(128);
  line(200,200,400,200);
  line(200,200,mouseX,mouseY);
  float dx = mouseX-200, dy= mouseY-200;
  float a = atan2( dy, dx);//神奇的三角函式，可找到arc弧的radians
  //atan2()出來的值，介於-PI...+PI中間
  if(a<0) arc( 200, 200, 200, 200, a, 0, PIE);//負的...零
  else arc( 200, 200, 200, 200, 0, a, PIE);//零...正的
  textSize(30);
  text("radians: "+ a, 100, 100);//radians 弧度/經度
  text("degrees: "+ degrees(a), 100, 130);//degrees度
}
