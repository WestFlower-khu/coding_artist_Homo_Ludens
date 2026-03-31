void hoon(float x, float y,float d){
  
  //isaac's head
  fill(235,210,210);
  ellipse(x,y,180*d,155*d);
  
  //isaac's tears
  fill(160,215,255);
  ellipse(x+40*d,y+20*d,15*d,30*d);
  ellipse(x-40*d,y+20*d,15*d,30*d);
  
  //isaac's eye
  fill(0);
  ellipse(x+40*d,y,40*d,40*d);
  ellipse(x-40*d,y,40*d,40*d);
  
  //issac's pupil
  fill(255);
  ellipse(x-45*d,y-5*d,15*d,15*d);
  ellipse(x+35*d,y-5*d,15*d,15*d);
  
  //issac's mouth
  fill(0);
  arc(x,y+45*d,50*d,40*d,PI,TWO_PI); 
  
  //isaac's teeth
  fill(255);
  rect(x-17*d,y+37*d,34*d,6*d);
}
