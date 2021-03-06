function new_state = euler_integration_fun(theta_ddot,phi_ddot,x_ddot,state,dt)
%EULER_INTEGRATION Summary of this function goes here
%   Detailed explanation goes here
x_dot = state(2) + x_ddot*dt;
x = state(1) + x_dot*dt;
x = 0;
x_dot = 0;
theta_dot = state(4) + theta_ddot*dt;
theta = state(3) + theta_dot*dt;
phi_dot = state(6) + phi_ddot*dt;
phi = state(5) + phi_dot*dt;
new_state = [x x_dot theta theta_dot phi phi_dot];
end

