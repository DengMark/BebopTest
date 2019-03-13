# Bebop_test
Using Simulink model and ROS to control target vehicles (like Bebop quadrotors). The model subscribes the ROS topic including the pose information of the vehicles and finally publishes the control commands in ROS topics. 

System demands:

  Ubuntu 16.04
  
  ROS kinetic
 
  MATLAB R2017b
  
1. Install ROS driver  Parrot Bebop drone 
   
   https://github.com/AutonomyLab/bebop_autonomy
   
2. Modify the bebop IP to connect multiple bebops

   https://github.com/guozhenglong/multiple_bebops

3. In MATLAB, run start.m and choose different Simulink model according to your neccessary.

Note: The GUI is to control the Bebop to takeoff and land, only once each time. The GUI is suitable for four vehicles, you can modify the ardrone_control.fig and ardrone_control.m files to add more vehicles and more functions.

        ![image](https://github.com/DengMark/Bebop_test/master/GUI.png)
      
