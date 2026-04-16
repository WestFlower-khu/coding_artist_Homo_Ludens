void state_4(){
  //퍼펙트모드 성공
  background(200,200,255);
  fill(255,255,0);
  text("Perftct Aiming!",500,300);

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
