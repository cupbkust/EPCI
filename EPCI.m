function varargout = EPCI(varargin)
% 
%    The copyright of this code used for computation of EPCI value is
%    owned by Khalifa University of Science and Technology, Abu Dhabi, UAE. 
%    If you have any problem when using it, please send an email to sunhuafeng168@gmail.com.

%     Thanks for using EPCI.



% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @rawdata_OpeningFcn, ...
                   'gui_OutputFcn',  @rawdata_OutputFcn, ...
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

% --- Executes just before rawdata is made visible.
function rawdata_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to rawdata (see VARARGIN)

% Choose default command line output for rawdata
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes rawdata wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = rawdata_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function inputName_Callback(hObject, eventdata, handles)
% hObject    handle to inputName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputName as text
%        str2double(get(hObject,'String')) returns contents of inputName as a double


% --- Executes during object creation, after setting all properties.
function inputName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_x_Callback(hObject, eventdata, handles)
% hObject    handle to edit_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_x as text
%        str2double(get(hObject,'String')) returns contents of edit_x as a double


% --- Executes during object creation, after setting all properties.
function edit_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_y_Callback(hObject, eventdata, handles)
% hObject    handle to edit_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_y as text
%        str2double(get(hObject,'String')) returns contents of edit_y as a double


% --- Executes during object creation, after setting all properties.
function edit_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_z_Callback(hObject, eventdata, handles)
% hObject    handle to edit_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_z as text
%        str2double(get(hObject,'String')) returns contents of edit_z as a double


% --- Executes during object creation, after setting all properties.
function edit_z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;



function edit_pv_Callback(hObject, eventdata, handles)
% hObject    handle to edit_pv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_pv as text
%        str2double(get(hObject,'String')) returns contents of edit_pv as a double


% --- Executes during object creation, after setting all properties.
function edit_pv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_pv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% 
% function edit31_Callback(hObject, eventdata, handles)
% % hObject    handle to edit31 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% % Hints: get(hObject,'String') returns contents of edit31 as text
% %        str2double(get(hObject,'String')) returns contents of edit31 as a double
% 
% 
% % --- Executes during object creation, after setting all properties.
% function edit31_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to edit31 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% 
% % Hint: edit controls usually have a white background on Windows.
% %       See ISPC and COMPUTER.
% if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
%     set(hObject,'BackgroundColor','white');
% end


