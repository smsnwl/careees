
import vc
import RPi.GPIO as GPIO
import time
import sys
import random
import math
from fractions import gcd
#from drivers import *
from qd import *

import RPi.GPIO as GPIO

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
        self.step = Stepper(14,15,18,16,20,21)


        self.forcebackcurve = vc.delaylist(0,50,200)
        self.forcebackcurve += vc.delaylist(50,50,400)
        self.forcebackcurve += vc.delaylist(50,0,200)

    def retracth(self):
        self.stepf.execute(1, self.forcebackcurve, lambda:True)




# def operate_motor(mid, t=0.2):
#     for pinid in mid:
#         GPIO.setup(mto[pinid], GPIO.OUT, initial=0)
#     time.sleep(0.3)

#     for pinid in mid:
#         GPIO.setup(mto[pinid], GPIO.IN)
#     time.sleep(0.3)


# def rotate_by_time(pin_motor, t):
#     GPIO.setup(pin_motor, GPIO.OUT, initial=0)
#     time.sleep(t)
#     GPIO.setup(pin_motor, GPIO.IN)


def a1(p0,B0):
    l0=106;
    l1=338;
    l2=335;
    l3=285;
    l4=282;
    
    a=(l1*l1+p0*p0-l2*l2)/(2*p0*math.cos(B0));
    yA1=((a*math.tan(B0)+math.sqrt((a*math.tan(B0))*(a*math.tan(B0))-(1+math.tan(B0)*math.tan(B0))*(a*a-l1*l1))))/((1+math.tan(B0)*math.tan(B0)));
    yA2=((a*math.tan(B0)-math.sqrt((a*math.tan(B0))*(a*math.tan(B0))-(1+math.tan(B0)*math.tan(B0))*(a*a-l1*l1))))/((1+math.tan(B0)*math.tan(B0)));

    xA1=math.sqrt(l1*l1-yA1*yA1);
    xA2=-math.sqrt(l1*l1-yA1*yA1);
    xA3=math.sqrt(l1*l1-yA2*yA2);
    xA4=-math.sqrt(l1*l1-yA2*yA2);

    a11=math.atan(yA1/xA1);
    a12=math.atan(yA1/xA2);
    a13=math.atan(yA2/xA3);
    a14=math.atan(yA1/xA4);

    print("a11,a12,a13,a14",a11*180/math.pi,a12*180/math.pi,a13*180/math.pi,a14*180/math.pi)
#    if a11 < B0:
    a1=a13
    return a1

def a4(p0,B0):                  
    l0=106;
    l1=338;
    l2=335;
    l3=285;
    l4=282;
   # //计算C点：
    b=(l4*l4-l3*l3-l0*l0+p0*p0)/(2*p0*math.cos(B0));
    c=(l0-p0*math.sin(B0))/p0/math.cos(B0);
    yC1=((l0-b*c)+math.sqrt((b*c-l0)*(b*c-l0)-(1+c*c)*(b*b+l0*l0-l4*l4)))/(1+c*c);
    yC2=((l0-b*c)-math.sqrt((b*c-l0)*(b*c-l0)-(1+c*c)*(b*b+l0*l0-l4*l4)))/(1+c*c);

    xC1=math.sqrt(l4*l4-(yC1-l0)*(yC1-l0));
    xC2=-math.sqrt(l4*l4-(yC1-l0)*(yC1-l0));
    xC3=math.sqrt(l4*l4-(yC2-l0)*(yC2-l0));
    xC4=-math.sqrt(l4*l4-(yC2-l0)*(yC2-l0));
    a41=math.atan((yC1-l0)/xC1);
    a42=-math.atan((yC1-l0)/xC2);
    a43=math.atan((yC2-l0)/xC3);
    a44=math.atan((yC2-l0)/xC4);
    # if a41 >= 0:
    #     pass
    # else:
    #     a41 = math.pi-abs(a41)
    # a2=math.atan((p0*math.sin(B0)-l1*math.sin(a43))/(p0*math.cos(B0)-l1*math.cos(a43)));
    # if a42 >= 0:
    #     pass
    # else:
    #     a42 = math.pi-abs(a42)
    # a3=math.atan((p0*math.sin(B0)-l4*math.sin(a43)-l0)/(p0*math.cos(B0)-l4*math.cos(a43)));
    # if a43 >= 0:
    #     pass
    # else:
    #     a43 = math.pi-abs(a44)
    # if a44 >= 0:
    #     pass
    # else:
    #     a44 = math.pi-abs(a44)
