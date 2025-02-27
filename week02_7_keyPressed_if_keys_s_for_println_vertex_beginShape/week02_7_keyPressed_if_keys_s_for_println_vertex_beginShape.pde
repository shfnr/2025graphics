//week02_7_keyPressed_if_keys_s_for_println_vertex_beginShape
//想要把畫出來的座標
ArrayList<Integer>x, y;//先有兩個孩美準備好的資料結構
ArrayList<ArrayList<Integer>> xx = new ArrayList<ArrayList<Integer>>();
ArrayList<ArrayList<Integer>> yy = new ArrayList<ArrayList<Integer>>();
PImage img;
void setup() {
  size(400, 400);
  img=loadImage("cute.png"); //每次新的檔案要再把圖拉進去
}//記得把圖檔,拉到程式裡
void draw() {
  background(img);
  fill(255, 200); // 半透明色彩 白色,alpha值是128
  rect(0, 0, 400, 400); //畫超大的四邊形,全部蓋住
  //上面是week02_4,下面是迴圈,從資料結構取出來
  for (int I=0; I<xx.size(); I++) {
    ArrayList<Integer> x = xx.get(I); //新建資料結構
    ArrayList<Integer> y = yy.get(I);
    for (int i=1; i<x.size(); i++) {
      line(x.get(i), y.get(i), x.get(i-1), y.get(i-1));
    }
  }
}
void keyPressed() {
  if (key=='s'| key=='S') {
    for (int I=0; I<xx.size(); I++) {
      ArrayList<Integer> x = xx.get(I);
      ArrayList<Integer> y = yy.get(I);
      for (int i=1; i<x.size(); i++) {
        println("vertex(" +x.get(i)+","+y.get(i)+");");
      }
    }
  }
}
void mouseDragged() {
  println("vertex("+mouseX+","+mouseY+");");
  x.add(mouseX);
  y.add(mouseY);
}
void mousePressed() {
  x=new ArrayList<Integer>();
  xx.add(x);
  y=new ArrayList<Integer>();
  yy.add(y);
}
