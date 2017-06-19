%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                          %
%  Functia calculeaza valorile proprii     %
%  alfalte in intervalele fiecarei valori  % 
%  cu ajutorul metodei bisectiei.          %
%                                          %
%                                          %
%  GEORGESCU ALEXANDU IONUT                %
%  CTI 313CD.                              %  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function vp = CalculezValProprii(d, s, m, tol)
[n p] = size(d);

if( m > n)
 m = n;
endif
%GENEREZ INTERVALELE.
r = IntervaleValProprii(d, s, m);

%CREEZ VECOTRUL.
vp = zeros(1,m);

for i = 1:1:m
  %CALCULEZ VALORILE PROPRII CU O PRECIZIE TOL.
  %BISECTIE.
  vp(i) = bisectie( r(i) , r(i+1) , tol , m , d , s , i );

endfor
endfunction

function x = bisectie( a , b , tol , m , d ,s , k)

while ( b-a > tol )

 c = (a+b)/2;

%SCUZE DE TRY HARD DAR AM INTELES CA TREBUIA SA FIE O FUNCTIE
%MAI MARE, ASA CA AM FACUT FUNCTIA PUTIN MAI MARE^^
%IMI CALUCLEZ NUMARUL DE VALORI PROPII MAI MICI DECAT JUMATATEA INTERVALULUI

 ESTI_AICI_PISI = NrValProprii(d , s , c );
    %DACA NR DE VALORI PROPII = K, CATE AR TREBUI SA FIE
    %SE CAUTA INTERVALUL A-C
    if( ESTI_AICI_PISI == k )
        b = c;
    %ALTFEL IN C-B
    elseif( ESTI_AICI_PISI == k-1)
        a = c;
    endif
endwhile

x = c;

endfunction
