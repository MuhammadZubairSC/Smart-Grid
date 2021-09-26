%Author:Muhammad Zubair SC
%Title: Smart gird 

function varargout = Smart_Grid(varargin)
 
% SMART_GRID MATLc3 code for Smart_Grid.fig
%      SMART_GRID, by itself, creates a new SMART_GRID or raises the existing
%      singleton*.
%
%      H = SMART_GRID returns the handle to a new SMART_GRID or the handle to
%      the existing singleton*.
%
%      SMART_GRID('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SMART_GRID.M with the given input arguments.
%
%      SMART_GRID('Property','Value',...) creates a new SMART_GRID or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Smart_Grid_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Smart_Grid_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES
 
% Edit the c3ove text to modify the response to help Smart_Grid
 
% Last Modified by GUIDE v2.5 01-Jun-2016 01:21:45
 
% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Smart_Grid_OpeningFcn, ...
                   'gui_OutputFcn',  @Smart_Grid_OutputFcn, ...
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
 
 
% --- Executes just before Smart_Grid is made visible.
function Smart_Grid_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Smart_Grid (see VARARGIN)
 
% Choose default command line output for Smart_Grid
handles.output = hObject;
 
 
 
% Update handles structure
guidata(hObject, handles);
 
% creates the axes over the entire plane of GUI
%Imports the image 'smart_grid.jpg' to the GUI variable bg_image and displays the image on
%the background
%Disable the background to show any other plot from the GUI and puts it
%behind all the uicontrols
 

uistack(background, 'bottom');
 
 
% UIWAIT makes Smart_Grid wait for user response (see UIRESUME)
% uiwait(handles.figure1);
 
 
% --- Outputs from this function are returned to the command line.
function varargout = Smart_Grid_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
 
% Get default command line output from handles structure
varargout{1} = handles.output;
 
 
% --- Executes on selection change in popupmenu_load.
function popupmenu_load_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu_load (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu_load contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu_load
 
%Extracts the selected value from the uicontrol popup menu and store it in
%variable 'load_curve' and store it in container 'UserData', for out of the function
%use
load_curve=get(handles.popupmenu_load,'Value');
set(handles.popupmenu_load,'UserData',load_curve);
 
 
% --- Executes during object creation, after setting all properties.
function popupmenu_load_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu_load (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: popup menu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function turbinenumber_Callback(hObject, eventdata, handles)
% hObject    handle to turbinenumber (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of turbinenumber as text
%        str2double(get(hObject,'String')) returns contents of turbinenumber as a double
 
%Converts the string input into numeric of type double and store it in
%variable 'turbine_number', then checks the nature of input from the user,
%and show the message box with heading 'error message' with an image set as
%a logo of the message box if any of the conditions become true.
%Store the variable in container for future calls.
turbine_number= str2double(get(handles.turbinenumber,'String')); 
if (isnan(turbine_number)|| turbine_number<1 || turbine_number>10)                
    msgbox('Please enter the valid value for number of installed wind turbine','Error Message','custom',imread('errorsign.png')) 
end                                              
set(handles.turbinenumber,'UserData',turbine_number);  
 
% --- Executes during object creation, after setting all properties.
function turbinenumber_CreateFcn(hObject, eventdata, handles)
% hObject    handle to turbinenumber (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function pcoefficient_Callback(hObject, eventdata, handles)
% hObject    handle to pcoefficient (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of pcoefficient as text
%        str2double(get(hObject,'String')) returns contents of pcoefficient as a double
 
%Converts the string input into numeric of type double and store it in
%variable 'p_coefficient', then checks the nature of input from the user,
%and show the message box with heading 'error message' with an image set as
%a logo of the message box if the entered value is illogical.
%Store the variable in container for future calls.
p_coefficient= str2double(get(handles.pcoefficient,'String')); 
if (isnan(p_coefficient)|| p_coefficient<0.3 || p_coefficient>0.59)                
    msgbox('Please enter the correct value of power coefficient','Error Message','custom',imread('errorsign.png')) 
end                                              
set(handles.pcoefficient,'UserData',p_coefficient);  
 
 
% --- Executes during object creation, after setting all properties.
function pcoefficient_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pcoefficient (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
function n_Callback(hObject, eventdata, handles)
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of n as text
%        str2double(get(hObject,'String')) returns contents of n as a double
 
%Converts the string input into numeric of type double and store it in
%variable 'effic', then checks the nature of input from the user,
%and show the message box with heading 'error message' with an image set as
%a logo of the message box if the value entered is not logical.
%Converts the efficiency into percentage
%Store the variable in container for future calls.
 
effic= str2double(get(handles.n,'String')); 
if (isnan(effic)|| effic<10 || effic>75)                
    msgbox('Please enter the correct value of efficiency','Error Message','custom',imread('errorsign.png'))
end
efficiency=effic/100;
set(handles.n,'UserData',efficiency);  
 
 
% --- Executes during object creation, after setting all properties.
function n_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function head_Callback(hObject, eventdata, handles)
% hObject    handle to head (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of head as text
%        str2double(get(hObject,'String')) returns contents of head as a double
 
%Converts the string input into numeric of type double and store it in
%variable 'head', then checks the nature of input from the user,
%and show the message box with heading 'error message' with an image set as
%a logo of the message box if the value entered is not logical.
%Store the variable in container for future calls.
 
head= str2double(get(handles.head,'String')); 
if (isnan(head)|| head<10 || head>135)                
    msgbox('Please enter the correct value for head of water','Error Message','custom',imread('errorsign.png')) 
end                                              
set(handles.head,'UserData',head);  
 
% --- Executes during object creation, after setting all properties.
function head_CreateFcn(hObject, eventdata, handles)
% hObject    handle to head (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function i1_Callback(hObject, eventdata, handles)
% hObject    handle to i1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of i1 as text
%        str2double(get(hObject,'String')) returns contents of i1 as a double
 
%Retrieves the value from the radio panel to the variable 'choice_consumer', and extracts the
%string part of it.
%Based on the value of variable either activates or deactivates the
%variable 'i1'. For deactivates straight away goes out of the function
%without doing any further analysis of the value entered by the user by
%using return statement
 
choice_consumer= get(handles.consumer_radio,'SelectedObject');
choice= get(choice_consumer,'String'); 
switch(choice) 
    case 'Define Consumers Load' 
        set(handles.i1,'Enable','on');
    case 'Automatic Load Detection' 
        set(handles.i1,'Enable','off');
        return;
    otherwise 
end 
 
%Converts the string input into numeric of type double and store it in
%variable 'effic', then checks the nature of input from the user,
%and show the message box with heading 'error message' with an image set as
%a logo of the message box if the value entered is not logical.
%Store the variable in container for future calls.
i1= str2double(get(handles.i1,'String')); 
if (isnan(i1)|| i1<0 || i1>225)                
    msgbox('Please enter the load value again','Error Message','custom',imread('errorsign.png')) 
end                                              
set(handles.i1,'UserData',i1);  
 
 
 
% --- Executes during object creation, after setting all properties.
function i1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function i2_Callback(hObject, eventdata, handles)
% hObject    handle to i2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of i2 as text
%        str2double(get(hObject,'String')) returns contents of i2 as a double

 
choice_consumer= get(handles.consumer_radio,'SelectedObject');
choice= get(choice_consumer,'String'); 
switch(choice) 
    case 'Define Consumers Load' 
        set(handles.i2,'Enable','on');
    case 'Automatic Load Detection' 
        set(handles.i2,'Enable','off');
        return;
    otherwise 
end 
 
i2= str2double(get(handles.i2,'String')); 
if (isnan(i2)|| i2<0 || i2>225)                
    msgbox('Please enter the load value again','Error Message','custom',imread('errorsign.png')) 
end                                              
set(handles.i2,'UserData',i2);  
 
 
% --- Executes during object creation, after setting all properties.
function i2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function i3_Callback(hObject, eventdata, handles)
% hObject    handle to i3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of i3 as text
%        str2double(get(hObject,'String')) returns contents of i3 as a double
  
 
choice_consumer= get(handles.consumer_radio,'SelectedObject');
choice= get(choice_consumer,'String'); 
switch(choice) 
    case 'Define Consumers Load' 
        set(handles.i3,'Enable','on');
    case 'Automatic Load Detection' 
        set(handles.i3,'Enable','off');
        return;
    otherwise 
end 
  
i3= str2double(get(handles.i3,'String')); 
if (isnan(i3)|| i3<0 || i3>225)                
    msgbox('Please enter the load value again','Error Message','custom',imread('errorsign.png')) 
end                                              
set(handles.i3,'UserData',i3);  
 
 
% --- Executes during object creation, after setting all properties.
function i3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function i4_Callback(hObject, eventdata, handles)
% hObject    handle to i4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of i4 as text
%        str2double(get(hObject,'String')) returns contents of i4 as a double
  
 
choice_consumer= get(handles.consumer_radio,'SelectedObject');
choice= get(choice_consumer,'String'); 
switch(choice) 
    case 'Define Consumers Load' 
        set(handles.i4,'Enable','on');
    case 'Automatic Load Detection' 
        set(handles.i4,'Enable','off');
        return;
    otherwise 
end 
  
i4= str2double(get(handles.i4,'String')); 
if (isnan(i4)|| i4<0 || i4>225)                
    msgbox('Please enter the load value again','Error Message','custom',imread('errorsign.png')) 
end                                              
set(handles.i4,'UserData',i4);  
 
 
% --- Executes during object creation, after setting all properties.
function i4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function i5_Callback(hObject, eventdata, handles)
% hObject    handle to i5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of i5 as text
%        str2double(get(hObject,'String')) returns contents of i5 as a double
  
 
choice_consumer= get(handles.consumer_radio,'SelectedObject');
choice= get(choice_consumer,'String'); 
switch(choice) 
    case 'Define Consumers Load' 
        set(handles.i5,'Enable','on');
    case 'Automatic Load Detection' 
        set(handles.i5,'Enable','off');
        return;
    otherwise 
end 
  
i5= str2double(get(handles.i5,'String')); 
if (isnan(i5)|| i5<0 || i5>225)                
    msgbox('Please enter the load value again','Error Message','custom',imread('errorsign.png')) 
end                                              
set(handles.i5,'UserData',i5);  
 
 
% --- Executes during object creation, after setting all properties.
function i5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function i6_Callback(hObject, eventdata, handles)
% hObject    handle to i6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of i6 as text
%        str2double(get(hObject,'String')) returns contents of i6 as a double
 
 
choice_consumer= get(handles.consumer_radio,'SelectedObject');
choice= get(choice_consumer,'String'); 
switch(choice) 
    case 'Define Consumers Load' 
        set(handles.i6,'Enable','on');
    case 'Automatic Load Detection' 
        set(handles.i6,'Enable','off');
        return;
    otherwise 
end 
  
i6= str2double(get(handles.i6,'String')); 
if (isnan(i6)|| i6<0 || i6>225)                
    msgbox('Please enter the load value again','Error Message','custom',imread('errorsign.png')) 
end                                              
set(handles.i6,'UserData',i6);  
 
 
% --- Executes during object creation, after setting all properties.
function i6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function powerfactor_ind_Callback(hObject, eventdata, handles)
% hObject    handle to powerfactor_ind (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of powerfactor_ind as text
%        str2double(get(hObject,'String')) returns contents of powerfactor_ind as a double
 
powerfactori= str2double(get(handles.powerfactor_ind,'String')); 
if (isnan(powerfactori)|| powerfactori<0 || powerfactori>1)                
    msgbox('Please enter the correct value of power factor','Error Message','custom',imread('errorsign.png')) 
end                                              
set(handles.powerfactor_ind,'UserData',powerfactori);  
 
 
 
% --- Executes during object creation, after setting all properties.
function powerfactor_ind_CreateFcn(hObject, eventdata, handles)
% hObject    handle to powerfactor_ind (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function c1_Callback(hObject, eventdata, handles)
% hObject    handle to c1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of c1 as text
%        str2double(get(hObject,'String')) returns contents of c1 as a double 
 
choice_consumer= get(handles.consumer_radio,'SelectedObject');
choice= get(choice_consumer,'String'); 
switch(choice) 
    case 'Control Loads' 
        set(handles.c1,'Enable','on');
    case 'Monitor Loads' 
        set(handles.c1,'Enable','off');
    case 'Control and Monitor Loads'
        set(handles.c1,'Enable','off');
    otherwise 
end 
 
c1= str2double(get(handles.c1,'String')); 
if (isnan(c1)|| c1<0 || c1>10.5)                
    msgbox('Please enter the load value again','Error Message','custom',imread('errorsign.png')) 
end                                              
set(handles.c1,'UserData',c1);             
 
 
 
% --- Executes during object creation, after setting all properties.
function c1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function c2_Callback(hObject, eventdata, handles)
% hObject    handle to c2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of c2 as text
%        str2double(get(hObject,'String')) returns contents of c2 as a double
  
choice_consumer= get(handles.consumer_radio,'SelectedObject');
choice= get(choice_consumer,'String'); 
switch(choice) 
    case 'Define Consumers Load' 
        set(handles.c2,'Enable','on');
    case 'Automatic Load Detection' 
        set(handles.c2,'Enable','off');
        return;
    otherwise 
end 
 
  
c2= str2double(get(handles.c2,'String')); 
if (isnan(c2)|| c2<0 || c2>10.5)                
    msgbox('Please enter the load value again','Error Message','custom',imread('errorsign.png')) 
end                                              
set(handles.c2,'UserData',c2);            
 
 
% --- Executes during object creation, after setting all properties.
function c2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function c3_Callback(hObject, eventdata, handles)
% hObject    handle to c3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of c3 as text
%        str2double(get(hObject,'String')) returns contents of c3 as a double
  
 
choice_consumer= get(handles.consumer_radio,'SelectedObject');
choice= get(choice_consumer,'String'); 
switch(choice) 
    case 'Define Consumers Load' 
        set(handles.c3,'Enable','on');
    case 'Automatic Load Detection' 
        set(handles.c3,'Enable','off');
        return;
    otherwise 
end 
  
c3= str2double(get(handles.c3,'String')); 
if (isnan(c3)|| c3<0 || c3>10.5)                
    msgbox('Please enter the load value again','Error Message','custom',imread('errorsign.png')) 
end                                              
set(handles.c3,'UserData',c3);  
 
 
% --- Executes during object creation, after setting all properties.
function c3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function c4_Callback(hObject, eventdata, handles)
% hObject    handle to c4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of c4 as text
%        str2double(get(hObject,'String')) returns contents of c4 as a double 
 
choice_consumer= get(handles.consumer_radio,'SelectedObject');
choice= get(choice_consumer,'String'); 
switch(choice) 
    case 'Define Consumers Load' 
        set(handles.c4,'Enable','on');
    case 'Automatic Load Detection' 
        set(handles.c4,'Enable','off');
        return;
    otherwise 
end 
  
c4= str2double(get(handles.c4,'String')); 
if (isnan(c4)|| c4<0 || c4>10.5)                
    msgbox('Please enter the load value again','Error Message','custom',imread('errorsign.png')) 
end                                              
set(handles.c4,'UserData',c4);  
 
 
 
% --- Executes during object creation, after setting all properties.
function c4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function c5_Callback(hObject, eventdata, handles)
% hObject    handle to c5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of c5 as text
%        str2double(get(hObject,'String')) returns contents of c5 as a double
 
 
choice_consumer= get(handles.consumer_radio,'SelectedObject');
choice= get(choice_consumer,'String'); 
switch(choice) 
    case 'Define Consumers Load' 
        set(handles.c5,'Enable','on');
    case 'Automatic Load Detection' 
        set(handles.c5,'Enable','off');
        return;
    otherwise 
end 
 
 
c5= str2double(get(handles.c5,'String')); 
if (isnan(c5)|| c5<0 || c5>10.5)                
    msgbox('Please enter the load value again','Error Message','custom',imread('errorsign.png')) 
end                                              
set(handles.c5,'UserData',c5);  
 
 
 
% --- Executes during object creation, after setting all properties.
function c5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function c6_Callback(hObject, eventdata, handles)
% hObject    handle to c6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of c6 as text
%        str2double(get(hObject,'String')) returns contents of c6 as a double
 
 
choice_consumer= get(handles.consumer_radio,'SelectedObject');
choice= get(choice_consumer,'String'); 
switch(choice) 
    case 'Define Consumers Load' 
        set(handles.c6,'Enable','on');
    case 'Automatic Load Detection' 
        set(handles.c6,'Enable','off');
        return;
    otherwise 
end 
  
c6= str2double(get(handles.c6,'String')); 
if (isnan(c6)|| c6<0 || c6>10.5)                
    msgbox('Please enter the load value again','Error Message','custom',imread('errorsign.png')) 
end                                              
set(handles.c6,'UserData',c6);  
 
 
% --- Executes during object creation, after setting all properties.
function c6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function powerfactor_com_Callback(hObject, eventdata, handles)
% hObject    handle to powerfactor_com (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of powerfactor_com as text
%        str2double(get(hObject,'String')) returns contents of powerfactor_com as a double
  
powerfactorc= str2double(get(handles.powerfactor_com,'String')); 
if (isnan(powerfactorc)|| powerfactorc<0 || powerfactorc>1)                
    msgbox('Please enter the correct value of power factor','Error Message','custom',imread('errorsign.png')) 
end                                              
set(handles.powerfactor_com,'UserData',powerfactorc);  
 
 
% --- Executes during object creation, after setting all properties.
function powerfactor_com_CreateFcn(hObject, eventdata, handles)
% hObject    handle to powerfactor_com (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function r1_Callback(hObject, eventdata, handles)
% hObject    handle to r1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of r1 as text
%        str2double(get(hObject,'String')) returns contents of r1 as a double
 
 
choice_consumer= get(handles.consumer_radio,'SelectedObject');
choice= get(choice_consumer,'String'); 
switch(choice) 
    case 'Define Consumers Load' 
        set(handles.r1,'Enable','on');
    case 'Automatic Load Detection' 
        set(handles.r1,'Enable','off');
        return;
    otherwise 
end 
 
 
 
r1= str2double(get(handles.r1,'String')); 
if (isnan(r1)|| r1<0 || r1>6.5)                
    msgbox('Please enter the load value again','Error Message','custom',imread('errorsign.png')) 
end                                              
set(handles.r1,'UserData',r1);  
 
 
% --- Executes during object creation, after setting all properties.
function r1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function r2_Callback(hObject, eventdata, handles)
% hObject    handle to r2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of r2 as text
%        str2double(get(hObject,'String')) returns contents of r2 as a double
 
 
choice_consumer= get(handles.consumer_radio,'SelectedObject');
choice= get(choice_consumer,'String'); 
switch(choice) 
    case 'Define Consumers Load' 
        set(handles.r2,'Enable','on');
    case 'Automatic Load Detection' 
        set(handles.r2,'Enable','off');
        return;
    otherwise 
end 
 
 
r2= str2double(get(handles.r2,'String')); 
if (isnan(r2)|| r2<0 || r2>6.5)                
    msgbox('Please enter the load value again','Error Message','custom',imread('errorsign.png')) 
end                                              
set(handles.r2,'UserData',r2);  
 
% --- Executes during object creation, after setting all properties.
function r2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function r3_Callback(hObject, eventdata, handles)
% hObject    handle to r3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of r3 as text
%        str2double(get(hObject,'String')) returns contents of r3 as a double
  
 
choice_consumer= get(handles.consumer_radio,'SelectedObject');
choice= get(choice_consumer,'String'); 
switch(choice) 
    case 'Define Consumers Load' 
        set(handles.r3,'Enable','on');
    case 'Automatic Load Detection' 
        set(handles.r3,'Enable','off');
        return;
    otherwise 
end 
 
 
r3= str2double(get(handles.r3,'String')); 
if (isnan(r3)|| r3<0 || r3>6.5)                
    msgbox('Please enter the load value again','Error Message','custom',imread('errorsign.png')) 
end                                              
set(handles.r3,'UserData',r3);  
 
% --- Executes during object creation, after setting all properties.
function r3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function r4_Callback(hObject, eventdata, handles)
% hObject    handle to r4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of r4 as text
%        str2double(get(hObject,'String')) returns contents of r4 as a double
  
 
choice_consumer= get(handles.consumer_radio,'SelectedObject');
choice= get(choice_consumer,'String'); 
switch(choice) 
    case 'Define Consumers Load' 
        set(handles.r4,'Enable','on');
    case 'Automatic Load Detection' 
        set(handles.r4,'Enable','off');
        return;
    otherwise 
end 
 
 
r4= str2double(get(handles.r4,'String')); 
if (isnan(r4)|| r4<0 || r4>6.5)                
    msgbox('Please enter the load value again','Error Message','custom',imread('errorsign.png')) 
end                                              
set(handles.r4,'UserData',r4);  
 
% --- Executes during object creation, after setting all properties.
function r4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function r5_Callback(hObject, eventdata, handles)
% hObject    handle to r5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of r5 as text
%        str2double(get(hObject,'String')) returns contents of r5 as a double
 
choice_consumer= get(handles.consumer_radio,'SelectedObject');
choice= get(choice_consumer,'String'); 
switch(choice) 
    case 'Define Consumers Load' 
        set(handles.r5,'Enable','on');
    case 'Automatic Load Detection' 
        set(handles.r5,'Enable','off');
        return;
    otherwise 
end 
 
 
r5= str2double(get(handles.r5,'String')); 
if (isnan(r5)|| r5<0 || r5>6.5)                
    msgbox('Please enter the load value again','Error Message','custom',imread('errorsign.png')) 
end                                              
set(handles.r5,'UserData',r5);  
 
 
% --- Executes during object creation, after setting all properties.
function r5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function r6_Callback(hObject, eventdata, handles)
% hObject    handle to r6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of r6 as text
%        str2double(get(hObject,'String')) returns contents of r6 as a double
  
choice_consumer= get(handles.consumer_radio,'SelectedObject');
choice= get(choice_consumer,'String'); 
switch(choice) 
    case 'Define Consumers Load' 
        set(handles.r6,'Enable','on');
    case 'Automatic Load Detection' 
        set(handles.r6,'Enable','off');
        return;
    otherwise 
end 
 
 
r6= str2double(get(handles.r6,'String')); 
if (isnan(r6)|| r6<0 || r6>6.5)                
    msgbox('Please enter the load value again','Error Message','custom',imread('errorsign.png')) 
end                                              
set(handles.r6,'UserData',r6);  
 
% --- Executes during object creation, after setting all properties.
function r6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function powerfactor_res_Callback(hObject, eventdata, handles)
% hObject    handle to powerfactor_res (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of powerfactor_res as text
%        str2double(get(hObject,'String')) returns contents of powerfactor_res as a double
 
powerfactord= str2double(get(handles.powerfactor_res,'String')); 
if (isnan(powerfactord)|| powerfactord<0 || powerfactord>1)                
    msgbox('Please enter the correct value of power factor','Error Message','custom',imread('errorsign.png')) 
end                                              
set(handles.powerfactor_res,'UserData',powerfactord);  
 
 
% --- Executes during object creation, after setting all properties.
function powerfactor_res_CreateFcn(hObject, eventdata, handles)
% hObject    handle to powerfactor_res (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
% --- Executes on button press in calculate.
function calculate_Callback(hObject, eventdata, handles)
% hObject    handle to calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
 
cla(handles.axes_power); 
cla(handles.power_supplied); 
cla(handles.overall_load); 
cla(handles.axes_graph); 
r1=get(handles.r1,'UserData');
r2=get(handles.r2,'UserData');
r3=get(handles.r3,'UserData');
r4=get(handles.r4,'UserData');
r5=get(handles.r5,'UserData');
r6=get(handles.r6,'UserData');
i1=get(handles.i1,'UserData');
i2=get(handles.i2,'UserData');
i3=get(handles.i3,'UserData');
i4=get(handles.i4,'UserData');
i5=get(handles.i5,'UserData');
i6=get(handles.i6,'UserData');
c1=get(handles.c1,'UserData');
c2=get(handles.c2,'UserData');
c3=get(handles.c3,'UserData');
c4=get(handles.c4,'UserData');
c5=get(handles.c5,'UserData');
c6=get(handles.c6,'UserData');
efficiency=get(handles.n,'UserData');
turbine_number=get(handles.turbinenumber,'UserData');
p_coefficient=get(handles.pcoefficient,'UserData');
head=get(handles.head,'UserData');
powerfactord=get(handles.powerfactor_res,'UserData');
powerfactorc=get(handles.powerfactor_com,'UserData');
powerfactori=get(handles.powerfactor_ind,'UserData');
choice_consumer= get(handles.consumer_radio,'SelectedObject');
load_curve=get(handles.popupmenu_load,'UserData');
parameter=get(handles.popupmenu_parameter,'UserData');
 
%% Error Handling Section
if(isempty(load_curve) || isnan(load_curve))
    msgbox('Please choose the load profile of either domestic, commercial or Industrial to display.','Error Message');
    return;
end
if(isempty(parameter)||isnan(parameter))
    msgbox('Please either choose default, excess storage power, wind speed of wind turbine, flow rate of hydro plant, hydro power generation or wind power generation','Error Message');
    return;
end
if((isempty(head))||(isempty(efficiency))||(isempty(p_coefficient))||(isempty(turbine_number))||(isempty(powerfactord))||(isempty(powerfactorc))||(isempty(powerfactori)))
     msgbox('Please define some value of the required parameters.','Error Message');
        return;
end
 
%Extract the string contained in the radio panel variable 'choice_consumer'
%and store it in variable 'choice'
%Switch statement for the two possible value of variable 'choice'. The fist
choice=get(choice_consumer,'String');
switch(choice)
    case 'Define Consumers Load' 
        if((isempty(i1))||(isempty(i2))||(isempty(i3))||(isempty(i4))||(isempty(i5))||(isempty(i6))||(isempty(r1))||(isempty(r2))||(isempty(r3))||(isempty(r4))||(isempty(r5))||(isempty(r6))||(isempty(c1))||(isempty(c2))||(isempty(c3))||(isempty(c4))||(isempty(c5))||(isempty(c6))||(isempty(head))||(isempty(efficiency))||(isempty(p_coefficient))||(isempty(turbine_number))||(isempty(powerfactord))||(isempty(powerfactorc))||(isempty(powerfactori)))
        msgbox('Please define some value of the required parameters.','Error Message');
        return;
        end
        domestic=[r1 r2 r3 r4 r5 r6];
        commercial=[c1 c2 c3 c4 c5 c6];
        industrial=[i1 i2 i3 i4 i5 i6];
        t=linspace(0,24,length(domestic));
        industrial_unit= round(30*4*sum(industrial));
        commercial_unit= round(30*4*sum(commercial));
        domestic_unit=round(30*4*sum(domestic));
    case 'Automatic Load Detection' 
        data= xlsread('matlab\Load_Profile.xlsx','Sheet1','A1:D19');
        t= data(:,1);
        domestic= data(:,2);
        commercial= data(:,3);
        industrial= data(:,4);
        industrial_unit= round(30*1.333*sum(industrial));
        commercial_unit= round(30*1.333*sum(commercial));
        domestic_unit=round(30*1.333*sum(domestic));
    otherwise 
end
 
t_actual=linspace(0,24,500);
d_actual=interp1(t,domestic,t_actual,'spline');
c_actual=interp1(t,commercial,t_actual,'spline');
i_actual=interp1(t,industrial,t_actual,'spline');
total_load=d_actual+c_actual+i_actual;
switch(load_curve)
    case 1
        axes(handles.axes_power);
        area(t_actual,abs(d_actual))
        xlim([0 24]);
        title('Domestic Load profile'),xlabel('Time (in hr)'),ylabel('Power Consumed (in kW)'),colormap([0.2 0.2 1]);
    case 2
        axes(handles.axes_power);
        area(t_actual,abs(d_actual))
        xlim([0 24]);
        title('Domestic Load profile'),xlabel('Time (in hr)'),ylabel('Power Consumed (in kW)'),colormap([0.2 0.2 1]);
 
    case 3
        axes(handles.axes_power);
        area(t_actual,c_actual)
        xlim([0 24]);
        title('Commercial Load profile'),xlabel('Time (in hr)'),ylabel('Power Consumed (in kW)'),colormap([0.2 0.2 1]);
 
    case 4
        axes(handles.axes_power);
        area(t_actual,i_actual)
        xlim([0 24]);
        title('Idustrial Load profile'),xlabel('Time (in hr)'),ylabel('Power Consumed (in kW)'),colormap([0.2 0.2 1]);
    otherwise
end
axes(handles.overall_load);
area(t_actual,total_load);
xlim([0 24]);
title('Collective Load profile'),xlabel('Time (in hr)'),ylabel('Power Consumed (in kW)'),,colormap([0.2 0.2 1]);
 
 
%% Transmission Section
 
Id=d_actual./(1.732*415*powerfactord);
Ic=c_actual./(1.732*415*powerfactorc);
Ii=i_actual./(1.732*415*powerfactori);
I=Id+Ic+Ii;
turnratio_ds=7.95;
turnratio_dp=10;
turnratio_ts=4;
turnratio_tp=0.083;
I_distributionsec= I./turnratio_ds;
I_distributionpri= I_distributionsec./turnratio_dp;
I_transmissionsec= I_distributionpri./turnratio_ts;
I_transmissionpri= I_transmissionsec./turnratio_tp;
line_resistance=0.457;
line_length=150;
Linelosses= 3*((I_transmissionpri+I_transmissionsec).^2).*line_resistance*line_length;
set(handles.text_display,'String',sum(I_distributionsec));
set(handles.distributionp,'String',sum(I_distributionpri));
set(handles.transmissions,'String',sum(I_transmissionsec));
set(handles.transmissionp,'String',sum(I_transmissionpri));
 
 
 
%% Generation Parameters
P_total= total_load+Linelosses;
windturbine_number=turbine_number;
max_windpower=3450000;
max_hydropower=400000000;
P_max(1:length(P_total))=max_windpower*windturbine_number+max_hydropower;
P_reserve=P_max-P_total;
wind_percent=(max_windpower*windturbine_number)/(max_windpower*windturbine_number+max_hydropower);
hydro_percent=1-wind_percent;
windpower=P_total.*wind_percent;
hydropower=P_total.*hydro_percent;
axes(handles.power_supplied);
area(t_actual,P_total);
xlim([0 24]);
title('Supplied Power by the Grid'),xlabel('Time (in hr)'),ylabel('Supplied Power(in kW)'),colormap([0.2 0.2 1]);
 
 
%hydropower parameter settings
%Initialization of the variable 'Force_perunitvolume_ofwater' with
%appropriate value
%Assignment of value contained in variable 'efficiency' to variable 'efficiency_hydro'
%Calculation for flowrate of water during each interval
Force_perunitvolume_ofwater= 9810;
efficiency_hydro= efficiency;
flowrate= hydropower./(Force_perunitvolume_ofwater*head*efficiency_hydro);
 
 
%Wind turbine parameter settings
%Initialization of the variable 'sweptarea'&'airdensity' %with their respective values
%Assignment of value contained in variable 'power_coefficient' to variable 'p_coefficient'
%Calculation for wind speed of wind turbine during each interval
sweptarea= 14.527;
airdensity=1.225;
power_coefficient=p_coefficient;
windspeed= sqrt((2*windpower)./(sweptarea*airdensity*power_coefficient));
windspeed= windspeed.*(windspeed<22.5);
for k=1:length(windspeed)
    if(windspeed(k)==0)
        windspeed(k)=22.5;
    end
end
 
switch(parameter)
    case 1
        axes(handles.axes_graph);
        area(t_actual,windspeed);
        xlim([0 24]);
        title('Expected Wind Speed'),xlabel('Time (in hr)'),ylabel('Wind Speed of Turbine (in m/s)'),colormap([0.2 0.2 1]);
    case 2
        axes(handles.axes_graph);
        area(t_actual,P_reserve);
        xlim([0 24]);
        title('Excess Storage power'),xlabel('Time (in hr)'),ylabel('Power(in kW)'),colormap([0.2 0.2 1]);
    case 3
        axes(handles.axes_graph);
        area(t_actual,windspeed);
        xlim([0 24]);
        title('Expected Wind Speed'),xlabel('Time (in hr)'),ylabel('Wind Speed of Turbine (in m/s)'),colormap([0.2 0.2 1]);
    case 4
        axes(handles.axes_graph);
        area(t_actual,flowrate);
        xlim([0 24]);
        title('Expected Flow rate of Hydropower Plant'),xlabel('Time (in hr)'),ylabel('Flow rate (in m^3/s)'),colormap([0.2 0.2 1]);  
    case 5
        axes(handles.axes_graph);
        area(t_actual,hydropower);
        xlim([0 24]);
        title('Generated Hydro Power'),xlabel('Time (in hr)'),ylabel('Power(in kW)'),colormap([0.2 0.2 1]); 
    case 6
        axes(handles.axes_graph);
        area(t_actual,windpower);
        xlim([0 24]);
        title('Generated Wind Power'),xlabel('Time (in hr)'),ylabel('Power(in kW)'),colormap([0.2 0.2 1]);
    otherwise
end
 
%% Tariff Calculation Section
k=1;
if(domestic_unit<=200)
 d_energycharge= 0.218* domestic_unit;
else
    while(domestic_unit>100)
    if(k==1)
    domestic_unit=domestic_unit-200;
    d_energycharge=0.218*200;
    elseif(k~=1)
    domestic_unit=domestic_unit-100;
        if(k==2)
        d_energycharge= d_energycharge+0.334*100;
        elseif(k==3)
        d_energycharge= d_energycharge+0.400*100;
        elseif(k==4)
        d_energycharge= d_energycharge+0.402*100;
        elseif(k==5)
        d_energycharge= d_energycharge+0.416*100;
        elseif(k==6)
        d_energycharge= d_energycharge+0.426*100;
        elseif(k==7)
        d_energycharge= d_energycharge+0.437*100;
        elseif(k==8)
        d_energycharge= d_energycharge+0.453*100;
        elseif(k==9)
        d_energycharge= d_energycharge+0.454*(domestic_unit+100);
        break;
        end
    end
    k=k+1;
    end %End of while loop
    if(domestic_unit<100 && k==2)
    d_energycharge= d_energycharge+0.334*domestic_unit;
    elseif(domestic_unit<100 && k==3)
    d_energycharge= d_energycharge+0.400*domestic_unit;
    elseif(domestic_unit<100 && k==4)
        d_energycharge= d_energycharge+0.402*domestic_unit;
    elseif(domestic_unit<100 && k==5)
        d_energycharge= d_energycharge+0.416*domestic_unit;
    elseif(domestic_unit<100 && k==6)
        d_energycharge= d_energycharge+0.426*domestic_unit;
    elseif(domestic_unit<100 && k==7)
        d_energycharge= d_energycharge+0.437*domestic_unit;
    elseif(domestic_unit<100 && k==8)
        d_energycharge= d_energycharge+0.453*domestic_unit;
    elseif(domestic_unit<100 && k==9)
        d_energycharge= d_energycharge+0.454*domestic_unit;
    end  
end
if(commercial_unit<=200)
c_energycharge= 0.393*commercial_unit;
else
c_energycharge= 0.430*commercial_unit;
end
 
if(industrial_unit<=200)
i_energycharge= 0.354*industrial_unit;
else
i_energycharge= 0.377*industrial_unit;
end
 
 
capitalcost_hydro= 810000000;
capitalcost_wind= 18513380;
d_number=50000;
c_number=30000;
i_number=500;
d_energycharge = d_energycharge+((capitalcost_hydro*0.02)/(365*d_number))+((capitalcost_wind*windturbine_number*0.015)/(365*50000));
c_energycharge = c_energycharge+((capitalcost_hydro*0.02)/(365*c_number))+((capitalcost_wind*windturbine_number*0.015)/(365*30000));
i_energycharge = i_energycharge+((capitalcost_hydro*0.02)/(365*i_number))+((capitalcost_wind*windturbine_number*0.015)/(365*500));
monthly_cost=50000*d_energycharge+30000*c_energycharge+500*i_energycharge;
yearly_cost= 12*monthly_cost;
%Calculating the payback period of both power plants
payback_period= (capitalcost_hydro+capitalcost_wind)/yearly_cost;
set(handles.d_bill,'String',d_energycharge);
set(handles.c_bill,'String',c_energycharge);
set(handles.i_bill,'String',i_energycharge);
set(handles.payback,'String',payback_period);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
 
%closes the current base figure
 %opens the main simulation function again 
close(gcbf); 
Smart_Grid();
 
 
 
 
% --- Executes on button press in exit.
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLc3
% handles    structure with handles and user data (see GUIDATA)
 
uiwait(msgbox('Thank you for using Smart Grid Simulation','Exit','custom',imread('Exit.png'))); %Ending statement of program
close('all'); %closes all the open windows
 
 
% --- Executes on selection change in popupmenu_parameter.
function popupmenu_parameter_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu_parameter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu_parameter contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu_parameter
 

parameter=get(handles.popupmenu_parameter,'Value');
set(handles.popupmenu_parameter,'UserData',parameter);
 
 
% --- Executes during object creation, after setting all properties.
function popupmenu_parameter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu_parameter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
