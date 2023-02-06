public void setup()
{
size(600,450);
background(115);
}
public void draw()
{
   sierpinski(50,400,390);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{ 
int x2 = x + len/2;
int y2 = y - len ;
int x3 = x + len;
int y3 = y;
stroke(0);
fill(255,115,115);
triangle(x,y,x2,y2,x3,y3);// the triangle
len = len/2;
if(len > 20){
  sierpinski(x,y,len);
  sierpinski(x+len,y,len);
  sierpinski(x+len/2,y-len,len);
}




}
