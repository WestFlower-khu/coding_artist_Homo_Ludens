void state_0(){
 //기본상태. 타이머 모드 또는 퍼펙트 모드를 선택
  background(200,200,255);
  
  //초기화
    for (int i=0;i<10;i++)
    mode[i]=0;
  
  for (int i=0;i<10;i++){
    if (random(1) < 0.5)
      vx[i]=3;
    else
      vx[i]=-3;
    if(random(1)<0.5)
      vy[i]=2;
    else
      vx[i]=-2;
  }
    state=0;
    timer=0;
    count=0;
  
  //타이머모드 최고기록
  fill(0);
  text("best score:"+ best_score/60,100,100);
  
  
  //왼쪽 빨간 버튼
  fill(180,100,100);
  circle(300,400,200);
  fill(0);
  text("Timer mode",210,400);
  
  //오른쪽 파란 버튼
  fill(100,100,180);
  circle(900,400,200);
  fill(0);
  text("Perfect mode",810,400);
  
  //초기화 마다 좌표랜덤화
  for(int i=0;i<10;i++){
  x[i]=random(0,1200);
  y[i]=random(0,800);
  }
  
  //버튼 누르기
  if(mousePressed){
    if((dist(mouseX,mouseY,300,400)<=100))
    state=1;
    else if((dist(mouseX,mouseY,900,400)<=100))
    state=3;
  }
  
}
