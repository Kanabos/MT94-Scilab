T2=[0;1.60];
T3=[0;0.16];
T4=[0;0.44];
R1=[0 0
    0 0.16];
R2=[0.85 0.04
    -0.04 0.85];
R3=[0.20 -0.26
    0.23 0.22];
R4=[-0.15 0.28
    0.26 0.24];

//    H= [0.25,0;0,0.25];
//    H3= [0.85,0;0,0.85];
//    R1= [cos((2*%pi)/5),-sin((2*%pi)/5);sin((2*%pi)/5),cos((2*%pi)/5)];
//    R2= [cos((-2*%pi)/5),-sin((-2*%pi)/5);sin((-2*%pi)/5),cos((-2*%pi)/5)];
//    R3= [cos(0.05),sin(0.05);-sin(0.05),cos(0.05)];
cas=4

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
                x(:,j+1)=R1*x(:,j)
            case 2 then
                x(:,j+1)=R2*x(:,j)+T2;
            case 3 then
                x(:,j+1)=R3*x(:,j)+T3;
            case 4 then
                x(:,j+1)=R4*x(:,j)+T4        
        end
            
    end
    X=x(1,:);
    Y=x(2,:);
    plot(X,Y,'.','markersize',1);
end
