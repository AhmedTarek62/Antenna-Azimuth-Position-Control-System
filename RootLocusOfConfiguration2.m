%% Plot of the root locus of Configuration 2
Configuration2 = tf([76.32],[1 151.32 198 0]);
% rlocus(Configuration2);
%% Plot of the root locus with the damping ratio line
hold on
rlocus(Configuration2);
syms t;
fplot(-1.4016*t);