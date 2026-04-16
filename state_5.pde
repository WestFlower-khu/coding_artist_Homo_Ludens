void state_5(){
  //퍼펙트모드 실패
  background(200,200,255);
  fill(0);
  text("You missed.",500,300);
  
 //재시작버튼
  fill(255);
  circle(600,500,200);
  fill(0);
  text("RESTART?",530,500);
  
  //재시작버튼 누르면 state_0으로 돌아가기
  if(mousePressed)
  if(dist(mouseX,mouseY,600,500)<100)
  state=0;
}
