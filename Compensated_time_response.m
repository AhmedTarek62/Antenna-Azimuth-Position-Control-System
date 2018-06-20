%%step input
s = tf('s');
G =((1434.053*(s+2)*(s+0.01))/(s*(s+150)*(s+1.32)*(s+3.708)*(s+0.001)+1434.053*(s+2)*(s+0.01)));
t = 0:0.1:100;
for i=1:length(t)
    x1(i)=1;
end
[y,t] = lsim(G,x1,t);
plot(t,y,t,x1)
title('Compensated System -Step input') 
%% ramp input
x2=t;
[y,t] = lsim(G,x2,t);
plot(t,y,t,x2);
title('Compensated System -Ramp input')
%% sinusoid input
w = 0.3;
u = sin(w*t);
[y,t] = lsim(G,u,t);
plot(t,y,t,u);
title('Compensated System -Sinusoid input')
%% Parabolic input
x4=0.5*t.^2;
[y,t] = lsim(G,x4,t);
plot(t,y,t,x4);
title('Compensated System -Parabolic input')
%% Bode
bode(G)