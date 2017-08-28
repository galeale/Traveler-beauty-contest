function [percType] = playthegame(percType,n)
%PERCTYPE restituisce la percentuale dei tipi per il passo successivo
    totPayoffs=findpayoffs(percType,n);
    percType(:)=percType(:)*totPayoffs(:)/mean(totPayoffs);
end

