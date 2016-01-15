module pairing.

all_kc (C1 <c> B1) (x\ (C2 x) <c> (B2 x)) :-
	all_kc C1 C2, all_kc B1 B2.
andNeg_kc (C1 <c> B1) F (C2 <c> B2) (C3 <c> B3) :-
	andNeg_kc C1 F C2 C3, andNeg_kc B1 F B2 B3.
andPos_ke (C1 <c> B1) F (C2 <c> B2) (C3 <c> B3) :-
	andPos_ke C1 F C2 C3, andPos_ke B1 F B2 B3.
andPos_k (C1 <c> B1) F D (C2 <c> B2) (C3 <c> B3) :-
	andPos_k C1 F D C2 C3, andPos_k B1 F D B2 B3.
cut_ke (C1 <c> B1) F (C2 <c> B2) (C3 <c> B3) :-
	cut_ke C1 F C2 C3, cut_ke B1 F B2 B3.
decide_ke (C1 <c> B1) (Ic <i> Ib) (C2 <c> B2) :-
	decide_ke C1 Ic C2, decide_ke B1 Ib B2.
false_kc (C1 <c> B1) (C2 <c> B2) :-
	false_kc C1 C2, false_kc B1 B2.
initial_ke (C <c> B) (Ic <i> Ib) :-
	initial_ke C Ic, initial_ke B Ib.
orNeg_kc (C1 <c> B1) F (C2 <c> B2) :-
	orNeg_kc C1 F C2, orNeg_kc B1 F B2.
orPos_ke (C1 <c> B1) F D (C2 <c> B2) :-
	orPos_ke C1 F D C2, orPos_ke B1 F D B2.
release_ke (C1 <c> B1) (C2 <c> B2) :-
	release_ke C1 C2, release_ke B1 B2.
some_ke (C1 <c> B1) W (C2 <c> B2) :-
	some_ke C1 W C2, some_ke B1 W B2.
store_kc (C1 <c> B1) F (Ic <i> Ib) (C2 <c> B2) :-
	store_kc C1 F Ic C2, store_kc B1 F Ib B2.
true_ke (C <c> B) :-
	true_ke C, true_ke B.
