function varargout = letstry(varargin)
% LETSTRY MATLAB code for letstry.fig
%      LETSTRY, by itself, creates a new LETSTRY or raises the existing
%      singleton*.
%
%      H = LETSTRY returns the handle to a new LETSTRY or the handle to
%      the existing singleton*.
%
%      LETSTRY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LETSTRY.M with the given input arguments.
%
%      LETSTRY('Property','Value',...) creates a new LETSTRY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before letstry_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to letstry_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help letstry

% Last Modified by GUIDE v2.5 12-Jun-2015 18:08:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @letstry_OpeningFcn, ...
                   'gui_OutputFcn',  @letstry_OutputFcn, ...
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


% --- Executes just before letstry is made visible.
function letstry_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to letstry (see VARARGIN)
handles.answ='ans';
handles.clear='';
handles.word = 'word';
handles.txt='press change level then press hint';
%handles.img= imread('aguero.jpg');
handles.lvl = 1;
% Choose default command line output for letstry
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes letstry wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = letstry_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function ans_Callback(hObject, eventdata, handles)
% hObject    handle to ans (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of ans as text
%        str2double(get(hObject,'String')) returns contents of ans as a double
handles.answ=get(hObject,'String');
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function ans_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ans (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in check.
function check_Callback(hObject, eventdata, handles)
% hObject    handle to check (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%set (handles.ck,'string',handles.answ);
if strcmp(handles.answ, 'ans')==1
    set (handles.ck,'string','type an answer asshole');
elseif strcmp (handles.answ, handles.word) == 1
    set (handles.ck,'string','congrats. Go to next level');
else
set (handles.ck,'string','wrong');
end
guidata(hObject, handles);

% --- Executes on button press in hint.
function hint_Callback(hObject, eventdata, handles)
% hObject    handle to hint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%imshow (handles.img);
set (handles.htxt,'string',handles.txt);
guidata(hObject, handles);


function htxt_Callback(hObject, eventdata, handles)
% hObject    handle to htxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of htxt as text
%        str2double(get(hObject,'String')) returns contents of htxt as a double


% --- Executes during object creation, after setting all properties.
function htxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to htxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ck_Callback(hObject, eventdata, handles)
% hObject    handle to ck (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ck as text
%        str2double(get(hObject,'String')) returns contents of ck as a double


% --- Executes during object creation, after setting all properties.
function ck_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ck (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in level.
function level_Callback(hObject, eventdata, handles)
% hObject    handle to level (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.lvl = get (hObject,'Value');
% Hints: contents = cellstr(get(hObject,'String')) returns level contents as cell array
%        contents{get(hObject,'Value')} returns selected item from level
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function level_CreateFcn(hObject, eventdata, handles)
% hObject    handle to level (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in lvlch.
function lvlch_Callback(hObject, eventdata, handles)
% hObject    handle to lvlch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set (handles.ck,'string',handles.clear);
set (handles.ans,'string',handles.clear);
handles.answ='ans';
set (handles.htxt,'string',handles.clear);
switch handles.lvl
    case 1
        handles.word='success'
        handles.txt='t9;    7822377'
    case 2
        handles.word='vapur'
        handles.txt='-2;    xcrwt'
    case 3
        handles.word='deb'
        handles.txt='bcd=4 25 676;  676 458329 4'
    case 4
        handles.word='lets get real'
        handles.txt='t9 +3 ab=1_2;  5387 dbq 18_5_1_12'
    case 5
        handles.word = 'pandavas chose krishna'
        handles.txt='ab=1_2;    5_22_5_18_25    19_5_3_15_14_4  23_15_18_4 15_6 "20_8_5 16_1_14_4_1_22_1_19 20_8_21_19  3_8_15_15_19_5  12_15_18_4  11_18_9_19_8_14_1"'
end
guidata(hObject, handles);
