function [r,A,rtot]=dynamique(m,s,X0,tps)
	//Construction de la matrice A
	i=length(m);
	A=zeros(i,i);//Init A
	A(1,:)=m //Remplissage des m_i dans la premièere ligne
	for j=1:i-1 //Remplissage des s_i en diagonale décalée
		A(j+1,j)=s(j)
	end

	X=zeros(i,i) //init X
    X(:,1)=X0'
	for k=1:tps-1
		X(:,k+1)=A*X(:,k);
	end
    r=X(:,k)
    rtot=X
endfunction
