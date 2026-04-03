void woo(float x, float y, float d){

  // 얼굴 
  stroke(0);
  fill(245,202,123); // 색 
  ellipse(x,y,48*d,36*d);
  
  // 눈 
  
  stroke(0);
  line(x-13*d,y-5*d,x-3*d,y-5*d);
  line(x+13*d,y-5*d,x+3*d,y-5*d);
  fill(0);
  arc(x-8*d,y-5*d,3*d,8*d,0,PI);
  arc(x+8*d,y-5*d,3*d,8*d,0,PI);
  
  // 코
  triangle(x-3*d,y+1.5*d,x+3*d,y+1.5*d,x,y+5*d);
  
  // 입 
  stroke(0);
  arc(x,y+5*d,11*d,11*d,0,PI);
  
  // 볼
  fill(200,87,0);
  circle(x-15*d,y+3*d,6*d);
  circle(x+15*d,y+3*d,6*d);
 
}
