void state_3(){
  //퍼펙트모드 게임중
   background(200,200,255);

  //원 그리기
  for(int i=0;i<10;i++){
    if(mode[i]==0)
      fill(255);
    else
      fill(255,0,0);
    circle(x[i],y[i],50);
  }
  //원 움직이게 하기 
    for(int i=0;i<10;i++){
      x[i] += vx[i];
      y[i] += vy[i];
  
    if(x[i]>= 1200||x[i]<=0)
      vx[i]=-vx[i];
 
    if(y[i]>=800||y[i]<= 0)
      vy[i]=-vy[i];
  }
  
   //원 클릭 계산하기
  if(mousePressed){
    boolean hit=false;

    for(int i=0;i<10;i++){
      if(dist(mouseX,mouseY,x[i],y[i])<30){
        mode[i]=1;
        vx[i]=0;
        vy[i]=0;
        hit=true;
      }
    }

    if(hit==false && dist(mouseX,mouseY,900,400)>=200){
      for(int j=0;j<10;j++)
        mode[j]=0;
      count=0;
      state=5;
    }
  }
  
  
  //타이머 추가하기
  timer+=1;
  text(timer/60,100,100);
  
  //모든 원이 눌려지면 점수창으로
  for(int i=0;i<10;i++){
    if(mode[i]==1)
    count+=1;
  }
  if(count==10){
  for(int i=0;i<10;i++)
  mode[i]=0;
  count=0;
  state=4;
  }
  else
  count=0;
  
}
