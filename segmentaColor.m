function Im=segmentaColor(Im,Hmin,Hmax,Smin,Smax,Vmin,Vmax)

[x,y,~] = size(Im);
Im1=rgb2hsv(Im);
Hmin=Hmin/360;
Hmax=Hmax/360;
mascara=zeros(x,y,'uint8');
for i= 1:x
    for j= 1:y
            
          if (Im1(i,j,1)>=Hmin && Im1(i,j,1)<=Hmax) && (Im1(i,j,2)>=Smin && Im1(i,j,2)<=Smax) && (Im1(i,j,3)>=Vmin && Im1(i,j,3)<=Vmax)
              
              mascara(i,j)=255;
          end
          if mascara(i,j) == 0
              Im(i,j,1:3)=0;
          end
    end
end

end