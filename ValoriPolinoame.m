%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           %
%  Functia calculeaza valoarea polinoamelor % 
%  formate de matricea tridiagonala.        %
%                                           %
%                                           %
%  GEORGESCU ALEXANDU IONUT                 %
%  CTI 313CD.                               %  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function P = ValoriPolinoame(d, s, val_lambda)
%TRANSFORM VECTORII DIN COLOANE IN LINII.
d = d';
s = s';
i = 3;

%SALVEZ DIMENSIUNILE.
[m n] = size(d);
n = n+1;

%CREEZ P.
P = zeros(1,n);

%CALCULEZ PRIMELE DOUA PLINOAME.
P(1) = 1;
P(1,2) = d(1) - val_lambda;

%NU-MI PLACE SA FOLOSESC FOR.
 while( i <= n ) 
  
  P(i) = ( d(i-1) - val_lambda )*P(i-1) - (s(i-2))^2 * P(i-2);   
  i++;

 endwhile
endfunction

