clear;clc

[fn,pn]=uigetfile('*.raw','????');


fid=fopen(fn,'r');
img=fread(fid,'uint8');
fclose(fid);

x=input('Please input x =  ');

y=input('Please input y =  ');
z=input('Please input z =  ');
pv=input('Please input pore value=  ');

pore=reshape(img,[x,y,z]);


    if pv==1
    
       pore=logical(pore/255);
   elseif pv==0
          pore=~pore;
   end


[N1,N2,N3]=size(pore);

pore(:,:,:)=pore(:,end:-1:1,:);
pore3d=imrotate(pore,90);
    

porosity = mean(pore3d(:)) % total pore pixel number



tic;


porosity=mean(pore3d(:));
pore3d=logical(pore3d);
[N1,N2,N3]=size(pore3d);
output1=zeros(N1,N2,N3);
output2=zeros(N1,N2,N3);

for i=1:N3-1   
 
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
    

    step = i
end



EPCI1 = sum(sum(output1(:,:,N3-1)))/(N1*N2);
EPCI2 = sum(sum(output2(:,:,N3-1)))/(N1*N2);



EPCI_value  =  (EPCI1 + EPCI2)/2  % EPIC == effictive pore connectivity index


 Running_Time =toc
 
 disp('Finished!!')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%*********************Output***********************************************


