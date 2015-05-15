module col065.

accumulate lkf-kernel.
accumulate eprover.
accumulate resolution_steps.

resProblem "col065" [(pr 20 (all (X1\ (all (X2\ (n ((apply (apply t X1) X2) == (apply X2 X1))))))) ),
(pr 19 (all (X1\ (all (X2\ (all (X3\ (n ((apply (apply (apply b X1) X2) X3) == (apply X1 (apply X2 X3)))))))))) ),
(pr 10 (all (X1\ (p ((apply (apply (apply (apply X1 (f X1)) (g X1)) (h X1)) (i X1)) == (apply (apply (f X1) (i X1)) (apply (g X1) (h X1))))))) )] 
(resteps [pm (id (idx 10)) (id (idx 11)) 9, pm (id (idx 9)) (id (idx 12)) 8, pm (id (idx 8)) (id (idx 13)) 7, pm (id (idx 7)) (id (idx 14)) 6, pm (id (idx 6)) (id (idx 15)) 5, pm (id (idx 5)) (id (idx 16)) 4, pm (id (idx 4)) (id (idx 17)) 3, pm (id (idx 3)) (id (idx 18)) 2, pm (id (idx 2)) (id (idx 19)) 1, pm (id (idx 1)) (id (idx 20)) 0])
 (map [
pr 8 (all (X1\ (p ((apply (apply (apply X1 (f (apply (apply b b) X1))) (apply (g (apply (apply b b) X1)) (h (apply (apply b b) X1)))) (i (apply (apply b b) X1))) == (apply (apply (f (apply (apply b b) X1)) (i (apply (apply b b) X1))) (apply (g (apply (apply b b) X1)) (h (apply (apply b b) X1)))))))),
pr 1 (all (X1\ (p ((apply (apply X1 (apply (g (apply (apply b b) (apply (apply b (apply t (apply (apply b b) X1))) (apply (apply b b) t)))) (h (apply (apply b b) (apply (apply b (apply t (apply (apply b b) X1))) (apply (apply b b) t)))))) (apply (f (apply (apply b b) (apply (apply b (apply t (apply (apply b b) X1))) (apply (apply b b) t)))) (i (apply (apply b b) (apply (apply b (apply t (apply (apply b b) X1))) (apply (apply b b) t)))))) == (apply (apply (f (apply (apply b b) (apply (apply b (apply t (apply (apply b b) X1))) (apply (apply b b) t)))) (i (apply (apply b b) (apply (apply b (apply t (apply (apply b b) X1))) (apply (apply b b) t))))) (apply (g (apply (apply b b) (apply (apply b (apply t (apply (apply b b) X1))) (apply (apply b b) t)))) (h (apply (apply b b) (apply (apply b (apply t (apply (apply b b) X1))) (apply (apply b b) t)))))))))),
pr 7 (all (X1\ (all (X2\ (p ((apply (apply (apply X1 (apply X2 (f (apply (apply b b) (apply (apply b X1) X2))))) (apply (g (apply (apply b b) (apply (apply b X1) X2))) (h (apply (apply b b) (apply (apply b X1) X2))))) (i (apply (apply b b) (apply (apply b X1) X2)))) == (apply (apply (f (apply (apply b b) (apply (apply b X1) X2))) (i (apply (apply b b) (apply (apply b X1) X2)))) (apply (g (apply (apply b b) (apply (apply b X1) X2))) (h (apply (apply b b) (apply (apply b X1) X2))))))))))),
pr 11 (all (X1\ (all (X2\ (all (X3\ (n ((apply (apply (apply b X1) X2) X3) == (apply X1 (apply X2 X3)))))))))),
pr 12 (all (X1\ (all (X2\ (all (X3\ (n ((apply (apply (apply b X1) X2) X3) == (apply X1 (apply X2 X3)))))))))),
pr 13 (all (X1\ (all (X2\ (all (X3\ (n ((apply (apply (apply b X1) X2) X3) == (apply X1 (apply X2 X3)))))))))),
pr 15 (all (X1\ (all (X2\ (all (X3\ (n ((apply (apply (apply b X1) X2) X3) == (apply X1 (apply X2 X3)))))))))),
pr 16 (all (X1\ (all (X2\ (all (X3\ (n ((apply (apply (apply b X1) X2) X3) == (apply X1 (apply X2 X3)))))))))),
pr 18 (all (X1\ (all (X2\ (all (X3\ (n ((apply (apply (apply b X1) X2) X3) == (apply X1 (apply X2 X3)))))))))),
pr 19 (all (X1\ (all (X2\ (all (X3\ (n ((apply (apply (apply b X1) X2) X3) == (apply X1 (apply X2 X3)))))))))),
pr 3 (all (X1\ (p ((apply (apply (apply X1 (apply (g (apply (apply b b) (apply (apply b (apply t X1)) (apply (apply b b) t)))) (h (apply (apply b b) (apply (apply b (apply t X1)) (apply (apply b b) t)))))) (f (apply (apply b b) (apply (apply b (apply t X1)) (apply (apply b b) t))))) (i (apply (apply b b) (apply (apply b (apply t X1)) (apply (apply b b) t))))) == (apply (apply (f (apply (apply b b) (apply (apply b (apply t X1)) (apply (apply b b) t)))) (i (apply (apply b b) (apply (apply b (apply t X1)) (apply (apply b b) t))))) (apply (g (apply (apply b b) (apply (apply b (apply t X1)) (apply (apply b b) t)))) (h (apply (apply b b) (apply (apply b (apply t X1)) (apply (apply b b) t)))))))))),
pr 10 (all (X1\ (p ((apply (apply (apply (apply X1 (f X1)) (g X1)) (h X1)) (i X1)) == (apply (apply (f X1) (i X1)) (apply (g X1) (h X1))))))),
pr 2 (all (X1\ (all (X2\ (p ((apply (apply (apply X1 (apply X2 (apply (g (apply (apply b b) (apply (apply b (apply t (apply (apply b X1) X2))) (apply (apply b b) t)))) (h (apply (apply b b) (apply (apply b (apply t (apply (apply b X1) X2))) (apply (apply b b) t))))))) (f (apply (apply b b) (apply (apply b (apply t (apply (apply b X1) X2))) (apply (apply b b) t))))) (i (apply (apply b b) (apply (apply b (apply t (apply (apply b X1) X2))) (apply (apply b b) t))))) == (apply (apply (f (apply (apply b b) (apply (apply b (apply t (apply (apply b X1) X2))) (apply (apply b b) t)))) (i (apply (apply b b) (apply (apply b (apply t (apply (apply b X1) X2))) (apply (apply b b) t))))) (apply (g (apply (apply b b) (apply (apply b (apply t (apply (apply b X1) X2))) (apply (apply b b) t)))) (h (apply (apply b b) (apply (apply b (apply t (apply (apply b X1) X2))) (apply (apply b b) t)))))))))))),
pr 0 f-,
pr 9 (all (X1\ (all (X2\ (p ((apply (apply (apply (apply X1 (apply X2 (f (apply (apply b X1) X2)))) (g (apply (apply b X1) X2))) (h (apply (apply b X1) X2))) (i (apply (apply b X1) X2))) == (apply (apply (f (apply (apply b X1) X2)) (i (apply (apply b X1) X2))) (apply (g (apply (apply b X1) X2)) (h (apply (apply b X1) X2)))))))))),
pr 14 (all (X1\ (all (X2\ (n ((apply (apply t X1) X2) == (apply X2 X1))))))),
pr 17 (all (X1\ (all (X2\ (n ((apply (apply t X1) X2) == (apply X2 X1))))))),
pr 20 (all (X1\ (all (X2\ (n ((apply (apply t X1) X2) == (apply X2 X1))))))),
pr 6 (all (X2\ (all (X1\ (p ((apply (apply (apply (apply X2 (f (apply (apply b b) (apply (apply b (apply t X1)) X2)))) X1) (apply (g (apply (apply b b) (apply (apply b (apply t X1)) X2))) (h (apply (apply b b) (apply (apply b (apply t X1)) X2))))) (i (apply (apply b b) (apply (apply b (apply t X1)) X2)))) == (apply (apply (f (apply (apply b b) (apply (apply b (apply t X1)) X2))) (i (apply (apply b b) (apply (apply b (apply t X1)) X2)))) (apply (g (apply (apply b b) (apply (apply b (apply t X1)) X2))) (h (apply (apply b b) (apply (apply b (apply t X1)) X2))))))))))),
pr 4 (all (X1\ (all (X2\ (p ((apply (apply (apply X1 (f (apply (apply b b) (apply (apply b (apply t X2)) (apply (apply b b) X1))))) (apply X2 (apply (g (apply (apply b b) (apply (apply b (apply t X2)) (apply (apply b b) X1)))) (h (apply (apply b b) (apply (apply b (apply t X2)) (apply (apply b b) X1))))))) (i (apply (apply b b) (apply (apply b (apply t X2)) (apply (apply b b) X1))))) == (apply (apply (f (apply (apply b b) (apply (apply b (apply t X2)) (apply (apply b b) X1)))) (i (apply (apply b b) (apply (apply b (apply t X2)) (apply (apply b b) X1))))) (apply (g (apply (apply b b) (apply (apply b (apply t X2)) (apply (apply b b) X1)))) (h (apply (apply b b) (apply (apply b (apply t X2)) (apply (apply b b) X1)))))))))))),
pr 5 (all (X1\ (all (X2\ (all (X3\ (p ((apply (apply (apply (apply X1 (apply X2 (f (apply (apply b b) (apply (apply b (apply t X3)) (apply (apply b X1) X2)))))) X3) (apply (g (apply (apply b b) (apply (apply b (apply t X3)) (apply (apply b X1) X2)))) (h (apply (apply b b) (apply (apply b (apply t X3)) (apply (apply b X1) X2)))))) (i (apply (apply b b) (apply (apply b (apply t X3)) (apply (apply b X1) X2))))) == (apply (apply (f (apply (apply b b) (apply (apply b (apply t X3)) (apply (apply b X1) X2)))) (i (apply (apply b b) (apply (apply b (apply t X3)) (apply (apply b X1) X2))))) (apply (g (apply (apply b b) (apply (apply b (apply t X3)) (apply (apply b X1) X2)))) (h (apply (apply b b) (apply (apply b (apply t X3)) (apply (apply b X1) X2))))))))))))))
]).

inSig h.
inSig apply.
inSig i.
inSig g.
inSig f.


