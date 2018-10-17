translate([0,0,85])
{
//57步进电机1

translate([0,0,63.5])
{
    {
    color("Gray")translate([0,0,0])
    rotate([0,0,0]) cylinder(56,28.5 ,28.5, center=true);
    color("Gray")translate([0,0,37])
    rotate([0,0,0]) cylinder(18, 4, 4, center=true);   
    }
}
//底座
translate([0,0,2.5])
{
    {color("SteelBlue") translate([0,0,88.5])
    cube([100,100,5],true);
    color("SteelBlue") translate([0,0,-85])
    cube([150,100,5],true);
    color("SteelBlue") translate([-52.5,0,0])   
    cube([5,100,175],true);
    color("SteelBlue") translate([52.5,0,0]) 
    cube([5,100,175],true);
    }    
}
//内侧摆臂
rotate([0,0,60])
{
translate([140,0,97.5])
{
    {color("Blue") translate([0,0,5])
    cube([350,40,15],true);
    }    
}

//57步进电机2

{rotate(0,0,0)
translate([300,0,68.5])
    {
    color("Gray")translate([0,0,0])
    rotate([0,0,0]) cylinder(56,28.5 ,28.5, center=true);
    color("Gray")translate([0,0,37])
    rotate([0,0,0]) cylinder(18, 4, 4, center=true); 
    }
}
}
//旋转摆臂（包含工件）
rotate([0,0,-30])
translate([-320,300,0])
{

//外侧摆臂
translate([470,0,112.5])
{
    {color("steelBlue") translate([0,0,5])
    cube([350,40,15],true);
    }    
}

// 竖直移动臂——抓爪
translate([610,0,63.5])
{    
    {
    translate([0,0,110])
    color("Gray")translate([0,0,-50])   //导套
    rotate([0,0,0]) cylinder(40,15 ,15, center=true);
    }
    {
    translate([0,0,80])
    color("steelblue")translate([0,0,-50])   //导杆
    rotate([0,0,0]) cylinder(30,8 ,8, center=true);
    }
 //弹簧
translate([400,115,170])

{
    {
    r=10;
    for(g=[0:1998:1])
        color("yellow") rotate([0,90,90]) translate([0,0,0])     translate([cos(g)*r,sin(g)*r,(g)/100])
        rotate(a=[80,0,g])
        cylinder(1.5,1.5,1.5,center=true,sin=3);
    }
}

    {
    translate([0,0,90])
    color("steelblue")translate([0,0,0])   //57步进电机
    rotate([0,0,0]) cylinder(56,28.5 ,28.5, center=true);
    }
    {
    translate([-50,0,70])
    color("blue")translate([0,0,0])   //42步进电机
    rotate([0,0,0]) cylinder(24,21 ,21, center=true);
    }
    {
    translate([-50,0,40])
    color("yellow")translate([0,0,0])   //升降丝杠
    rotate([0,0,0]) cylinder(50,5 ,5, center=true);
    }
    {
    translate([-50,0,90])
    color("blue")translate([0,0,-60])   //板
    cube([80,30,3],true);
    
    }
    {color("Blue") translate([0,0,5])   //抓爪舵机
    cube([45,30,45],true);
    }
    {color("steelBlue") translate([-75,0,-75])   //左抓爪
    rotate([0,45,0])
    cube([5,70,150],true);
    }
    {color("steelBlue") translate([75,0,-75])   //右抓爪
    rotate([0,-45,0])
    cube([5,70,150],true);
    }
}
}
}
//工件
{
    {color("Blue") translate([610,0,5])   //抓爪舵机
    cube([200,200,10],true);
    
    }
}


//弹簧
translate([400,115,170])
rotate([90,0,0])
{
    {
    r=10;
    for(g=[0:1:1998])
        color("yellow") rotate([0,90,90]) translate([0,0,0])     translate([cos(g)*r,sin(g)*r,(g)/100])
        rotate(a=[80,0,g])
        cylinder(1.5,1.5,1.5,center=true,sin=3);
    }
}