function edit_por_Callback(hObject, eventdata, handles)
% hObject    handle to edit_por (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_por as text
%        str2double(get(hObject,'String')) returns contents of edit_por as a double

% --- Executes during object creation, after setting all properties.
function edit_por_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_por (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit_time_Callback(hObject, eventdata, handles)
% hObject    handle to edit_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_time as text
%        str2double(get(hObject,'String')) returns contents of edit_time as a double

% --- Executes during object creation, after setting all properties.
function edit_time_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function EPCI1_Callback(hObject, eventdata, handles)
% hObject    handle to EPCI1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EPCI1 as text
%        str2double(get(hObject,'String')) returns contents of EPCI1 as a double

% --- Executes during object creation, after setting all properties.
function EPCI1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EPCI1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function EPCI2_Callback(hObject, eventdata, handles)
% hObject    handle to EPCI2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EPCI2 as text
%        str2double(get(hObject,'String')) returns contents of EPCI2 as a double

% --- Executes during object creation, after setting all properties.
function EPCI2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EPCI2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function EPCI_Callback(hObject, eventdata, handles)
% hObject    handle to EPCI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EPCI as text
%        str2double(get(hObject,'String')) returns contents of EPCI as a double

% --- Executes during object creation, after setting all properties.
function EPCI_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EPCI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname] = uigetfile({'*.raw'},'Pick an input-file');
if isequal(filename,0)
   disp('User selected Cancel')
else
   disp(['User selected', fullfile(pathname, filename)])
  
end

fileInput = strcat(pathname,filename);

set(handles.inputName, 'string', fileInput);

% --- Executes on button press in pushbutton2.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = str2num(get(handles.edit_x,'string'));
y = str2num(get(handles.edit_y,'string'));
z = str2num(get(handles.edit_z,'string'));
pv= str2num(get(handles.edit_pv,'string'));

filename=get(handles.inputName, 'string');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

h = waitbar(0,'Computing EPCI value...');
set(h,'doublebuffer','on');


fname=[filename];
fid=fopen(fname,'r');
img=fread(fid,'uint8');
fclose(fid);
pore=reshape(img,[x,y,z]);


    if pv==1
    
       pore=logical(pore/255);
   elseif pv==0
          pore=~pore;
   end


[N1,N2,N3]=size(pore);

pore(:,:,:)=pore(:,end:-1:1,:);
pore3d=imrotate(pore,90);
    

porosity = mean(pore3d(:));  % total pore pixel number



tic;


porosity=mean(pore3d(:));
pore3d=logical(pore3d);
[N1,N2,N3]=size(pore3d);
output1=zeros(N1,N2,N3);
output2=zeros(N1,N2,N3);

for i=1:N3-1   
     if i>=N3-10
     waitbar(i/(N3-1),h,'Computing is finishing!')
     else
         str=['Computing    ', num2str(i/(N3-1)*100, '%.2f'),'  %...'];
         waitbar(i/(N3-1), h, str);
     end

    
    if i==1
        
         output1(:,:,1)=pore3d(:,:,2)&( imtranslate(pore3d(:,:,1),[0,0])...
             |imtranslate(pore3d(:,:,1),[1,0])...
             |imtranslate(pore3d(:,:,1),[1,1])...
             |imtranslate(pore3d(:,:,1),[0,1])...
             |imtranslate(pore3d(:,:,1),[-1,1])...
             |imtranslate(pore3d(:,:,1),[-1,0])...
             |imtranslate(pore3d(:,:,1),[-1,-1])...
             |imtranslate(pore3d(:,:,1),[0,-1])...
             |imtranslate(pore3d(:,:,1),[1,-1])); 
         
         output2(:,:,1)=pore3d(:,:,N3-1)&( imtranslate(pore3d(:,:,N3),[0,0])...
             |imtranslate(pore3d(:,:,N3),[1,0])...
             |imtranslate(pore3d(:,:,N3),[1,1])...
             |imtranslate(pore3d(:,:,N3),[0,1])...
             |imtranslate(pore3d(:,:,N3),[-1,1])...
             |imtranslate(pore3d(:,:,N3),[-1,0])...
             |imtranslate(pore3d(:,:,N3),[-1,-1])...
             |imtranslate(pore3d(:,:,N3),[0,-1])...
             |imtranslate(pore3d(:,:,N3),[1,-1])); 
       
        

    else
        
        output1(:,:,i)=pore3d(:,:,i+1) & ( imtranslate(output1(:,:,i-1),[0,0])...
            |imtranslate(output1(:,:,i-1),[1,0])...
            |imtranslate(output1(:,:,i-1),[1,1])...
            |imtranslate(output1(:,:,i-1),[0,1])...
            |imtranslate(output1(:,:,i-1),[-1,1])...
            |imtranslate(output1(:,:,i-1),[-1,0])...
            |imtranslate(output1(:,:,i-1),[-1,-1])...
            |imtranslate(output1(:,:,i-1),[0,-1])...
            |imtranslate(output1(:,:,i-1),[1,-1]));
        
        output2(:,:,i)=pore3d(:,:,N3-i) & ( imtranslate(output2(:,:,i-1),[0,0])...
            |imtranslate(output2(:,:,i-1),[1,0])...
            |imtranslate(output2(:,:,i-1),[1,1])...
            |imtranslate(output2(:,:,i-1),[0,1])...
            |imtranslate(output2(:,:,i-1),[-1,1])...
            |imtranslate(output2(:,:,i-1),[-1,0])...
            |imtranslate(output2(:,:,i-1),[-1,-1])...
            |imtranslate(output2(:,:,i-1),[0,-1])...
            |imtranslate(output2(:,:,i-1),[1,-1]));



    end  
    

end



EPCI1 = sum(sum(output1(:,:,N3-1)))/(N1*N2);
EPCI2 = sum(sum(output2(:,:,N3-1)))/(N1*N2);



EPCI  =  (EPCI1 + EPCI2)/2  % EPIC == effictive pore connectivity index

 
 close(h);
 t=toc;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%*********************Output***********************************************
set(handles.edit_por,'string',num2str(porosity));
set(handles.edit_time,'string',strcat(num2str(t),' ','s'));
set(handles.EPCI1,'string',num2str(EPCI1));
set(handles.EPCI2,'string',num2str(EPCI2));
set(handles.EPCI,'string',num2str(EPCI));



function boxplot3(x0,y0,z0,Lx,Ly,Lz)
x=[x0 x0 x0 x0 x0+Lx x0+Lx x0+Lx x0+Lx];
y=[y0 y0 y0+Ly y0+Ly y0 y0 y0+Ly y0+Ly];
z=[z0 z0+Lz z0+Lz z0 z0 z0+Lz z0+Lz z0];
index=zeros(6,5);
index(1,:)=[1 2 3 4 1];
index(2,:)=[5 6 7 8 5];
index(3,:)=[1 2 6 5 1];
index(4,:)=[4 3 7 8 4];
index(5,:)=[2 6 7 3 2];
index(6,:)=[1 5 8 4 1];
for k=1:6
    plot3(x(index(k,:)),y(index(k,:)),z(index(k,:)));
    hold on;
end
