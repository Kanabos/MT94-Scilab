//Fonction récursive !
function ens=cantor(inf,sup,res)
    ens=cat(2,0,rcantor(inf,sup,res),1)
endfunction

function ens=rcantor(inf,sup,res)
    if res==0 then
        ens=[];
    else points=[inf*2/3+sup/3,inf/3+sup*2/3];
         ens = cat(2,rcantor(inf, points(1), res-1),points,rcantor(points(2),sup,res-1));
     end
endfunction
