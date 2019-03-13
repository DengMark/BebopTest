function varargout = ardrone_control(varargin)
% ARDRONE_CONTROL MATLAB code for ardrone_control.fig
%      ARDRONE_CONTROL, by itself, creates a new ARDRONE_CONTROL or raises the existing
%      singleton*.
%
%      H = ARDRONE_CONTROL returns the handle to a new ARDRONE_CONTROL or the handle to
%      the existing singleton*.
%
%      ARDRONE_CONTROL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ARDRONE_CONTROL.M with the given input arguments.
%
%      ARDRONE_CONTROL('Property','Value',...) creates a new ARDRONE_CONTROL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ardrone_control_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ardrone_control_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ardrone_control

% Last Modified by GUIDE v2.5 25-Jan-2019 11:02:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ardrone_control_OpeningFcn, ...
                   'gui_OutputFcn',  @ardrone_control_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before ardrone_control is made visible.
function ardrone_control_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ardrone_control (see VARARGIN)

% Choose default command line output for ardrone_control
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ardrone_control wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ardrone_control_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
takeoff1 = rospublisher('/bebop1/takeoff','std_msgs/Empty');
takeoff2 = rospublisher('/bebop2/takeoff','std_msgs/Empty');
takeoff3 = rospublisher('/bebop3/takeoff','std_msgs/Empty');
takeoff4 = rospublisher('/bebop4/takeoff','std_msgs/Empty');
msg = rosmessage(takeoff1);
send(takeoff1,msg);
send(takeoff2,msg);
send(takeoff3,msg);
send(takeoff4,msg);
pause(1);
clear takeoff1 takeoff2 takeoff3 takeoff4;
disp('Takeoff All!')


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
land1 = rospublisher('/bebop1/land','std_msgs/Empty');
land2 = rospublisher('/bebop2/land','std_msgs/Empty');
land3 = rospublisher('/bebop3/land','std_msgs/Empty');
land4 = rospublisher('/bebop4/land','std_msgs/Empty');
msg = rosmessage(land1);
send(land1,msg);
send(land2,msg);
send(land3,msg);
send(land4,msg);
pause(1);
clear land1 land2 land3 land4;
disp('Landing All!')


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
disp('Emergency!!!');
reset1 = rospublisher('/bebop1/reset','std_msgs/Empty');
reset2 = rospublisher('/bebop2/reset','std_msgs/Empty');
reset3 = rospublisher('/bebop3/reset','std_msgs/Empty');
reset4 = rospublisher('/bebop4/reset','std_msgs/Empty');
msg = rosmessage(reset1);
send(reset1,msg);
send(reset2,msg);
send(reset3,msg);
send(reset4,msg);
pause(1);
clear reset1 reset2 reset3 reset4;


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
takeoff1 = rospublisher('/bebop1/takeoff','std_msgs/Empty');
msg = rosmessage(takeoff1);
send(takeoff1,msg);
pause(1);
clear takeoff1;
disp('Takeoff Drone 1!')


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
land1 = rospublisher('/bebop1/land','std_msgs/Empty');
msg = rosmessage(land1);
send(land1,msg);
pause(1);
clear land1;
disp('Landing Drone 1!')


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
reset1 = rospublisher('/bebop1/reset','std_msgs/Empty');
msg = rosmessage(reset1);
send(reset1,msg);
pause(1);
clear reset1;
disp('Drone 1 Emergency and Reset!!!');

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

takeoff2 = rospublisher('/bebop2/takeoff','std_msgs/Empty');
msg = rosmessage(takeoff2);
send(takeoff2,msg);
pause(1);
clear takeoff2 ;
disp('Takeoff Drone 2!')


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
land2 = rospublisher('/bebop2/land','std_msgs/Empty');
msg = rosmessage(land2);
send(land2,msg);
pause(1);
clear land2;
disp('Landing Drone 2!')


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
reset2 = rospublisher('/bebop2/reset','std_msgs/Empty');
msg = rosmessage(reset2);
send(reset2,msg);
pause(1);
clear reset2;
disp('Drone 2 Emergency and Reset!!!');

% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
takeoff3 = rospublisher('/bebop3/takeoff','std_msgs/Empty');
msg = rosmessage(takeoff3);
send(takeoff3,msg);
pause(1);
clear takeoff3;
disp('Takeoff Drone 3!')


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
land3 = rospublisher('/bebop3/land','std_msgs/Empty');
msg = rosmessage(land3);
send(land3,msg);
pause(1);
clear land3;
disp('Landing Drone 3!')


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
reset3 = rospublisher('/bebop3/reset','std_msgs/Empty');
msg = rosmessage(reset3);
send(reset3,msg);
pause(1);
clear reset3;
disp('Drone 3 Emergency and Reset!!!');


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
takeoff4 = rospublisher('/bebop4/takeoff','std_msgs/Empty');
msg = rosmessage(takeoff4);
send(takeoff4,msg);
pause(1);
clear takeoff4;
disp('Takeoff Drone 4!')

% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
land4 = rospublisher('/bebop4/land','std_msgs/Empty');
msg = rosmessage(land4);
send(land4,msg);
pause(1);
clear land4;
disp('landing Drone 4!')

% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
reset4 = rospublisher('/bebop4/reset','std_msgs/Empty');
msg = rosmessage(reset4);
send(reset4,msg);
pause(1);
clear reset4;
disp('Drone 4 Emergency and Reset!!!');
