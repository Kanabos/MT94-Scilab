cd C:\Users\OS\Documents\Synchronisé\Cours\MT94\TD°2\SVD\
k=read("lena.csv",512,512);
[U,Sigma,V]=svd(k');
W=V';//Rotation pour image droite
gres=[100]
for i=1:length(gres);
    //subplot(3,2,i);
    rez=gres(i)
    A=U(:,1:rez)*Sigma(1:rez,1:rez)*W(1:rez,:);
    xset('colormap',graycolormap(256));
    x=[1:512];
    y=[512:-1:1];
    grayplot(x,y,A);
    isoview(0,512,0,512)
    title('k='+string(rez))
    
end
