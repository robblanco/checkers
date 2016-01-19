module canonical.

decide_ke (idx= I C) I C.
release_ke ($1 C) C.
store_kc (idx= I C) _ I C.
initial_ke ($i I) I.
all_kc(a= C) C.
some_ke (e= W C) W C.
andNeg_kc (&= C C') _ C C'.
andPos_ke (&= C C') _ C C'.
orNeg_kc ($1 C) _ C.
orPos_ke (!+= D C) _ D C.
true_ke $.
false_kc ($1 C) C.
cut_ke (c= F C C') F C C' .

% Generator
decide_ke
	(elaborate Cin D (idx= (pid J I) C))
	(pid J I)
	(elaborate Cout D C)
	:-
	decide_ke Cin I Cout.

release_ke
	(elaborate Cin D ($1 C))
	(elaborate Cout D C)
	:-
	release_ke Cin Cout.

store_kc
	(elaborate Cin D (idx= (pid D I) C))
	F
	(pid D I)
	(elaborate Cout D' C)
	:-
	store_kc Cin F I Cout,
	D' is (D + 1).

initial_ke
	(elaborate Cin D ($i (pid J I) ))
	(pid J I)
	:-
	initial_ke Cin I.

all_kc
	(elaborate Cin D (a= C))
	(x\ (elaborate (Cout x) D (C x)))
	:-
	all_kc Cin Cout.

some_ke
	(elaborate Cin D (e= W C))
	W
	(elaborate Cout D C)
	:-
	some_ke Cin W Cout.

andNeg_kc
	(elaborate Cin D (&= C C'))
	F
	(elaborate Cout D C)
	(elaborate Cout' D C')
	:-
	andNeg_kc Cin F Cout Cout'.

andPos_ke
	(elaborate Cin D (&= C C'))
	F
	(elaborate Cout D C)
	(elaborate Cout' D C')
	:-
	andPos_ke Cin F Cout Cout'.

orNeg_kc
	(elaborate Cin D ($1 C))
	F
	(elaborate Cout D C)
	:-
	orNeg_kc Cin F Cout.

orPos_ke
	(elaborate Cin D (!+= Dir C))
	F
	Dir
	(elaborate Cout D C)
	:-
	orPos_ke Cin F Dir Cout.

true_ke
	(elaborate Cin D $)
	:-
	true_ke Cin.

false_kc
	(elaborate Cin D ($1 C))
	(elaborate Cout D C)
	:-
	false_kc Cin Cout.

cut_ke
	(elaborate Cin D (c= F C C'))
	F
	(elaborate Cout D C)
	(elaborate Cout' D C')
	:-
	cut_ke Cin F Cout Cout'.
