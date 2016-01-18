module bfolns1.

accumulate lkf-kernel.
accumulate binary_res_fol_nosub.
accumulate resolution_steps.

problem "bfolns1"
  (n (g a) !-!
   p (g (h (h (a)))) !-!
   some (x\ (p (g (x))) &+& (n (g (h (x))))))
	(rsteps [resolv (rid_ (idx 1)) (rid_ (idx 3)) 4, resolv (rid_ (idx 3)) (rid_ (idx 4)) 5, resolv (rid_ (idx 2)) (rid_ (idx 5)) 0] estate)
  (map [pr 1 (n (g a)),
   pr 2 (p (g (h (h (a))))),
   pr 3 (some (x\ (p (g (x))) &+& (n (g (h (x)))))),
   pr 4 (n (g (h (a)))),
   pr 5 (n (g (h (h (a))))),
   pr 0 t+]).

