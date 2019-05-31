clc;
clear all;
close all;

% obj= System.Speech.Synthesis.SpeechSynthesizer;
% obj.Volume=100;

a=arduino('com10','uno');

x=1;
while x>0

writeDigitalPin(a,'D8',1);    

F1= readVoltage(a,'A0');
F2= readVoltage(a,'A1');
F3= readVoltage(a,'A2');
F4= readVoltage(a,'A3');

 if (F1>=1.3 && F2>=1.3 && F3>=1.3 && F4>=1.3)
     disp('-');
 end
 
 if (F1<=0.9 && F2>=1.3 && F3>=1.3 && F4>=1.3)
     tts('I want water');
     pause(0.05);
 end
 
 if (F1>=1.3 && F2<=0.9 && F3>=1.3 && F4>=1.3)
     tts('I want my medicine');
     pause(0.05);
 end
 
 if (F1>=1.3 && F2>=1.3 && F3<=0.9 && F4>=1.3)
     tts('Switch on the light');
     pause(0.05);
 end
 
 if (F1>=1.3 && F2>=1.3 && F3>=1.3 && F4<=0.9)
     tts('Switch on the fan');
     pause(0.05);
 end
 
 if (F1<=0.9 && F2<=0.9 && F3>=1.3 && F4>=1.3)
     tts('I want food');
     pause(0.05);
 end
 
 if (F1<=0.9 && F2>=1.3 && F3<=0.9 && F4>=1.3)
     tts('Give me my car keys');
     pause(0.05);
 end
 
 if (F1<=0.9 && F2>=1.3 && F3>=1.3 && F4<=0.9)
     tts('Hello');
     pause(0.05);
 end
 
 if (F1>=1.3 && F2<=0.9 && F3<=0.9 && F4>=1.3)
     tts('Goodbye');
     pause(0.05);
 end
 
 if (F1>=1.3 && F2<=0.9 && F3>=1.3 && F4<=0.9)
     tts('Please hand me a pen');
     pause(0.05);
 end
 
 if (F1>=1.3 && F3<=0.9 && F2>=1.3 && F4<=0.9)
     tts('Thank you');
     pause(0.05);
 end
 
 
 if (F1>=1.3 && F2<=0.9 && F3>=1.3 && F4<=0.9)
     tts('Goodbye');
     pause(0.05);
 end
 
 if (F1<=0.9 && F2<=0.9 && F4>=1.3 && F3<=0.9)
     tts('I love cricket!');
     pause(0.05);
 end
 
 if (F2<=0.9 && F3<=0.9 && F1>=1.3 && F4<=0.9)
     tts('Happy Birthday!');
     pause(0.05);
 end
 
 if (F1<=0.9 && F3<=0.9 && F2>=1.3 && F4<=0.9)
     tts('What is the time?');
     pause(0.05);
 end
 
 if (F1<=0.9 && F2<=0.9 && F3>=1.3 && F4<=0.9)
     tts('What is your name?');
     pause(0.05);
 end
 
 if (F1<=0.9 && F3<=0.9 && F2<=0.9 && F4<=0.9)
     tts('This is the work of team Polaris!');
     pause(0.05);
 end
end