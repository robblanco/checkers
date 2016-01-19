sig canonical.

accum_sig certificatesLKF.

type &=		cert -> cert -> cert.
type $1     	cert -> cert .
type !+=      	choice -> cert -> cert.
type e=  	A -> cert -> cert.
type a= 	(A -> cert) -> cert.
type $ 		cert.
type idx=	index -> cert -> cert.
type $i 	index -> cert.
type c=		form -> cert -> cert -> cert.

% Generator
type elaborate cert -> int -> cert -> cert.
type pid       int ->  index -> index.
