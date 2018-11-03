from drivers import *
import RPi.GPIO as GPIO
import math

class clamp:
    def __init__(self, pin, delay=0.2):
        GPIO.setup(pin, GPIO.OUT, initial = 1)
        self.pin = pin
        self.delay = delay

    def clamp(self):
        GPIO.output(self.pin, 0)
        time.sleep(0.2)
        GPIO.output(self.pin, 1)
        time.sleep(0.2)
        GPIO.output(self.pin, 0)
                
class clampGroup:
    def __init__(self, pins, delay = 0.5):
        GPIO.setup(pins, GPIO.OUT, initial = 1)
        self.pins = pins
        self.delay = delay

    def clamp(self, lst = []):
        for (ex, pin) in zip(lst, self.pins):
            if ex:
                GPIO.output(pin, 0)

        time.sleep(self.delay)
        for (ex, pin) in zip(lst, self.pins):
            if ex:
                GPIO.output(pin, 1)
        time.sleep(self.delay)
                            
class Robot:
    def __init__(self):
        GPIO.setmode(GPIO.BCM)
        self.stepf = Stepper(14,15,18)
        self.stepb = Stepper(25,8,7)
    
def operate_motor(mid, t=0.2):
    for pinid in mid:
        GPIO.setup(mto[pinid], GPIO.OUT, initial=0)
    time.sleep(0.3)

    for pinid in mid:
        GPIO.setup(mto[pinid], GPIO.IN)
    time.sleep(0.3)


def rotate_by_time(pin_motor, t):
    GPIO.setup(pin_motor, GPIO.OUT, initial=0)
    time.sleep(t)
    GPIO.setup(pin_motor, GPIO.IN)


def a1(p0,B0):
    l0=106;
    l1=338;
    l2=335;
    l3=285;
    l4=282;
    
    a=(l1*l1+p0*p0-l2*l2)/(2*p0*math.cos(B0));
    yA1=((2*a*math.tan(B0)+math.sqrt((2*a*math.tan(B0))*(2*a*math.tan(B0))-4*(1+math.tan(B0)*math.tan(B0))*(a*a-l1*l1))))/(2*(1+math.tan(B0)*math.tan(B0)));
    yA2=((2*a*math.tan(B0)-math.sqrt((2*a*math.tan(B0))*(2*a*math.tan(B0))-4*(1+math.tan(B0)*math.tan(B0))*(a*a-l1*l1))))/(2*(1+math.tan(B0)*math.tan(B0)));
    xA1=math.sqrt(l1*l1-yA1*yA1);
    xA2=-math.sqrt(l1*l1-yA1*yA1);
    xA3=math.sqrt(l1*l1-yA2*yA2);
    xA4=-math.sqrt(l1*l1-yA2*yA2);

    a1=math.atan(yA1/xA1);

   # //计算C点：
    b=(l4*l4-l3*l3-l0*l0+p0*p0)/(2*p0*math.cos(B0));
    c=(l0-p0*math.sin(B0))/p0/math.cos(B0);
    yC1=(-2*(b*c-l0)+math.sqrt(4*(b*c-l0)*(b*c-l0)-2*((1+c*c)*(b*b+l0*l0-l4*l4))))/(1+c*c);
    yC2=(-2*(b*c-l0)-math.sqrt(4*(b*c-l0)*(b*c-l0)-2*((1+c*c)*(b*b+l0*l0-l4*l4))))/(1+c*c);
    xA1=math.sqrt(l1*l1-yA1*yA1);
    xA2=-math.sqrt(l1*l1-yA1*yA1);
    xA3=math.sqrt(l1*l1-yA2*yA2);
    xA4=-math.sqrt(l1*l1-yA2*yA2);
    # a1=atan(yA1/xA1);
    #a1=atan(yA1/xA2);
    a1=math.atan(yA2/xA3);
    #a1=atan(yA2/xA4);

    if l1+l2 >=p0 >=l0+60 and 210*math.pi/180 >= B0 >= -30*math.pi/180:
        return math.atan(yA1/xA1);
