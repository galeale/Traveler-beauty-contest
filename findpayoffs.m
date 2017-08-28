function [totPayoffs] = findpayoffs(percType,n)
%FINDPAYOFFS trova i payoff medi per i singoli tipi partendo dalla
%distribuzione percType, ma non evolve
%n numero di persone che estraggo tra i tipi: es 3 a 3, 4 a 4, n a n...
totPayoffs=zeros(length(percType),1);
Sets=nchoosek(1:length(percType),n);
    for k=1:nchoosek(length(percType),n) 
        playerType=Sets(k,:);
        target=0;
        for i=1:10 %se la strategia non evolve nel tempo, non ha senso
        %ripetere
              [totPayoffs, target]=totPayoffs+playonce(playerType,percType,target);
        end

    end

end

