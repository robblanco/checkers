module bfol1pair.

accumulate lkf-kernel.
accumulate binary_res_fol.
accumulate binary_res_fol_nosub.
accumulate pairing.
accumulate resolution_steps.

problem "bfol1pair"
  (n (g a) !-!
   p (g (h (h (a)))) !-!
   some (x\ (p (g (x))) &+& (n (g (h (x))))))
(
	(rsteps [resolv (rid_ (idx 1)) (rid_ (idx 3)) 4, resolv (rid_ (idx 3)) (rid_ (idx 4)) 5, resolv (rid_ (idx 2)) (rid_ (idx 5)) 0] estate)
<c>
	(rsteps [resolv (rid (idx 1) (sub [])) (rid (idx 3) (sub [a])) 4, resolv (rid (idx 3) (sub [h (a)])) (rid (idx 4) (sub [])) 5, resolv (rid (idx 2) (sub [])) (rid (idx 5) (sub [])) 0] estate)
)
  (map [pr 1 (n (g a)),
   pr 2 (p (g (h (h (a))))),
   pr 3 (some (x\ (p (g (x))) &+& (n (g (h (x)))))),
   pr 4 (n (g (h (a)))),
   pr 5 (n (g (h (h (a))))),
   pr 0 t+]).

problem "bfol1pair2"
  (n (g a) !-!
   p (g (h (h (a)))) !-!
   some (x\ (p (g (x))) &+& (n (g (h (x))))))
(
	(rsteps [resolv (rid_ (idx 1)) (rid_ (idx 3)) 4, resolv (rid_ (idx 3)) (rid_ (idx 4)) 5, resolv (rid_ (idx 2)) (rid_ (idx 5)) 0] estate)
<c>
	(rsteps [resolv (rid (idx 1) (sub _)) (rid (idx 3) (sub _)) 4, resolv (rid (idx 3) (sub _)) (rid (idx 4) (sub _)) 5, resolv (rid (idx 2) (sub _)) (rid (idx 5) (sub _)) 0] estate)
)
  (map [pr 1 (n (g a)),
   pr 2 (p (g (h (h (a))))),
   pr 3 (some (x\ (p (g (x))) &+& (n (g (h (x)))))),
   pr 4 (n (g (h (a)))),
   pr 5 (n (g (h (h (a))))),
   pr 0 t+]).

problem "bfol1pair3"
  (n (g a) !-!
   p (g (h (h (a)))) !-!
   some (x\ (p (g (x))) &+& (n (g (h (x))))))
(
	(rsteps [resolv (rid_ (idx 1)) (rid_ (idx 3)) 4, resolv (rid_ (idx 3)) (rid_ (idx 4)) 5, resolv (rid_ (idx 2)) (rid_ (idx 5)) 0] estate)
<c>
	(rsteps [resolv (rid (idx 1) (sub S1)) (rid (idx 3) (sub S2)) 4, resolv (rid (idx 3) (sub S3)) (rid (idx 4) (sub S4)) 5, resolv (rid (idx 2) (sub S5)) (rid (idx 5) (sub S6)) 0] estate)
)
  (map [pr 1 (n (g a)),
   pr 2 (p (g (h (h (a))))),
   pr 3 (some (x\ (p (g (x))) &+& (n (g (h (x)))))),
   pr 4 (n (g (h (a)))),
   pr 5 (n (g (h (h (a))))),
   pr 0 t+]).