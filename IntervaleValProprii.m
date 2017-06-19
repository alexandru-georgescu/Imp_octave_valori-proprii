%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                          %
%  Functia calculeaza limita superioara    %
%  si infererioara a fiecarei valori       % 
%  proprii.                                %
%                                          %
%                                          %
%  GEORGESCU ALEXANDU IONUT                %
%  CTI 313CD.                              %  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function r = IntervaleValProprii(d, s, m)
[n p] = size(d);

%CAZ IN CARE M DEPASESTE DIMENSIUNEA VECTORULUI.
if( m > n )  
  m = n; 
endif 

%CREEZ VECTORUL UNDE SE VOR INTRODUCE INTERVALELE
r = zeros(1,m+1);

%CALCULEZ LIMITELE
[limita_inf, limita_sup] = LimiteValProprii(d, s);

%SALVEZ INCEPUTUL INTERVALULUI.
r(1) = limita_inf;

%FOR IN CARE SE CALCULEAZA FIECARE R.
for k = m:-1:1

%MIJLOC INTERVAL
MIJ = ( r(1) + limita_sup)/2;

%LUNGIMEA MIJLOC - LIM SUP
H = ( limita_sup - r(1) )/2;

%NUMARUL DE VALORI PROPRII MAI MICI DECAT MIJ.
 numvp = NrValProprii(d, s, MIJ);

%CALCULAREA INTERVALUL VALORII PROPRII.
while( numvp != k )

 H = H/2;
 if ( numvp < k )
   MIJ = MIJ + H;
 elseif ( numvp > k )
   MIJ = MIJ - H;
 endif

 numvp = NrValProprii(d, s, MIJ);

endwhile

%SALVAREA CAPATULUI SUPERIOR INTERVALULUI VALORII.
 r(k+1) = MIJ;
 limita_sup = MIJ;

endfor
endfunction
