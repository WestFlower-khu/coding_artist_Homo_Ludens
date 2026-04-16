void state_2(){
  //타이머모드 결과창
  background(200,200,255);
  fill(0);
  text(timer/60,550,300);
  
  //최고기록 비교
  if(timer<=best_score)
  best_score=timer;
  
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
