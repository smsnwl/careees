//底座
translate([0,0,85])
{translate([0,0,2.5])
    {
    color("SteelBlue") translate([0,0,88.5])
    cube([100,100,5],true);
    color("SteelBlue") translate([0,0,-85])
    cube([150,100,5],true);
    color("SteelBlue") translate([-52.5,0,0])   
    cube([5,100,175],true);
    color("SteelBlue") translate([52.5,0,0]) 
    cube([5,100,175],true);
    }
}    
//57步进电机1
translate([0,0,143.5])
{
    color("Gray") rotate([0,0,0])
    cylinder(56,28.5 ,28.5, center=true);
    color("Gray")translate([0,0,37])rotate([0,0,0])
    cylinder(18, 4, 4, center=true);   
}   
//悬臂部分

//{整体平移
    translate([0,0,85])
//  {整体旋转
//    rotate([0,0,30])
//    rotate([0,0,45])
    rotate([0,0,0])
        {
        //摆臂
        translate([140,0,97.5])
            {color("Blue") translate([150,0,5])
            cube([650,40,15],true);
            }    
       
        //旋转摆臂（包含工件）
        //平移
        translate([430,0,0])
        //旋转
        {
        rotate([0,0,0])
            {
            // 竖直移动臂——抓爪
            translate([100,0,63.5])
            {    
                //导套
                {
                translate([0,0,110])
                color("Gray")translate([0,0,-50])   
                rotate([0,0,0]) cylinder(40,15 ,15, center=true);
                }
                //导杆
                {
                translate([0,0,80])
                color("steelblue")translate([0,0,-50]) 
                rotate([0,0,0]) cylinder(30,4 ,4, center=true);
                }
                //弹簧
                translate([0,0,25])
                {
                r=5;
                for(g=[0:1:1889])
                color("yellow") rotate([0,0,0]) translate([0,0,0])     translate([cos(g)*r,sin(g)*r,(g)/100])
                rotate(a=[80,0,g])
                cylinder(1.5,1.5,1.5,center=true,sin=3);
                }
                //57步进电机
                {
                translate([0,0,90])
                color("steelblue")translate([0,0,0])  
                rotate([0,0,0]) cylinder(56,28.5 ,28.5, center=true);
                }
                //42步进电机
                {
                translate([-50,0,74])
                color("blue")translate([0,0,0])   
                rotate([0,0,0]) cylinder(24,21 ,21, center=true);
                }
                //升降丝杠
                {
                translate([-50,0,40])
                color("yellow")translate([0,0,0]) 
                rotate([0,0,0]) cylinder(50,5 ,5, center=true);
                }
                //升降导杠
                {
                translate([-50,30,40])
                color("Lime")translate([0,0,0]) 
                rotate([0,0,0]) cylinder(50,5 ,5, center=true);
                }
                //板
                {
                translate([-30,0,90])
                color("steelblue")translate([0,0,-60])  
                cube([60,80,3],true);
                }
        
                //抓取旋转部分
                //旋转
                //rotate([0,0,15])
                //rotate([0,0,0])
                rotate([0,0,0])
                
                {
                     //抓爪舵机
                    {
                    color("Blue") translate([0,0,5])  
                    cube([45,30,45],true);
                    }
                    //左抓爪
                    {
                    color("steelBlue") translate([-75,0,-75])
                    rotate([0,45,0])
                    cube([5,70,150],true);
                    }
                    //右抓爪
                    {color("steelBlue") translate([75,0,-75])  
                    rotate([0,-45,0])
                    cube([5,70,150],true);
                    }
                    //工件
                    {
                    color("Blue") translate([0,0,-125]) 
                    cube([200,200,10],true);
                    }
                }
            }
        }     
    }
}

//工件区域
{
color("DarkViolet") translate([380,0,-2.5]) 
cube([500,500,5],true);
}