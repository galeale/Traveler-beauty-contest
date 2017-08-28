function [ outcome ] = typepayoff( playerType,oldtarget )
%TYPEPAYOFF Summary of this function goes here
%  restituisce le giocate dei giocatori selezionati in playerType
% i tipi corrispondo all'indice meno uno
outcome=zeros(length(playerType),1);
    if find(playerType==1)
        outcome(find(playerType==1))=int8(rand*100);
    elseif find(playerType==2)
        outcome(find(playerType==2))=int8(rand*66);
    elseif find(playerType==3)

    elseif find(playerType==4)

    elseif find(playerType==5)

    elseif find(playerType==6)

    else
        disp('??');
    end
end

