//57步进电机
module motor57() {
    translate([0,0,90]){
        color("steelblue")translate([0,0,0])  
        rotate([0,0,0]) cylinder(56,28.5 ,28.5, center=true);
        color("Gray")translate([0,0,38])rotate([0,0,0])
        cylinder(20, 6, 6, center=true); 
    }
}

//57减速步进电机
module motor_s57() {
    translate([0,0,0]){
        color("Gray") rotate([0,0,0])
        cylinder(56,28.5 ,28.5, center=true);
        color("Gray")translate([0,0,70])rotate([0,0,0])
        cylinder(20, 6, 6, center=true); 
        color("Gray")translate([0,0,45.5])rotate([0,0,0])
        cylinder(35, 30, 30, center=true); 
    }   
}

//57减速电机支架
module motor_zhijia57() {
    translate([0,0,-36.5]){
        color("lime") translate([-35,0,-23])
        cube([2.5,57,46],true);
        color("lime") translate([0,0,0])
        cube([68,57,2.5],true);
    }
}
//42步进电机
module motor_42() {
    
    intersection() {
        color("steelblue") 
        translate([0,0,0])cube(42,42 ,40, center=true);
        translate([0,0,0])cylinder(42,25 ,25, center=true);
    }
    translate([0,0,20])cylinder(16,3 ,3, center=true);
    
}
//42电机支架
module motor_zhijia42(){
    translate([-3,0,-83]){
        color("lime") translate([-24,0,24])
        cube([2.5,48,48],true);
        color("lime") translate([0,0,0])
        cube([48,52,2.5],true);
    }
}    
//42电机平支架
module motor_zhijia42p(){
        color("lime") translate([-27,0,-60])
        cube([2.5,48,68],true);
}    


//42减速步进电机
module motor_s42() {
    translate([0,0,0]){
        color("Gray") rotate([0,0,0])
        cylinder(24,21 ,21, center=true);
        color("Gray")translate([0,0,22])rotate([0,0,0])
        cylinder(20, 22, 22, center=true); 
        color("Gray")translate([0,0,36])rotate([0,0,0])
        cylinder(18, 6, 6, center=true); 

    }   
}
//园底座
module dizuo_y(){
    translate([0,0,0]){
        difference() {
            color("Gray")translate([0,0,0])rotate([0,0,0])
            cylinder(210, 70, 70, center=true); 
            cylinder(210, 67, 67, center=true); 
            color("red")translate([0,0,0])rotate([0,0,0])
            cylinder(210, 67, 67, center=true); 
            color("SteelBlue") translate([-38,0,0])   
            cube([5,100,210],true);
            color("Gray")translate([0,0,-107])rotate([0,0,0])
            cylinder(3, 85, 85, center=true); 
            color("Gray")translate([0,0,107])rotate([0,0,0])
            cylinder(3, 85, 85, center=true); 
        }
    }
}

//园底座1
module dizuo_y1(){
    translate([0,0,0]){
        color("Gray")translate([0,0,0])rotate([0,0,0])
        cylinder(210, 70, 70, center=true); 
        color("red")translate([0,0,0])rotate([0,0,0])
        cylinder(210, 67, 67, center=true); 
        color("SteelBlue") translate([-38,0,0])   
        cube([5,100,210],true);
        color("Gray")translate([0,0,-107])rotate([0,0,0])
        cylinder(3, 85, 85, center=true); 
        color("Gray")translate([0,0,107])rotate([0,0,0])
        cylinder(3, 85, 85, center=true); 
        
    }
}

//底座


module dizuo(){
    translate([0,0,88]){
        difference() {
            color("SteelBlue") translate([1,0,80])
            cube([84,100,5],true);
            color("SteelBlue") translate([0,0,-145])
            cube([110,100,5],true);
            color("SteelBlue") translate([-38,0,-33])   
            cube([5,100,220],true);
            color("SteelBlue") translate([40,0,-33]) 
            cube([5,100,220],true);
        }
    }
}
//铜套轴承套
module gear_8(){  
    difference() {
        union(){
            color("lime") rotate([0,0,0])translate([0,0,15])
            cylinder(24,9,9, center=true);
            cylinder(6,15,15, center=true);
        }
        translate([0,0,12])
        cylinder(30,4,4, center=true);
    }        
}
//铜套轴承
module zc_huatao12(){
    color("lime") rotate([0,0,0])translate([0,0,28.5])
    cylinder(57,10.5,10.5, center=true);
    color("lime") rotate([0,0,0])translate([0,0,3])
    cylinder(6,21,21, center=true);
    color("red") rotate([0,0,0])
    hull(57,6 ,6, center=true); 
}
//铜套轴承
module zc_huatao8(){
    color("lime") rotate([0,0,0])translate([0,0,0])
    cylinder(24,7.5,7.5, center=true);
    color("lime") rotate([0,0,0])translate([0,0,-12])
    cylinder(4,16,16, center=true);
    color("red") rotate([0,0,0])
    hull(57,6 ,6, center=true); 
}

