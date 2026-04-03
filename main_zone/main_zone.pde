float x_hoon,y_hoon,d_hoon,delta;
float x_woo,y_woo,vx_woo,vy_woo;
float x_zoo,y_zoo,vx_zoo,vy_zoo;
void setup(){
  size(1400,800);
  x_hoon=0;
  y_hoon=random(200,600);
  d_hoon=1;
  delta=0.01;
  x_woo=y_woo=random(0,300);
  x_zoo=y_zoo=random(500,800);
  vx_woo=2;
  vy_woo=5;
  vx_zoo=10;
  vy_zoo=3;
}
void draw(){
 //배경
  background(200,255,255);
 
 //x_hoon 움직임
 x_hoon=x_hoon+7;
 
 //x_hoon이 벽에 충돌할 때 y_hoon 랜덤변환
 if(x_hoon%1400==0)
 y_hoon=random(800);
 
 //d_hoon 1~1.75 크기 변환
  if(d_hoon>1.75)
  delta=-delta;
  
  if(d_hoon<1)
  delta=-delta;

  d_hoon=d_hoon+delta;
   
 //hoon 그리기
 hoon(x_hoon%1400,y_hoon,d_hoon);
 
 //woo와 zoo의 움직임
 x_woo=x_woo+vx_woo;
 y_woo=y_woo+vy_woo;
 x_zoo=x_zoo+vx_zoo;
 y_zoo=y_zoo+vy_zoo;
 
 //woo와 zoo 그리기
 woo(x_woo,y_woo,5);
 zoo(x_zoo,y_zoo,2.5);
 
  //woo와 zoo의 충돌
 float change_vari;
 if(dist(x_woo,y_woo,x_zoo,y_zoo)<200){
  if(x_woo*x_zoo<0)
  {
   vx_woo=-vx_woo;
   vx_zoo=-vx_zoo;
  }
  else
  {
  change_vari=vx_woo;
  vx_woo=vx_zoo;
  vx_zoo=change_vari;
  }
  
  if(y_woo*y_zoo<0)
  {
   vy_woo=-vy_woo;
   vy_zoo=-vy_zoo;
  }
  
  else
  {
  change_vari=vy_woo;
  vy_woo=vy_zoo;
  vy_zoo=change_vari;
  }
 }
 
 //woo 벽 충돌 
 if(x_woo>=1400)
 vx_woo=-vx_woo;
 
 if(x_woo<=0)
 vx_woo=-vx_woo;
 
 if(y_woo>=800)
 vy_woo=-vy_woo;
 
 if(y_woo<=0)
 vy_woo=-vy_woo;
 
 //zoo 벽 충돌 
 if(x_zoo>=1400)
 vx_zoo=-vx_zoo;
 
 if(x_zoo<=0)
 vx_zoo=-vx_zoo;
 
 if(y_zoo>=800)
 vy_zoo=-vy_zoo;
 
 if(y_zoo<=0)
 vy_zoo=-vy_zoo;
}
