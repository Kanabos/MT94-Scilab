l = read('~/lena.csv',512,512);
 
lena = l';
 
x = [1:512];
 
y = [512:-1:1];
 
xset('colormap',graycolormap(256));
 
isoview(0,512,0,512);
 
grayplot(x,y,lena)