//密封过渡轴
module roller_l12(){
    color("Gray") translate([0,0,0])rotate([0,0,0])
    cylinder(180,6 ,6, center=true);
}
//卧式光杠固定座 12       
module gdz_os12(){
    translate([0,0,70]){
        color("Gray") rotate([0,0,0])translate([0,0,6])
        cylinder(12,16 ,16, center=true);
        color("Gray") rotate([0,0,0])translate([0,-18,6])
        cylinder(12,6,6, center=true);        
        color("Gray") rotate([0,0,0])translate([0,18,6])
        cylinder(12,6,6, center=true);  
    }
}
//卧式光杠固定座 8       
module gdz_os8(){
    translate([0,0,70]){
        difference() {
            color("Gray") rotate([0,0,0])translate([0,0,6])
            cylinder(10,15,15, center=true);
            cylinder(10,4,4, center=true); 
        }
         difference() {
            color("Gray") rotate([0,0,0])translate([0,-16,6])
            cylinder(10,6,6, center=true);
            cylinder(10,3,3, center=true);  
         }          
         difference() {
            color("Gray") rotate([0,0,0])translate([0,16,6])
            cylinder(10,6,6, center=true);
            cylinder(10,3,3, center=true);  
         }          
    }
}

//卧式光杠固定座 5       
module gdz_os5(){
    translate([0,0,70]){
        difference() {
            color("Gray") rotate([0,0,0])translate([0,0,6])
            cylinder(10,15,15, center=true);
            cylinder(10,2.5,2.5, center=true); 
        }
         difference() {
            color("Gray") rotate([0,0,0])translate([0,-16,6])
            cylinder(10,6,6, center=true);
            cylinder(10,3,3, center=true);  
         }          
         difference() {
            color("Gray") rotate([0,0,0])translate([0,16,6])
            cylinder(10,6,6, center=true);
            cylinder(10,3,3, center=true);  
         }          
    }
}

//立式光杠固定座        
module gdz_ls12(){
    translate([0,0,5]){
        color("Gray") rotate([0,0,0])translate([0,0,12]){
            translate([0,0,-12])cube([12,48,8],true);
            translate([0,0,0])cube([12,36,27],true);
        }        
        color("red") translate([0,0,10])rotate([0,90,0]){
        cylinder(12,6,6, center=true);  
        }
     }
}
//防水法兰
module fl_12(){
    color("red") translate([0,0,-6])rotate([0,0,0])
    cylinder(12,18,18, center=true);
}
//12联轴器
module lzq_12(){
    translate([0,0,0]){
        color("blue") rotate([0,0,0])translate([0,0,-17.5])
        cylinder(30,15,15, center=true);
    }
}

//12光杠
module guanggang_12(){
    translate([0,0,0]){
        color("steelblue") rotate([0,90,0])translate([0,0,6])
        cylinder(650,6,6, center=true);
    }
}
//光杠8
module guanggang_8(){
    translate([0,0,0]){
        color("steelblue") rotate([0,0,0])translate([0,0,0])
        cylinder(50,4,4, center=true);
    }
}
//滑动轴承12
module gear_12(){
    translate([0,0,0]){
        color("lime") rotate([0,0,0])translate([0,0,0])
        cube([36,40,35],true);
        color("red") translate([0,0,0])rotate([0,90,0])
        cylinder(36,6,6, center=true);
    }
}

//弹簧
module th(){
    translate([0,0,25]){
        r=5;
        for(g=[0:1:1889])
        color("yellow") rotate([0,0,0]) translate([0,0,0])
        translate([cos(g)*r,sin(g)*r,(g)/100])
        rotate(a=[80,0,g])
        cylinder(1.5,1.5,1.5,center=true,sin=3);
    }    
}