#    if l1+l2 >=p0 >=l0+60 and 210*math.pi/180 >= B0 >= -30*math.pi/180:
    print("a41,a42,a43,a44",a41*180/math.pi,a42*180/math.pi,a43*180/math.pi,a44*180/math.pi)
    a4 = a41        
    return a4
    
class Relay():
    def __init__(self, pin, init=0):
        self.pin = pin
        GPIO.setup(pin, GPIO.OUT, initial=init)

    def trigger(self,signal):
        GPIO.output(self.pin, signal)

        self.magnethook0.trigger()
class Servo():
    def __init__(self, pin):
        GPIO.setup(pin,GPIO.OUT)
        self.pwm = GPIO.PWM(pin, 50)
    def start(self, d):
        self.pwm.start(d)
    def change(self, d):
        self.pwm.ChangeDutyCycle(d)
    def stop(self):
        self.pwm.stop()


if __name__=='__main__':
    Ro = Robot()

    GPIO.setmode(GPIO.BCM)

    for i in range (1):
    #     ns1 =250
    #     ns2 =100
    #     Ro.step.rotate(0, ns1, 1, ns2)
    #     time.sleep(1)
    #     Ro.step.rotate(1,ns1, 0,ns2)

    #     time.sleep(1)

    #     GPIO.setmode(GPIO.BCM)
    #     tw = (23)
    #     GPIO.setup(tw,GPIO.OUT)
    #     tr = Servo(23)
    #     #   tz = Servo(24)
        
    #     tr.start(8)
    #     time.sleep(1)
    #     tr.start(5)
    #     time.sleep(1)
    #     tr.start(8)
    #     time.sleep(1)

        # ns =100
        # Ro.stepf.rotate(0,ns)
        # Ro.stepb.rotate(1,ns)
        # time.sleep(1)
        # Ro.stepf.rotate(1,ns)
        # Ro.stepb.rotate(0,ns)
        # time.sleep(1)

        GPIO.setmode(GPIO.BCM)
        tw = (23)
        GPIO.setup(tw,GPIO.OUT)
        tr = Servo(23)
        #   tz = Servo(24)
        
        tr.start(8)
        # time.sleep(1)
        # tr.start(5)
        # time.sleep(1)
        # tr.start(8)
        # time.sleep(1)
        



    GPIO.setmode(GPIO.BCM)
    p0 = 400
    B0 = math.atan(1.73205)
    a10 = a1(p0,B0,)
    a40 = a4(p0,B0)
    print("p0=",p0,"B0=",(B0*180/math.pi))
    print("a10=",(a10*180/math.pi),"a40=",(a40*180/math.pi))

    print("P1,B1")
    p0 = 400
    B0 = math.atan(0)

    a11 = a1(p0,B0)
    a41 = math.pi-a4(p0,B0)

    print("p1=",p0,"B1=",(B0*180/math.pi))
    print("a11=",(a11*180/math.pi),"a41=",(a41*180/math.pi))

    da1 = (a11 -a10)*180/math.pi
    da4 = (a41- a40)*180/math.pi
    print("da1:",round(da1*100)/100,"da4:",round(da4*100)/100)
    
    if da1 >=0 :
        da = 0
    else:
        da = 1
    if da4 >=0 :
        db = 0
    else:
        db = 1

    step_da1 = round(3200*da1/360)
    step_da4 = round(3200*da4/360)                     
    print("step_da1",step_da1,"step_da4",step_da4)
    Ro.step.rotate(da, abs(step_da1), db, abs(step_da4))
    time.sleep(1)



    tr.start(8)
    time.sleep(1)
    tr.start(5)
    time.sleep(1)
    tr.start(8)
    time.sleep(1)
    
    
    GPIO.cleanup()
