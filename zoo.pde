void zoo(float x, float y, float d){
  //face
  fill(255);
  circle(x,y,90*d);
  
  //eye
  circle(x-20*d,y-14*d,20*d);
  circle(x+20*d,y-14*d,20*d);
  
  //pupil
  fill(12,13,13);
  circle(x-20*d,y-14*d,10*d);
  circle(x+20*d,y-14*d,10*d);
  
  //mouth
  fill(255,255,255);
  ellipse(x,y+14*d,60*d,24*d);
  
  //nose
  fill(12,13,13);
  circle(x,y,10*d);
  
  //ears
  fill(12,13,13);
  ellipse(x-40*d,y-40*d,40*d,12*d);
  ellipse(x+40*d,y-40*d,40*d,12*d);
  
  //tongue
  fill(255,0,0);
  arc(x,y+26*d,18*d,14*d,0,PI);
}
