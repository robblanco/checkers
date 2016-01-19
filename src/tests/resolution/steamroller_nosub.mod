module steamroller_nosub.

accumulate lkf-kernel.
accumulate binary_res_fol_nosub.
accumulate resolution_steps.

problem "steamroller_nosub"
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
	(some (x\ some (y\ some (z\ some (v\ (p(is_animal x)) &+& (p(is_plant y)) &+& (p(is_animal z)) &+& (p(is_plant v)) &+& (n(eats x y)) &+& (p(much_smaller z x)) &+& (p(eats z v)) &+& (n(eats x z))))))) !-!
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
	(some (x\ some (y\ some (z\ (p(is_animal x)) &+& (p(is_animal y)) &+& (p(is_grain z)) &+& (p(eats x y)) &+& (p(eats y z))))))
)
(rsteps [
	resolv (rid_ (idx   2)) (rid_ (idx   7)) 110,

	resolv (rid_ (idx   3)) (rid_ (idx   8)) 120,

	resolv (rid_ (idx  12)) (rid_ (idx  11)) 160,

	resolv (rid_ (idx   5)) (rid_ (idx  10)) 190,

	resolv (rid_ (idx   1)) (rid_ (idx   6)) 230,

	resolv (rid_ (idx  18)) (rid_ (idx   6)) 261,
	resolv (rid_ (idx 261)) (rid_ (idx   7)) 260,

	resolv (rid_ (idx  17)) (rid_ (idx   7)) 251,
	resolv (rid_ (idx 251)) (rid_ (idx   6)) 250,

	resolv (rid_ (idx  19)) (rid_ (idx   6)) 241,
	resolv (rid_ (idx 241)) (rid_ (idx  11)) 240,

	resolv (rid_ (idx  21)) (rid_ (idx   8)) 221,
	resolv (rid_ (idx 221)) (rid_ (idx  10)) 220,

	resolv (rid_ (idx  25)) (rid_ (idx  10)) 211,
	resolv (rid_ (idx 211)) (rid_ (idx  11)) 210,

	resolv (rid_ (idx  15)) (rid_ (idx  10)) 201,
	resolv (rid_ (idx 201)) (rid_ (idx   8)) 200,

	resolv (rid_ (idx  16)) (rid_ (idx   8)) 181,
	resolv (rid_ (idx 181)) (rid_ (idx   7)) 180,

	resolv (rid_ (idx  13)) (rid_ (idx 230)) 176,
	resolv (rid_ (idx 176)) (rid_ (idx 160)) 175,
	resolv (rid_ (idx 175)) (rid_ (idx 110)) 174,
	resolv (rid_ (idx 174)) (rid_ (idx 160)) 173,
	resolv (rid_ (idx 173)) (rid_ (idx 240)) 172,
	resolv (rid_ (idx 172)) (rid_ (idx 250)) 171,
	resolv (rid_ (idx 171)) (rid_ (idx 260)) 170,

	resolv (rid_ (idx  13)) (rid_ (idx 120)) 156,
	resolv (rid_ (idx 156)) (rid_ (idx 160)) 155,
	resolv (rid_ (idx 155)) (rid_ (idx 190)) 154,
	resolv (rid_ (idx 154)) (rid_ (idx 160)) 153,
	resolv (rid_ (idx 153)) (rid_ (idx 200)) 152,
	resolv (rid_ (idx 152)) (rid_ (idx 210)) 151,
	resolv (rid_ (idx 151)) (rid_ (idx 220)) 150,

	resolv (rid_ (idx  13)) (rid_ (idx 110)) 146,
	resolv (rid_ (idx 146)) (rid_ (idx 160)) 145,
	resolv (rid_ (idx 145)) (rid_ (idx 120)) 144,
	resolv (rid_ (idx 144)) (rid_ (idx 160)) 143,
	resolv (rid_ (idx 143)) (rid_ (idx 170)) 142,
	resolv (rid_ (idx 142)) (rid_ (idx 180)) 141,
	resolv (rid_ (idx 141)) (rid_ (idx 150)) 140,

	resolv (rid_ (idx  26)) (rid_ (idx 110)) 104,
	resolv (rid_ (idx 104)) (rid_ (idx 120)) 103,
	resolv (rid_ (idx 103)) (rid_ (idx   7)) 102,
	resolv (rid_ (idx 102)) (rid_ (idx 140)) 101,
	resolv (rid_ (idx 101)) (rid_ (idx 150))   0
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
	pr  13 (some (x\ some (y\ some (z\ some (v\ (p(is_animal x)) &+& (p(is_plant y)) &+& (p(is_animal z)) &+& (p(is_plant v)) &+& (n(eats x y)) &+& (p(much_smaller z x)) &+& (p(eats z v)) &+& (n(eats x z))))))),
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
	pr  26 (some (x\ some (y\ some (z\ (p(is_animal x)) &+& (p(is_animal y)) &+& (p(is_grain z)) &+& (p(eats x y)) &+& (p(eats y z)))))),

	pr 101 (p(eats b g)),
	pr 102 ((p(eats f b)) &+& (p(eats b g))),
	pr 103 ((p(is_grain g)) &+& (p(eats f b)) &+& (p(eats b g))),
	pr 104 ((p(is_animal b)) &+& (p(is_grain g)) &+& (p(eats f b)) &+& (p(eats b g))),

	pr 110 (n(is_animal f)),

	pr 120 (n(is_animal b)),

	pr 140 (n(eats f b)),
	pr 141 ((p(eats b g)) &+& (n(eats f b))),
	pr 142 ((p(much_smaller b f)) &+& (p(eats b g)) &+& (n(eats f b))),
	pr 143 ((n(eats f g)) &+& (p(much_smaller b f)) &+& (p(eats b g)) &+& (n(eats f b))),
	pr 144 ((p(is_plant g)) &+& (n(eats f g)) &+& (p(much_smaller b f)) &+& (p(eats b g)) &+& (n(eats f b))),
	pr 145 ((p(is_animal b)) &+& (p(is_plant g)) &+& (n(eats f g)) &+& (p(much_smaller b f)) &+& (p(eats b g)) &+& (n(eats f b))),
	pr 146 ((p(is_plant g)) &+& (p(is_animal b)) &+& (p(is_plant g)) &+& (n(eats f g)) &+& (p(much_smaller b f)) &+& (p(eats b g)) &+& (n(eats f b))),

	pr 150 (n(eats b g)),
	pr 151 ((n(eats b g)) &+& (n(eats b s))),
	pr 152 ((n(eats b g)) &+& (p(eats s g)) &+& (n(eats b s))),
	pr 153 ((n(eats b g)) &+& (p(much_smaller s b)) &+& (p(eats s g)) &+& (n(eats b s))),
	pr 154 ((p(is_plant g)) &+& (n(eats b g)) &+& (p(much_smaller s b)) &+& (p(eats s g)) &+& (n(eats b s))),
	pr 155 ((p(is_animal s)) &+& (p(is_plant g)) &+& (n(eats b g)) &+& (p(much_smaller s b)) &+& (p(eats s g)) &+& (n(eats b s))),
	pr 156 ((p(is_plant g)) &+& (p(is_animal s)) &+& (p(is_plant g)) &+& (n(eats b g)) &+& (p(much_smaller s b)) &+& (p(eats s g)) &+& (n(eats b s))),

	pr 160 (n(is_plant g)),

	pr 170 (p(eats f g)),
	pr 171 ((p(eats f g)) &+& (n(eats w f))),
	pr 172 ((p(much_smaller f w)) &+& (p(eats f g)) &+& (n(eats w f))),
	pr 173 ((n(eats w g)) &+& (p(much_smaller f w)) &+& (p(eats f g)) &+& (n(eats w f))),
	pr 174 ((p(is_plant g)) &+& (n(eats w g)) &+& (p(much_smaller f w)) &+& (p(eats f g)) &+& (n(eats w f))),
	pr 175 ((p(is_animal f)) &+& (p(is_plant g)) &+& (n(eats w g)) &+& (p(much_smaller f w)) &+& (p(eats f g)) &+& (n(eats w f))),
	pr 176 ((p(is_plant g)) &+& (p(is_animal f)) &+& (p(is_plant g)) &+& (n(eats w g)) &+& (p(much_smaller f w)) &+& (p(eats f g)) &+& (n(eats w f))),

	pr 180 (n(much_smaller b f)),
	pr 181 ((p(is_fox   f)) &+& (n(much_smaller b f))),

	pr 190 (n(is_animal s)),

	pr 200 (n(much_smaller s b)),
	pr 201 ((p(is_bird  b)) &+& (n(much_smaller s b))),

	pr 210 (n(eats s g)),
	pr 211 ((p(is_grain g)) &+& (n(eats s g))),

	pr 220 (p(eats b s)),
	pr 221 ((p(is_snail s)) &+& (p(eats b s))),

	pr 230 (n(is_animal w)),

	pr 240 (p(eats w g)),
	pr 241 ((p(is_grain g)) &+& (p(eats w g))),

	pr 250 (n(much_smaller f w)),
	pr 251 ((p(is_wolf  w)) &+& (n(much_smaller f w))),

	pr 260 (p(eats w f)),
	pr 261 ((p(is_fox   f)) &+& (p(eats w f))),

	pr   0 t+
])
.