//丝杠
module sg(){
    translate([0,0,0]){
        r=4;
        for(g=[0:1:5889])
        color("yellow") rotate([0,0,0]) translate([0,0,0]) 
        translate([cos(g)*r,sin(g)*r,(g)/100])
        rotate(a=[80,0,g])
        cylinder(1.5,1.5,1.5,center=true,sin=3);
    }    
    translate([0,0,32]){
        color("yellow") rotate([0,0,0])
        cylinder(90,4,4,center=true,sin=3);
    }
}
//连接板
module ljb(){
    translate([50,0,-30]){
        intersection(){    
            color("yellow") translate([0,0,0])
            cube([5,80,80],true);
        }
        union(){
            color("yellow") 
            translate([40,0,-40]) cube([80,60,5],true);
            translate([-25,0,-5]) cube([50,40,5],true);
            translate([-25,0,-40]) cube([50,40,5],true);            
            
        }
    }  
}


//垂直部分

//工件
module gj_max(){
    color("steelBlue") translate([0,0,0]) 
    cube([200,200,10],true);
}
//工件_min
module gj_min(){
    color("Blue") translate([0,0,0]) 
    cube([10,390,10],true);
}
  //抓爪舵机
module dj(){
    color("Blue") translate([0,0,-15])  
    cube([56,56,25],true);
}

//左抓爪
module djz(){
    color("steelBlue") translate([0,0,-75])rotate([0,0,0])
    cube([10,60,110],true);
}

//螺母
module lm(){
    color("steelBlue") translate([0,0,0])   
    rotate([0,0,0])   
    cylinder(10,8,8, center=true);
}
//螺丝
module ls(){
    color("steelBlue") translate([0,0,0])   
    rotate([0,0,0])   
    cylinder(30,4,4, center=true);
    translate([0,0,20])  
    cube([14,14,8],true);
}


// 量取尺寸线
module ccx(){
    color("red") translate([0,0,0])   
    rotate([0,0,0])   
    cylinder(500,2,2, center=true);
}

//推力轴承12mm
module tlzc12(){
    difference(){  
        color("cyan") translate([0,0,0])rotate([0,0,0]) 
        cylinder(8,12,12, center=true);
        cylinder(8,6,6, center=true);
    }
}   
//驱动部件

module zdbj(){
    union(){
        translate([0,0,150])ccx();  //尺寸线
   //     translate([0,0,65])dizuo_y();  //支座
        motor_s57() ;   //57减速电机
        translate([0,0,100]) motor_zhijia57();   //减速电机支架        
        translate([0,0,100]) lzq_12();   //联轴器12
        translate([0,0,155])rotate([0,180,0]) zc_huatao12();  //轴承12    
        translate([0,0,165]) fl_12();      //防水法兰
        translate([0,0,150]) roller_l12();  //转轴
        translate([0,0,105]) gdz_os12();   //光轴固定座1
        translate([0,0,145]) gdz_os12();    //光轴固定座12  
        translate([0,0,170]) tlzc12();    //推力轴承12  
    }
}
//转动销轴
module zdxz(){
    translate([0,0,0]) {
        scale([1,1,0.5])translate([0,0,0]) roller_l12();  //转轴
        translate([0,0,0]) gdz_os12();   //光轴固定座1
        translate([0,0,]) gdz_os12();    //光轴固定座12  
        translate([0,0,75]) tlzc12();    //推力轴承12  
    }
}
//转动销轴1
module zdxz1(){
    translate([0,0,20]) {
        scale([1,1,0.3])translate([0,0,-20]) roller_l12();  //转轴
        rotate([0,0,0])translate([0,0,-75]) gear_8();   //滑动轴承
        translate([0,0,-75]) gdz_os12();    //光轴固定座12  
        translate([0,0,-15]) tlzc12();    //推力轴承12  
    }
}

//孔
module hole4(){
    cylinder(5,2,2, center=true);
}
//  滑套轴承8/15
module gear_8_15(){
    difference() {
        union() {
            color("lime") rotate([0,0,0])translate([0,0,0])
            cylinder(45,7.5,7.5, center=true);
            difference() {
                cylinder(5,16,16, center=true);
                rotate([0,0,0])translate([12.5,0,0])
                hole4();
                rotate([0,0,0])translate([-12.5,0,0])
                hole4();
                rotate([0,0,0])translate([0,12.5,0])
                hole4();
                rotate([0,0,0])translate([0,-12.5,0])
                hole4();
            }
        }
        translate([0,0,0])
        cylinder(45,4,4, center=true);
    }    
}   


