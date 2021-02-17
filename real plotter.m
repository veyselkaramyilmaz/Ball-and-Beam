% real time plotting

clear all
close all
clc
if ~isempty(instrfind)
fclose(instrfind);
delete(instrfind); 
end
 

s = serial('COM3','BaudRate',9600);
fopen(s);
i=1;
%figure(1);
%figure(2);


while(1)
    
  
    data1(i)=str2double(fscanf(s));
    data2(i)=str2double(fscanf(s));
    %data3(i)=str2double(fscanf(s));
    
   % figure(1);
    plot(data1,'r','Linewidth',2);
    plot(data2,'b','Linewidth',1.5);
    hold on;
    grid on;
    ylim([0 20]);
    xlim([0 inf]);
    
    
    
%     figure(2);
%     plot(data1,'r','Linewidth',2);
%     plot(data3,'b','Linewidth',1.5);
%     hold on;
%     grid on;
%     ylim([0 20]);
%     xlim([0 inf]);
    
    
  
    pause(0.01); 
    i=i+1;
    title('Red=Referans     Blue=Konum');
    ylabel('Mesafe');
end
    


