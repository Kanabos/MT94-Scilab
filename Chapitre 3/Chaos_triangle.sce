H=[1/2 0
   0 1/2 ];
T2=[1/2;0];
T3=[1/4;sqrt(0.5^2-0.25^2)];
cas=3

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
        end
    end
    X=x(1,:);
    Y=x(2,:);
    plot(X,Y,'.','markersize',1);
end
