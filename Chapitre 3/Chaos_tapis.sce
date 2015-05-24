H=[1/3 0
   0 1/3 ];
T2=[1/3;0];
T3=[2/3;0];
T4=[0;1/3];
T5=[0;2/3];
T6=[1/3;2/3];
T7=[2/3;2/3];
T8=[2/3;1/3];
cas=8

n=700;
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
                x(:,j+1)=H*x(:,j)+T4
            case 5 then
                x(:,j+1)=H*x(:,j)+T5;
            case 6 then
                x(:,j+1)=H*x(:,j)+T6;
            case 7 then
                x(:,j+1)=H*x(:,j)+T7;
            case 8 then
                x(:,j+1)=H*x(:,j)+T8;            
        end
            
    end
    X=x(1,:);
    Y=x(2,:);
    plot(X,Y,'.','markersize',1);
end
