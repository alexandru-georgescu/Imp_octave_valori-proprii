%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Implementare%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CERINTA 1:
 
 -Am salvat dimensiunea vectorului d pentru a stii cat trebuie parcurs while.
 -Am calculat valoarea polinomului 0 si 1 separat pentru ca sa poata respecta
 forma celorlante componente.
 -Am aplicat formula de calcularea a polinomului in functie de un lambda dat.

CERINTA 2:
 
 -Ma folosesc de functia din cerinta 1.
 -Imi salvez dimensiunea vectorului d.
 -Ma folosesc de realatia din teorie in care spune ca numarul valorilor proprii
 mai mic decat o valoare valmbda este egla cu numarul de schimbari de semn 
 dintre polinoame.
 -O variabila creste de fiecare data cand se schimba semnul de la un polinom
 la altul.
 -Se returneaza variabila

CERINTA 3:
 
 -Imi determin lungimea vectorului.
 -Parcurg un for pentru a determina suma din modulele bij, i != j.
 -Calculez minimul d(i) - t(i) (suma din module a lui s) -> rezultand limita
 inferioara.
 -Calculez maximul dintre d(i) + t(i) -> rezultand limita superioara.

 
CERINTA 4:
 
 -Pentru inceput daca dimensiunea data este mai mare decat dimensiunea 
 vectorlui d atunci m se va actualiza la dimenisunea lui d.
 -Creez vectorul care reprezinta intervalele pentru fiecare valoare proprie.
 -Ma folosesc de limite pentru a determina intervalul pe care lucrez.
 -Intr-un for imi salvez mijlocul dintre limite.
 -Calculez nr de valori proprii decat mijlocul.
 -Apoi cat timp numarul de valori proprii nu corespunde cu nr de iteratie
 de pe for atunc voi avea un H care initial este (limita sup - limita inf)/2
 care mereu se va impartii la doi pentru a calcula mijlocul iar apoi se aplica
 metoda cautarii binare  iar la sfarsit se actualizeaza numarul de va proprii
 mai mici decat mijloc (sau bisectiei).
 -La sfarsit rezulta un vector care contine intervalele fiecare valori propii 
 cuprinse intre limta sup si limita inferioara.

CERINTA 5:

 -Pentru inceput daca dimensiunea data este mai mare decat dimensiunea 
 vectorlui d atunci m se va actualiza la dimenisunea lui d.
 -Imi creez intervalele de la Cerinta 4.
 -Imi construiesc vectorul.
 -Calculez valorile propii cu precizia data prin metoda bisectiei.
 -Returnez vectorului cu valori proprii.
 -Metoda bisectiei:
   Cat timp valoare din capat - valoare de inceput este mai mare decat tol 
   creez mijlocul dintre a si b.
   Calculez numarul de valori propii mai mic decat c.
   Daca numarul de valori propii este egal cu k (numarul de iteratie ) atunci
   b va devenii c adica se cauta in jumatatea inferioara  altfel se cauta
   in jumatatea superioara.
   Cand b-a este mai mic decat tol se returneaza valoarea lui c reprezentand 
   valoarea valorii proprii cu o precizie tol.
CERINTA 6: 

 -Era si ea implementata, aparent nu inteleg de ce nu o mai gasesc.

 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Implementare%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
