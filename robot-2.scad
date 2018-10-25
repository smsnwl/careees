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
    color("red") 
    translate([0,0,0])cylinder(24,21 ,21, center=true);
    color("red") 
    translate([0,0,20])cylinder(16,3 ,3, center=true);
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
module zc_huatao8(){
    translate([0,5,0])rotate([0,0,0]){
        translate([0,0,0]){
            color("lime") rotate([0,0,0])translate([0,0,15])
            cylinder(24,9,9, center=true);
            color("lime") rotate([0,0,0])translate([0,0,0])
            cylinder(6,15,15, center=true);
            color("red") rotate([0,0,0])translate([0,0,12])
            cylinder(30,4,4, center=true);
        }        
        color("SteelBlue") translate([0,0,12]) 
        cube([30,34,30],true);
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

//密封过渡轴
module roller_l12(){
    color("Gray") translate([0,0,0])rotate([180,0,0])
    cylinder(180,6 ,6, center=true);
}
//卧式光杠固定座        
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

//铝型材30303
module lxc3030(){
    color("blue") translate([0,0,0])rotate([0,0,0])
    cube([500,30,30],true);
}
//12光杠
module guanggang_12(){
    translate([0,0,0]){
        color("steelblue") rotate([0,90,0])translate([0,0,6])
        cylinder(650,6,6, center=true);
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
    color("Blue") translate([0,0,5])  
    cube([45,30,45],true);
}

//左抓爪
module djz(){
    color("steelBlue") translate([-75,0,-75])
    rotate([0,45,0])
    cube([5,70,150],true);
}
//齿轮
module cl_60(){
    color("steelblue") rotate([0,0,0])translate([0,0,0])
    cylinder(15,40,40, center=true);
}
//小齿轮
module cl_16(){
    color("blue") rotate([0,0,0])translate([0,0,0])
    cylinder(15,8,8, center=true);
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
//升降电机连接板
module sjljb(){
    union() {
        color("steelBlue") 
        translate([0,0,75])cube([3,42,45],true);
        translate([0,0,30])cube([3,15,50],true);
        translate([-5,0,5])cube([12,15,3],true);
        translate([-10,0,-20])cube([3,15,50],true);
    }
}

//translate([-150,0,0])sjljb();
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
//translate([-200,0,0])tlzc8();

//转动部件

module zdbj(){
    union(){
        translate([0,0,150])ccx();  //尺寸线
        translate([0,0,65])dizuo_y();  //支座
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
//中间转动部件

module zdbj1(){
    union(){
        translate([0,0,150])ccx();  //尺寸线
        translate([0,0,50]){  
            translate([0,0,105]) gdz_os12();   //光轴固定座12
            translate([0,0,145]) gdz_os12();    //光轴固定座12  
            translate([0,0,170]) tlzc12();    //推力轴承12  
        }        
        translate([0,0,15]){
            translate([0,0,65])dizuo_y();  //支座
            motor_s57() ;   //57减速电机
            translate([0,0,100]) motor_zhijia57();   //减速电机支架        
            translate([0,0,100]) lzq_12();   //联轴器12
            translate([0,0,155])rotate([0,180,0]) zc_huatao12();  //轴承12    
            translate([0,0,165]) fl_12();      //防水法兰
            scale([1,1,1.2])translate([0,0,150]) roller_l12();  //转轴
        }        

    }
}

 //工作部件

module gzbj(){
    translate([0,0,37]){
        translate([20,0,0])rotate([0,0,0])ljb();   // 连接板
        translate([125,0,-120])scale([1,1,1]){
            translate([0,0,60])scale([1.2,1.2,1])rotate([0,0,0])zc_huatao12();   //   滑套轴承12（上）       
            translate([0,0,48])scale([1.25,1.25,1])rotate([0,180,0])zc_huatao12();   //   滑套轴承12（下） 
            translate([0,0,56])tlzc12();  //推力轴承12
            translate([0,0,65])scale([1.25,1.25,1])rotate([0,180,0])roller_l12();   //   带键轴   
            translate([0,0,75])rotate([0,0,0])cl_60();  //齿轮                        
            translate([-35,-30,115])rotate([0,180,0])motor_s42();   //42旋转电机
            translate([-35,-30,75])rotate([0,0,0])cl_16();    //小齿轮
                //升降模块
            translate([0,0,200])rotate([0,0,0]){
                rotate([0,0,0])translate([25,0,-70])sjljb();  //升降连接板
                translate([0,0,0])rotate([0,0,0])motor_42();   //42提升电机
                translate([0,0,-100])rotate([0,0,0])sg();   //丝杠
                translate([0,10,25])rotate([0,-90,90]) scale([0.6,0.6,0.6])gdz_ls12();   //固定轴承座
                translate([0,-0,-50])rotate([0,0,0]) lm();  // 螺母
                translate([0,0,20])rotate([0,0,0]) scale([0.5,0.5,0.5])lzq_12();  // 联轴器
            }
            translate([0,0,-50])rotate([0,0,0]){
                translate([0,0,0])rotate([0,0,0])dj();   //舵机
                translate([0,0,0])rotate([0,0,0])djz();   //舵机爪(左)        
                translate([0,0,0])rotate([0,-90,0])djz();   //舵机爪（右）  
          //      translate([120,-75,-170])rotate([0,-45,0])djz();   //舵机爪（min)         
            }
        }
    }
}    


a=0;
b=0;
//main:
translate([0,0,])zdbj();   // 摆臂
rotate([0,0,a]){
    translate([180,0,200])lxc3030();   //铝型材3030   
    translate([350,0,0])zdbj1(); // 中间转动驱动
//    translate([420,0,250]);
  {translate([425,0,250])scale([0.45,1,1])lxc3030()
    rotate([0,0,b]);
                 //铝型材3030 
    }
    translate([600,0,150])ccx();  //尺寸线         
    translate([475,0,265])gzbj();   //工作部件     
    translate([600,0,-45])rotate([0,0,0])gj_max();   //工件   
    translate([600,0,-50])rotate([0,0,0])gj_min();   //工件                    
}
//工件区域
{
color("DarkViolet") translate([380,0,-45]) 
cube([500,500,2],true);
}
//  "0“地面
{
color("yellow") translate([0,0,-45]) 
cylinder(1,700,700, center=true);
}

