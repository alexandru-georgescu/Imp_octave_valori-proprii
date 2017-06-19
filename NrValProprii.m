%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                          %
%  Functia calculeaza valoarea numarul     %
%  polinoamelor formate de matricea        %
%  tridiagonala.                           %
%                                          %
%                                          %
%  GEORGESCU ALEXANDU IONUT                %
%  CTI 313CD.                              %  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function numvp = NrValProprii(d, s, val_lambda)

%CONSTRUIESC VECTORUL CU REZULTATUL POLINOAMELOR.
P = ValoriPolinoame(d, s, val_lambda);

%AFLU DIMENSIUNEA VECTORULI.
[m n] = size(P);
n = n-1;

%IMI IAU UN COUNT PENTRU SALVAREA NUMARULUI DE VALORI
%MAI MICI DECAT VAL_LAMBDA.
numvp = 0;

 for i = 1:n 

   %DACA URMATOR ESTE EGAL CU 0 PRIMESTE SEMNUL POLINOMULUI CURENT.
   if ( P(i+1) == 0 )
     P(i+1) = -1*(P(i));
   endif
   %DACA AU SEMNE OPUSE ATUNCI CRESTE NUMVP.
   if ( P(i) < 0  && P(i+1) > 0 )
     numvp++;
   endif

   %LAFEL CA SUS
   if ( P(i) > 0  && P(i+1) < 0 )
     numvp++;
   endif

 endfor
endfunction