//臂
l0=106;
l1=338;
l2=335;
l3=285;
l4=282;

//铝型材30303_1
module lxc3030_1(){
    color("blue") translate([0,0,0])rotate([0,0,0])
    cube([l1+50,30,30],true);
}

//铝型材30303_2
module lxc3030_2(){
    color("blue") translate([0,0,0])rotate([0,0,0])
    cube([l2+50,30,30],true);
}
    //铝型材30303_3
module lxc3030_3(){
    color("blue") translate([0,0,0])rotate([0,0,0])
    cube([l3+50,30,30],true);
}
    //铝型材30303_4
module lxc3030_4(){
    color("blue") translate([0,0,0])rotate([0,0,0])
    cube([l4+50,30,30],true);
    
}
    //连接臂_1
module ljb_1(){
    color("blue") translate([0,0,0])rotate([0,90,0])
    cylinder(l1+50,4,4, center=true);
}
    //连接臂_2
module ljb_2(){
    color("blue") translate([0,0,0])rotate([0,90,0])
    cylinder(l2+50,4,4, center=true);
}
    //连接臂_3
module ljb_3(){
    color("blue") translate([0,0,0])rotate([0,90,0])
    cylinder(l3+50,4,4, center=true);
}
    //连接臂_4
module ljb_4(){
    color("blue") translate([0,0,0])rotate([0,90,0])
    cylinder(l4+50,4,4, center=true);
}







//工件区域
{
color("DarkViolet") translate([p0*cos(B0),p0*sin(B0)-250,-45])rotate([0,0,25])
cube([500,500,2],true);
}
//工件放置区域
{
{color("DarkViolet") translate([-p0*cos(B0),p0*sin(B0)-250,-45])rotate([0,0,-25])
cube([500,500,2],true);
    }
}
//  "0“地面
{
//color("yellow") translate([0,0,-45]) 
//cylinder(1,720,700, center=true);
}



//        //旋转部分
  //支撑板
module zcb(){
    color("Blue") translate([0,-25,15])  
    cube([80,3,80],true);
    translate([0,-50,55])rotate([0,0,0])
    cube([45,50,3],true);
}

//抓爪(左）
module djzl(){
    union(){
        translate([0,0,-10]){
            color("Blue") translate([0,7.5,-25])rotate([0,0,0])
            cube([15,2,110],true);
            translate([7.5,0,-25])
            cube([2,15,110],true);
            translate([8.5,0,-85])rotate([0,0,0])
            cube([2,50,15],true);
        }
        
    }
}
//抓爪(右）
module djzr(){
    union(){
        translate([0,0,-10])rotate([0,0,0]){
            color("Blue") translate([0,7.5,-25])rotate([0,0,0])
            cube([15,2,110],true);
            translate([-7.5,0,-25])
            cube([2,15,110],true);
            translate([-8.5,0,-85])rotate([0,0,0])
            cube([2,50,15],true);
        }
        
    }
}
   //密封过渡轴
module roller_8(){
    color("Gray") translate([0,0,0])rotate([0,0,0])
    cylinder(200,4 ,4, center=true);
}
   //套筒
module roller_8_12(){
        difference() {
            color("steelblue") translate([0,0,0])rotate([0,0,0])
            cylinder(40,6 ,6, center=true);
            cylinder(40,4 ,4, center=true);
        }
}
//
  //ljb1连接板1
module ljb1(){
    color("Blue") translate([0,0,0])  
    cube([70,3,35],true);
}
  //ljg1连接杆1
module ljg1(){
    color("Blue") translate([0,0,0]) 
    cylinder(50,4,4, center=true);
}
//齿轮
module cl_50(){
    difference(){
        color("steelblue") rotate([0,0,0])translate([0,0,0])
        cylinder(15,25,25, center=true);
        cylinder(15,4,4, center=true);
        translate([16,0,0])cylinder(15,3,3, center=true);
        translate([-16,0,0])cylinder(15,3,3, center=true);
        translate([0,16,0])cylinder(15,3,3, center=true);
        translate([0,0-16,0])cylinder(15,3,3, center=true);         
        }
}
//小齿轮
module cl_20(){
    difference(){
        color("blue") rotate([0,0,0])translate([0,0,0])
        cylinder(15,10,10, center=true);
        translate([0,0,0])cylinder(15,4,4, center=true);
    }
}

