clear


% reference trajectory tuning
a = 4;
w = 0.1;

% initial position
x0 = a;
y0 = 0;
theta0 = pi/2;
Kp = 7 ; %7 ; % 1-10
d = 0.03 ; %0.07; % small
Kx = 30 ;
Ky = 30 ;
K_theta = 1 ;

t = sim('bicycle_sim31',6*pi/w);

close all
figure(1)
hold on
ax = gca;
ax.ColorOrderIndex = 1;
plot(xy_ref(:,1), xy_ref(:,2), xy(:,1), xy(:,2))
legend('Desired', 'Actual')
axis square

 figure(2)
subplot(2,1,1)
plot(t, error)
legend('x-error', 'y-error')
xlabel('Time [s]')
ylabel('Error [m]')


subplot(2,1,2)
plot(t, 180/pi*omega_beta)
legend('velocity [deg/s]', 'orientation [deg]')
xlabel('Time [s]')
ylabel('Wheel controls')