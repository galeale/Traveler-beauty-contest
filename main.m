close all;
clear all;
%%perctype= percentuale dei vari tipi
%%n=numero dei 
n=3;
percType=[.1 .2 .3 .2 .2];
for k=1:100
    percType=playthegame(percType,n);
end