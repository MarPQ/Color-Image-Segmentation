function [Im2] = segmentaColor(Im,Hmin,Hmax,Smin,Smax,Vmin,Vmax)

[x,y,~]=size(Im);
Im2=zeros(x,y,3, 'uint8');
mascara=zeros(x,y,1);
Hmin=Hmin/360; Hmax=Hmax/360;
hsvIM=rgb2hsv(Im);
for  i=1:x
    for j=1:y
        if hsvIM(i,j,1)>= Hmin && hsvIM(i,j,1) <= Hmax && hsvIM(i,j,2)>=Smin && hsvIM(i,j,2)<=Smax && hsvIM(i,j,3)>=Vmin && hsvIM(i,j,3)<=Vmax
            mascara(i,j,1)=1;
        else
            mascara(i,j,1)=0;
        end
        if mascara(i,j,1)==0
            Im2(i,j,1:3)=0;
        end
    end
end
end

