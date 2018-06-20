%%step input
s = tf('s');
G = 7132.104/(s^3 + 151.32*s^2 + 198*s + 7132.104);
t = 0:0.1:100;
for i=1:length(t)
    x1(i)=1;
end
[y,t] = lsim(G,x1,t);
plot(t,y,t,x1)
title('Uncompensated System -Step input') 
%% ramp input
x2=t;
[y,t] = lsim(G,x2,t);
plot(t,y,t,x2);
title('Uncompensated System -Ramp input')
%% sinusoid input
w = 0.3;
x3 = sin(w*t);
[y,t] = lsim(G,x3,t);
plot(t,y,t,x3);
title('Uncompensated System -Sinusoid input')
%% Parabolic input
x4=0.5*t.^2;
[y,t] = lsim(G,x4,t);
plot(t,y,t,x4);
title('Uncompensated System -Parabolic input')
%% bode 
bode(G)

