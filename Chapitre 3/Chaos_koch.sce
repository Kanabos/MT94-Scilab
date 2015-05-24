H=[1/3 0
   0 1/3 ];
T2=[1/3;0];
T3=[1/2;sqrt(3)/6];
T4=[2/3;0];
R2=[cos(%pi/3) -sin(%pi/3)
    sin(%pi/3) cos(%pi/3)];
R3=-[cos(2*%pi/3) -sin(2*%pi/3)
    sin(2*%pi/3) cos(2*%pi/3)];
cas=4

n=100;
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
                x(:,j+1)=H*R2*x(:,j)+T2;
            case 3 then
                x(:,j+1)=H*R3*x(:,j)+T3;
            case 4 then
                x(:,j+1)=H*x(:,j)+T4;
        end
    end
    X=x(1,:);
    Y=x(2,:);
    plot(X,Y,'.','markersize',1);
end
