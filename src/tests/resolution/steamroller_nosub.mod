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
	resolv (rid (idx   2)) (rid (idx   7)) 110,

	resolv (rid (idx   3)) (rid (idx   8)) 120,

	resolv (rid (idx  12)) (rid (idx  11)) 160,

	resolv (rid (idx   5)) (rid (idx  10)) 190,

	resolv (rid (idx   1)) (rid (idx   6)) 230,

	resolv (rid (idx  18)) (rid (idx   6)) 261,
	resolv (rid (idx 261)) (rid (idx   7)) 260,

	resolv (rid (idx  17)) (rid (idx   7)) 251,
	resolv (rid (idx 251)) (rid (idx   6)) 250,

	resolv (rid (idx  19)) (rid (idx   6)) 241,
	resolv (rid (idx 241)) (rid (idx  11)) 240,

	resolv (rid (idx  21)) (rid (idx   8)) 221,
	resolv (rid (idx 221)) (rid (idx  10)) 220,

	resolv (rid (idx  25)) (rid (idx  10)) 211,
	resolv (rid (idx 211)) (rid (idx  11)) 210,

	resolv (rid (idx  15)) (rid (idx  10)) 201,
	resolv (rid (idx 201)) (rid (idx   8)) 200,

	resolv (rid (idx  16)) (rid (idx   8)) 181,
	resolv (rid (idx 181)) (rid (idx   7)) 180,

	resolv (rid (idx  13)) (rid (idx 230)) 176,
	resolv (rid (idx 176)) (rid (idx 160)) 175,
	resolv (rid (idx 175)) (rid (idx 110)) 174,
	resolv (rid (idx 174)) (rid (idx 160)) 173,
	resolv (rid (idx 173)) (rid (idx 240)) 172,
	resolv (rid (idx 172)) (rid (idx 250)) 171,
	resolv (rid (idx 171)) (rid (idx 260)) 170,

	resolv (rid (idx  13)) (rid (idx 120)) 156,
	resolv (rid (idx 156)) (rid (idx 160)) 155,
	resolv (rid (idx 155)) (rid (idx 190)) 154,
	resolv (rid (idx 154)) (rid (idx 160)) 153,
	resolv (rid (idx 153)) (rid (idx 200)) 152,
	resolv (rid (idx 152)) (rid (idx 210)) 151,
	resolv (rid (idx 151)) (rid (idx 220)) 150,

	resolv (rid (idx  13)) (rid (idx 110)) 146,
	resolv (rid (idx 146)) (rid (idx 160)) 145,
	resolv (rid (idx 145)) (rid (idx 120)) 144,
	resolv (rid (idx 144)) (rid (idx 160)) 143,
	resolv (rid (idx 143)) (rid (idx 170)) 142,
	resolv (rid (idx 142)) (rid (idx 180)) 141,
	resolv (rid (idx 141)) (rid (idx 150)) 140,

	resolv (rid (idx  26)) (rid (idx 110)) 104,
	resolv (rid (idx 104)) (rid (idx 120)) 103,
	resolv (rid (idx 103)) (rid (idx   7)) 102,
	resolv (rid (idx 102)) (rid (idx 140)) 101,
	resolv (rid (idx 101)) (rid (idx 150))   0
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
