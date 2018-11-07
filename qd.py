import RPi.GPIO as GPIO
import time


class Button():
    def __init__(self, pin):
        self.pin = pin
        GPIO.setup(pin, GPIO.IN)

    def waitforpress(self):
        GPIO.wait_for_edge(self.pin, GPIO.FALLING)
        
    def getinput(self):
        return GPIO.input(self.pin)

class InfraredPair():
    def __init__(self, pin):
        self.pin = pin
        GPIO.setup(pin, GPIO.IN, pull_up_down=GPIO.PUD_UP)

    def waitforpress(self):
        GPIO.wait_for_edge(self.pin, GPIO.FALLING)
        
    def getinput(self):
        return GPIO.input(self.pin)

    def getneginput(self):
        return (not GPIO.input(self.pin))

class Relay():
    def __init__(self, pin, init=0):
        self.pin = pin
        GPIO.setup(pin, GPIO.OUT, initial=init)

    def trigger(self,signal):
        GPIO.output(self.pin, signal)
        

class Stepper():
    def __init__(self, pen1, pdr1, ppl1, pen2, pdr2, ppl2):
        self.pen1 = pen1
        self.pdr1 = pdr1
        self.ppl1 = ppl1
        self.pen2 = pen2
        self.pdr2 = pdr2
        self.ppl2 = ppl2
        GPIO.setup([pen1,pdr1,ppl1,pen2,pdr2,ppl2,], GPIO.OUT, initial=0)

    def enable(self):
        GPIO.output(self.pen1, 0)
        GPIO.output(self.pen2, 0)

    def disable(self):
        GPIO.output(self.pen1, 1)
        GPIO.output(self.pen1, 1)

    def step(self, d):
        GPIO.output(self.pdr1,d1,pdr2,d2)
        GPIO.output(self.ppl1,1,ppl2,1)
        GPIO.output(self.ppl1,0,ppl2,0)
        GPIO.output(self.pdr1,d1,pdr2,d2)
        GPIO.output(self.ppl1,1,ppl2,1)
        GPIO.output(self.ppl1,0,ppl2,0)
                
    def rotate(self, d1, nstep1, d2, nstep2, cond=lambda:True):
        self.enable()
        GPIO.output(self.pdr1, d1)
        GPIO.output(self.pdr2, d2)
        i = 0;
        while i<nstep1 and cond():
#            tau = 0.002
            tau = 0.025
            GPIO.output(self.ppl1,1)
            GPIO.output(self.ppl2,1)
            time.sleep(tau/2)
            GPIO.output(self.ppl1,0)
            GPIO.output(self.ppl2,0)
            time.sleep(tau/2)
            i = i + 1
        return i

    # def execute(self, d, l):
    #     GPIO.output(self.pdr, d)
    #     for i in range(len(l)):
    #         GPIO.output(self.ppl, 1)
    #         GPIO.output(self.ppl, 0)
    #         time.sleep(l[i])

    # def execute(self, d, l, cond):
    #     GPIO.output(self.pdr, d)
    #     i = 0
    #     while i < len(l) and cond():
    #         GPIO.output(self.ppl, 1)
    #         GPIO.output(self.ppl, 0)
    #         time.sleep(l[i])
    #         i = i + 1
    #     return i
            
# Simple DC motor with two relays
class SDCM():
    def __init__(self, pina, pinb):
        GPIO.setup([pina, pinb], GPIO.OUT, initial=0)
        self.ma = Relay(pina)
        self.mb = Relay(pinb)
        
    def rotate(self, direction):
        self.ma.trigger(not(direction))
        self.mb.trigger(direction)

    def stop(self):
        self.ma.trigger(0)
        self.mb.trigger(0)
    
# L298 motor driver
class L298():
    def __init__(self, ppwma, ppwmb, f):
        GPIO.setup([ppwma,ppwmb], GPIO.OUT, initial=0)
        self.pwma = GPIO.PWM(ppwma, f)
        self.pwmb = GPIO.PWM(ppwmb, f)
        
    def start(self, cyclea, cycleb):
        self.pwma.start(cyclea)
        self.pwmb.start(cycleb)
        
    def change(self, cyclea, cycleb):
        self.pwma.ChangeDutyCycle(cyclea)
        self.pwmb.ChangeDutyCycle(cycleb)

    def stop(self):
        self.pwma.stop()
        self.pwmb.stop()

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
        


        
