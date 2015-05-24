r=1/3
H=[ r 0
   0 r ];
T2=[1-r;0];
T3=2.*[r;0]+2.*[r/2;r*sind(60)];
T4=[0;2*r*sind(60)]-[r;0];
T5=[0;4*r*sind(60)];
T6=[0;4*r*sind(60)]+[1-r;0]
cas=6

n=600;
x=zeros(2,n)
x(:,1)=[0;0]
clf;
set(gca(),'isoview','on');
for i=1:n
    for j=1:n-1
        ran=floor(1+ cas*rand(1 ,1));
        select ran
            case 1 then
                x(:,j+1)=H*x(:,j)
            case 2 then
                x(:,j+1)=H*x(:,j)+T2;
            case 3 then
                x(:,j+1)=H*x(:,j)+T3;
            case 4 then
                x(:,j+1)=H*x(:,j)+T4;
            case 5 then
                x(:,j+1)=H*x(:,j)+T5;
            case 6 then
                x(:,j+1)=H*x(:,j)+T6;
        end
    end
    X=x(1,:);
    Y=x(2,:);
    plot(X,Y,'.','markersize',1);
end
