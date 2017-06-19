%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                          %
%  Functia calculeaza limita superioara   %
%  si infererioara in care se afla toate   %
%  valorile proprii.                       %
%                                          %
%                                          %
%  GEORGESCU ALEXANDU IONUT                %
%  CTI 313CD.                              %  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [limita_inf, limita_sup] = LimiteValProprii(d, s)
%transform vectorii in vectori linii.
d = d';
s = s';

%aflu dimenziunea si creez vectorul t.
[m n] = size(d);
t = zeros(1,n);

%Creez valorile de pe fiecare t
%Suma din modul de bij, i != j
for i = 1:n
 
  if( i == 1 )
    t(i) = abs(s(i));  

  elseif( i == n )
    t(i) = abs(s(i-1)); 
  
  else
    t(i) = abs(s(i-1)) + abs(s(i));
  endif

endfor

%Apelez functii care imi calculeaza minim si maxim.
limita_inf = min(d,t,n);
limita_sup = max(d,t,n);

endfunction

%CALCULARE MAXIM.
function max = max(d,t,n)

max = d(1) + t(1);
for i = 2:n

  value = d(i) + t(i);
  if( max < value )
    max = value;
  endif

endfor

endfunction

%CALCULARE MINIM.
function min = min(d,t,n)

min = d(1) - t(1);

for i = 2:n

  value = d(i) - t(i);
  if( min > value )
    min = value;
  endif

endfor

endfunction
