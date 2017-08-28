function [player_payoffs,target] = playonce(playerType,percType,oldtarget)
%PLAYONCE plays the TBC game once.
%%strategie fittizie per ogni tipo: la casella e' il tipo, il contenuto
%%quello che gioca
outcome=typepayoff(playerType,oldtarget);
results=zeros(length(percType),1);
probabilities=zeros(length(percType),1);
%%prendo le giocate dei giocatori, faccio la media a 2/3
target=sum(outcome)*2/3/length(playerType);
%%guardo chi si avvicina di piu'
outcome=abs(outcome-target);
indexes=find(outcome==min(outcome));
%%chi si avvicina di piu' vince quello che punta, gli altri 0; dubbio sul
%%caso di piu' vincitori
probabilities(1:end)=prod(percType)./percType(1:end);
results(playerType(indexes))=sum(Strategies(playerType(indexes)))/length(indexes);
player_payoffs=results.*probabilities;
end

