function [v1,lambda,j]=puist(A,x0,Nmax,tol)
	j=2;
    lambda=0;
	x=zeros(length(x0),Nmax);
	x(:,1)=x0;
	u=zeros(length(x0),Nmax);
	u(:,1)=x0/(norm(x0,2))
	x(:,2)=A*u(:,1);
    u(:,2)=x(:,2)/(norm(x(:,2),2));
    x(:,3)=A*u(:,2);

    //Contruction d'un vecteur de tolérence adaptative !
    for k=1:length(x0)
    	vtol(k)=tol;
    	faux(k)=%f;
    end


    while(or((abs(abs(u(:,j))-abs(u(:,j-1))))>=vtol)&(j<Nmax))
	//while ((abs((abs(u(1,j))-abs(u(1,j-1)))))>=tol|(abs((abs(u(2,j))-abs(u(2,j-1)))))>=tol|(abs((abs(u(3,j))-abs(u(3,j-1)))))>=tol|(abs((abs(u(4,j))-abs(u(4,j-1)))))>=tol&(j<Nmax))
		j=j+1;
        u(:,j)=x(:,j)/(norm(x(:,j),2));
		x(:,j+1)=A*u(:,j);
		lambda=(u(:,j)')*A*u(:,j);
    end
    j=j+1;
    u(:,j)=x(:,j)/(norm(x(:,j),2));
    v1=u(:,j);
    //2. On prends pour vecteur orthogonal [-b,a,0,0]
endfunction
