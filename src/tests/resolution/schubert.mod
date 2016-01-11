module schubert.

accumulate lkf-kernel.
accumulate binary_res_fol.
accumulate resolution_steps.

problem "schubert"
(
	(some (x\ (p(is_wolf  x)) &+& (n(is_animal x)))) !-!
	(some (x\ (p(is_fox   x)) &+& (n(is_animal x)))) !-!
	(some (x\ (p(is_bird  x)) &+& (n(is_animal x)))) !-!
	(some (x\ (p(is_cater x)) &+& (n(is_animal x)))) !-!
	(some (x\ (p(is_snail x)) &+& (n(is_animal x)))) !-!
	(n(is_wolf  w)) !-!
	(n(is_fox   f)) !-!
	(n(is_bird  b)) !-!
	(n(is_cater c)) !-!
	(n(is_snail s)) !-!
	(n(is_grain g)) !-!
	(some (x\ (p(is_grain x)) &+& (n(is_plant  x)))) !-!
	(some (x\ some (y\ some (z\ some (v\ (p(is_animal x)) &+& (p(is_plant y)) &+& (p(is_animal z)) &+& (p(is_plant v)) &+& (n(eats x y)) &+& (p(much_smaller z x)) &+& (p(eats z v)) &+& (p(eats x z))))))) !-!
	(some (x\ some (y\ (p(is_cater x)) &+& (p(is_bird  y)) &+& (n(much_smaller x y))))) !-!
	(some (x\ some (y\ (p(is_snail x)) &+& (p(is_bird  y)) &+& (n(much_smaller x y))))) !-!
	(some (x\ some (y\ (p(is_bird  x)) &+& (p(is_fox   y)) &+& (n(much_smaller x y))))) !-!
	(some (x\ some (y\ (p(is_fox   x)) &+& (p(is_wolf  y)) &+& (n(much_smaller x y))))) !-!
	(some (x\ some (y\ (p(is_wolf  x)) &+& (p(is_fox   y)) &+& (p(eats x y))))) !-!
	(some (x\ some (y\ (p(is_wolf  x)) &+& (p(is_grain y)) &+& (p(eats x y))))) !-!
	(some (x\ some (y\ (p(is_bird  x)) &+& (p(is_cater y)) &+& (n(eats x y))))) !-!
	(some (x\ some (y\ (p(is_bird  x)) &+& (p(is_snail y)) &+& (p(eats x y))))) !-!
	% ex 22
	(some (x\ some (y\ (p(is_cater x)) &+& (p(is_grain y)) &+& (n(eats x y))))) !-!
	% ex 24
	(some (x\ some (y\ (p(is_snail x)) &+& (p(is_grain y)) &+& (n(eats x y))))) !-!
%%% DUMMY %%%
	(p(is_animal w))
%%% DUMMY %%%
)
(rsteps [
	resolv (rid (idx 1) (sub [w])) (rid (idx 6) (sub [])) 230,
	resolv (rid (idx 230) (sub [])) (rid (idx 26) (sub [])) 0
] estate)
(map [
	pr   1 (some (x\ (p(is_wolf  x)) &+& (n(is_animal x)))),
	pr   2 (some (x\ (p(is_fox   x)) &+& (n(is_animal x)))),
	pr   3 (some (x\ (p(is_bird  x)) &+& (n(is_animal x)))),
	pr   4 (some (x\ (p(is_cater x)) &+& (n(is_animal x)))),
	pr   5 (some (x\ (p(is_snail x)) &+& (n(is_animal x)))),
	pr   6 (n(is_wolf  w)),
	pr   7 (n(is_fox   f)),
	pr   8 (n(is_bird  b)),
	pr   9 (n(is_cater c)),
	pr  10 (n(is_snail s)),
	pr  11 (n(is_grain g)),
	pr  12 (some (x\ (p(is_grain x)) &+& (n(is_plant  x)))),
	pr  13 (some (x\ some (y\ some (z\ some (v\ (p(is_animal x)) &+& (p(is_plant y)) &+& (p(is_animal z)) &+& (p(is_plant v)) &+& (n(eats x y)) &+& (p(much_smaller z x)) &+& (p(eats z v)) &+& (p(eats x z))))))),
	pr  14 (some (x\ some (y\ (p(is_cater x)) &+& (p(is_bird  y)) &+& (n(much_smaller x y))))),
	pr  15 (some (x\ some (y\ (p(is_snail x)) &+& (p(is_bird  y)) &+& (n(much_smaller x y))))),
	pr  16 (some (x\ some (y\ (p(is_bird  x)) &+& (p(is_fox   y)) &+& (n(much_smaller x y))))),
	pr  17 (some (x\ some (y\ (p(is_fox   x)) &+& (p(is_wolf  y)) &+& (n(much_smaller x y))))),
	pr  18 (some (x\ some (y\ (p(is_wolf  x)) &+& (p(is_fox   y)) &+& (p(eats x y))))),
	pr  19 (some (x\ some (y\ (p(is_wolf  x)) &+& (p(is_grain y)) &+& (p(eats x y))))),
	pr  20 (some (x\ some (y\ (p(is_bird  x)) &+& (p(is_cater y)) &+& (n(eats x y))))),
	pr  21 (some (x\ some (y\ (p(is_bird  x)) &+& (p(is_snail y)) &+& (p(eats x y))))),
	pr  23 (some (x\ some (y\ (p(is_cater x)) &+& (p(is_grain y)) &+& (n(eats x y))))),
	pr  25 (some (x\ some (y\ (p(is_snail x)) &+& (p(is_grain y)) &+& (n(eats x y))))),
%%% DUMMY %%%
	pr  26 (p(is_animal w)),
%%% DUMMY %%%

	pr 230 (n(is_animal w)),

	pr   0 t+
])
.