//铜套轴承套
module gear_8(){  
    difference() {
        union(){
            color("lime") rotate([0,0,0])translate([0,0,15])
            cylinder(24,10,10, center=true);
            cylinder(6,15,15, center=true);
        }
        translate([0,0,12])
        cylinder(30,4,4, center=true);
    }        
}
    //齿条
module ct20(){
    color("blue") translate([0,0,0])rotate([0,0,0])
    cube([20,20,100],true);
}

//工作部件
module gzbj(){
    translate([0,55,8])rotate([0,0,0])zcb(); //支撑板  
    translate([0,0,70])rotate([0,0,0])roller_8_12();   //套筒
    translate([-25,15,0])rotate([0,90,90])cl_50();   //齿轮 
    translate([25,15,0])rotate([0,90,90])cl_50();   //齿轮  
    translate([25,15,35])rotate([0,90,90])cl_20();   //齿轮  
    translate([25,65,35])rotate([0,90,-90])motor_s42();//42减速步进电机
    translate([-25,0,0])rotate([0,0,0])djzl();   //舵机爪  
    translate([25,0,0])rotate([0,0,0])djzr();   //舵机爪        
    translate([25,30,0])rotate([0,90,90])gear_8();  //轴承
    translate([-25,30,0])rotate([0,90,90])gear_8();  //轴承
    translate([0,0,180])rotate([0,0,0])roller_8();   //光杆 
}
   
//旋转部件
module Rotate(){
    translate([170,0,-118])rotate([90,0,0]){            
       { 
        translate([25,15,0])rotate([0,90,90])cl_50();   //齿轮  
        translate([25,15,35])rotate([0,90,90])cl_20();   //齿轮  
        translate([25,65,35])rotate([0,90,-90])motor_s42();//42减速步进电机
        translate([25,58,75])rotate([0,0,90]) motor_zhijia42p();  //电机平支架
        translate([25,0,0])rotate([0,90,90])gear_8();  //轴承 
        translate([25,-40,0])rotate([0,90,90])gdz_os8();  //固定座 
        }
    }
}
//升降部件
module up_down(){
    translate([0,0,35]){
        translate([0,0,60])rotate([0,0,0])ct20();   //齿轮条
        translate([20,-15,0])rotate([0,0,0]){            
           { 
            translate([0,15,20])rotate([0,90,90])cl_20();   //齿轮  
            translate([0,65,15])rotate([0,90,-90])motor_s42();//42减速步进电机
            translate([0,58,65])rotate([0,0,90]) motor_zhijia42();  //电机支架
            translate([0,0,105]) gdz_os12();    //光轴固定座12  
            }
        }
    }
}
//计算A点：
p0=500;
B0=atan(1);
a=(l1*l1+p0*p0-l2*l2)/(2*p0*cos(B0));
yA1=((2*a*tan(B0)+sqrt((2*a*tan(B0))*(2*a*tan(B0))-4*(1+tan(B0)*tan(B0))*(a*a-l1*l1))))/(2*(1+tan(B0)*tan(B0)));
yA2=((2*a*tan(B0)-sqrt((2*a*tan(B0))*(2*a*tan(B0))-4*(1+tan(B0)*tan(B0))*(a*a-l1*l1))))/(2*(1+tan(B0)*tan(B0)));
xA1=sqrt(l1*l1-yA1*yA1);
xA2=-sqrt(l1*l1-yA1*yA1);
xA3=sqrt(l1*l1-yA2*yA2);
xA4=-sqrt(l1*l1-yA2*yA2);
//a1=atan(yA1/xA1);
//a1=atan(yA1/xA2);
a1=atan(yA2/xA3);
//a1=atan(yA2/xA4);

B0=atan(1);
//计算C点：
b=(l4*l4-l3*l3-l0*l0+p0*p0)/(2*p0*cos(B0));
c=(l0-p0*sin(B0))/p0/cos(B0);
yC1=(-2*(b*c-l0)+sqrt(4*(b*c-l0)*(b*c-l0)-2*((1+c*c)*(b*b+l0*l0-l4*l4))))/(1+c*c);
yC2=(-2*(b*c-l0)-sqrt(4*(b*c-l0)*(b*c-l0)-2*((1+c*c)*(b*b+l0*l0-l4*l4))))/(1+c*c);
xC1=-sqrt(l4*l4-(yC1-l0)*(yC1-l0));
xC2=sqrt(l4*l4-(yC2-l0)*(yC2-l0));
//a4=atan((yC1-l0)/xC1);
a4=atan((yC1-l0)/xC2);
//a4=atan((yC2-l0)/xC1);
//a4=atan((yC2-l0)/xC2);
a2=atan((p0*sin(B0)-l1*sin(a1))/(p0*cos(B0)-l1*cos(a1)));
a3=atan((p0*sin(B0)-l4*sin(a4)-l0)/(p0*cos(B0)-l4*cos(a4)));

