float []x,y;
float []vx,vy;
float []mode;//원의 색깔 상태
float state;//메뉴상태,타이머 모드, 퍼펙트 모드, 각 모드의 결과
float timer;//타이머
int count;//원이 다 눌렸나 세는 변수
float best_score;//타이머모드 최고기록 
void setup(){
  size(1200,800);
  textSize(32);
  x=new float [10];
  y=new float [10];
  vx=new float [10];
  vy=new float [10];
  mode=new float [10];
  state=0;
  timer=0;
  count=0;
  best_score=60000000;
  background(200,200,255);
}
void draw(){
  
  if(state==0)
    state_0();
    
  if(state==1)
    state_1();
    
  if(state==2)
    state_2();
    
  if(state==3)
    state_3();
    
  if(state==4)
    state_4();
    
  if(state==5)
   state_5();
    
}