def a4(p0,B0):
    l0=106;
    l1=338;
    l2=335;
    l3=285;
    l4=282;
    
    a=(l1*l1+p0*p0-l2*l2)/(2*p0*math.cos(B0));
    yA=((2*a*math.tan(B0)+math.sqrt((2*a*math.tan(B0))*(2*a*math.tan(B0))-4*(1+math.tan(B0)*math.tan(B0))*(a*a-l1*l1))))/(2*(1+math.tan(B0)*math.tan(B0)));
#    yA=((2*a*math.tan(B0)-math.sqrt((2*a*math.tan(B0))*(2*a*math.tan(B0))-4*(1+math.tan(B0)*math.tan(B0))*(a*a-l1*l1))))/(2*(1+math.tan(B0)*math.tan(B0)));
    xA=math.sqrt(l1*l1-yA*yA);
    # xA=-math.sqrt(l1*l1-yA*yA);
    # xA=math.sqrt(l1*l1-yA*yA);
    # xA=-math.sqrt(l1*l1-yA*yA);

    a1=math.atan(yA/xA);

#    B0=math.atan(1);
   # //计算C点：
    b=(l4*l4-l3*l3-l0*l0+p0*p0)/(2*p0*math.cos(B0));
    c=(l0-p0*math.sin(B0))/p0/math.cos(B0);
    yC1=(-2*(b*c-l0)+math.sqrt(4*(b*c-l0)*(b*c-l0)-2*((1+c*c)*(b*b+l0*l0-l4*l4))))/(1+c*c);
    yC2=(-2*(b*c-l0)-math.sqrt(4*(b*c-l0)*(b*c-l0)-2*((1+c*c)*(b*b+l0*l0-l4*l4))))/(1+c*c);
    xC1=math.sqrt(l4*l4-(yC2-l0)*(yC2-l0));
#    xC2=-math.sqrt(l4*l4-(yC1-l0)*(yC1-l0));
#    xC3=math.sqrt(l4*l4-(yC2-l0)*(yC2-l0));
#    xC4=-math.sqrt(l4*l4-(yC2-l0)*(yC2-l0));
    #//a4=atan((yC1-l0)/xC1);
    a4=math.atan((yC1-l0)/xC1);
    #//a4=atan((yC2-l0)/xC1);
    #//a4=atan((yC2-l0)/xC2);


    a2=math.atan((p0*math.sin(B0)-l1*math.sin(a1))/(p0*math.cos(B0)-l1*math.cos(a1)));
    a3=math.atan((p0*math.sin(B0)-l4*math.sin(a4)-l0)/(p0*math.cos(B0)-l4*math.cos(a4)));

    if l1+l2 >=p0 >=l0+60 and 210*math.pi/180 >= B0 >= -30*math.pi/180:
        return math.atan((yC1-l0)/xC1);
    
class Relay():
    def __init__(self, pin, init=0):
        self.pin = pin
        GPIO.setup(pin, GPIO.OUT, initial=init)

    def trigger(self,signal):
        GPIO.output(self.pin, signal)

        self.magnethook0.trigger()

if __name__=='__main__':

    GPIO.setmode(GPIO.BCM)
    p0 = 400
    B0 = math.atan(1)
    a10 = a1(p0,B0,)
    a40 = a4(p0,B0)
    print("p0=",p0,"B0=",(B0*180/math.pi))
    print("a10=",(a10*180/math.pi),"a40=",(a40*180/math.pi))

    print("P1,B1")
    p0 = 600
    B0 = math.atan(1)
    a11 = a1(p0,B0)
    a41 = a4(p0,B0)
    print("p1=",p0,"B1=",(B0*180/math.pi))
    print("a11=",(a11*180/math.pi),"a41=",(a41*180/math.pi))

    da1 = (a11 -a10)*180/math.pi
    da4 = (a41- a40)*180/math.pi
    print("da1:",round(da1*100)/100,"da1:",round(da4*100)/100)
    
    if da1 >=0 :
        da = 0
    else:
        da = 1
    if da4 >=0 :
        db = 0
    else:
        db = 1
                        
    Ro = Robot()
    step_da1 = round(400*da1/360)
    step_da4 = round(400*da4/360)                     
    print("step_da1",step_da1,"step_da4",step_da4)
    Ro.stepf.rotate(da,abs(da4))
    Ro.stepb.rotate(db,abs(da1))
        
    GPIO.cleanup()