h1=270;
h2=305;
h3=235;
h4=200;


//main:

translate([0,0,70])zdbj();   // 转动驱动部分1
translate([0,l0,0])zdbj();   // 转动驱动部分1     
translate([l1/2*cos(a1),l1/2*sin(a1),h1])rotate([0,0,a1])lxc3030_1();   //臂1
translate([l1*cos(a1)+l2/2*cos(a2),l1*sin(a1)+l2/2*sin(a2),h2])rotate([0,0,a2])lxc3030_2();   //臂2
translate([l4*cos(a4)+l3/2*cos(a3),l4*sin(a4)+l3/2*sin(a3)+l0,h3])rotate([0,0,a3])lxc3030_3();   //臂3
translate([l4/2*cos(a4),l4/2*sin(a4)+l0,h4])rotate([0,0,a4])lxc3030_4();   //臂4 
translate([l1*cos(a1),l1*sin(a1),h2])zdxz1();  //转动销轴
translate([l4*cos(a4),l4*sin(a4)+l0,h3])zdxz1();  //转动销轴
translate([0,0,50]){
        translate([l4*cos(a4)+l3/2*cos(a3),l4*sin(a4)+l3/2*sin(a3)+l0,h3])rotate([0,0,a3])Rotate();   //转动部件

    translate([p0*cos(B0),p0*sin(B0),60])rotate([0,0,a3])gzbj();   //工作部件     
    //translate([p0*cos(B0),p0*sin(B0),-40])rotate([0,0,25])gj_max();   //工件   
    translate([p0*cos(B0),p0*sin(B0),-40])rotate([0,0,25])gj_min();   //工件 
}
translate([l1*cos(a1)+l2*cos(a2),l1*sin(a1)+l2*sin(a2),h2])rotate([0,0,90+a2])up_down();  //升降部件







//防水法兰
module fl_8(){
    color("red") translate([0,0,0])rotate([0,0,0])
    cylinder(6,18,18, center=true);
}
//8联轴器
module lzq_8(){
    color("blue") translate([0,0,0])rotate([0,0,0])
    cylinder(30,15,15, center=true);
}

//8光杠
module guanggang_8_70(){
    color("steelblue") rotate([0,0,0])translate([0,0,0])
    cylinder(70,4,4, center=true);
}

//园底座
module dizuo_y8(){
    translate([0,0,0]){
        difference() {
            color("Gray")translate([0,0,0])rotate([0,0,0])
            cylinder(210, 70, 70, center=true); 
            cylinder(210, 67, 67, center=true); 
            color("red")translate([0,0,0])rotate([0,0,0])
            cylinder(210, 67, 67, center=true); 
            color("SteelBlue") translate([-38,0,0])   
            cube([5,100,210],true);
            color("Gray")translate([0,0,-107])rotate([0,0,0])
            cylinder(3, 85, 85, center=true); 
            color("Gray")translate([0,0,107])rotate([0,0,0])
            cylinder(3, 85, 85, center=true); 
        }
    }
}
//驱动部件

module zdbj_8(){
    union(){
        translate([0,0,150])ccx();  //尺寸线
   //     translate([0,0,65])dizuo_y8();  //支座
        motor_s42() ;   //42减速电机
        translate([0,0,-50]) rotate([0,180,180])motor_zhijia42();   //减速电机支架        
        translate([0,0,60]) lzq_8();   //联轴器12
        translate([0,0,100])rotate([0,0,0]) zc_huatao8();  //轴承12    
        translate([0,0,165]) fl_12();      //防水法兰
        translate([0,0,150]) roller_l12();  //转轴
        translate([0,0,105]) gdz_os12();   //光轴固定座1
        translate([0,0,145]) gdz_os12();    //光轴固定座12  
        translate([0,0,170]) tlzc12();    //推力轴承12  
    }
}

//translate([-300,0,0])zdbj_8();






