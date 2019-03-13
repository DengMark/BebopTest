%%%%%%%%%%%%%%%%%%%%%%%%
%  cleaning workspace
clear all;
close all;
clc;

%% Initialize the ROS environment
try
rosinit; 
end

%% Determine the sample time
sampleTime = 1/50;

%% Choose the flight mode, uncomment only one each time
singleBebop_circle %flying circle or ellipse trajectory using one bebop
%singleBebop_p2p   %flying waypoint to waypoint using one bebop
%twoBebop_circle   %flying circle or ellipse trajectory using two bebops
%threeBebop_circle %flying circle or ellipse trajectory using three bebops
%fourBebop_circle  %flying circle or ellipse trajectory using four bebops

%% Open the GUI 
ardrone_control;