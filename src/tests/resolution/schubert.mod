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
%%% DUMMY %%%
%	(p(is_animal w))
%	(n(eats w f))
!-!
%	(n(is_animal f)) !-! % 110
%	(n(is_animal b)) !-! % 120
%	(n(eats f b)) !-!    % 140
%	(n(eats b g)) !-!    % 150
%	(n(is_plant g)) !-!  % 160
%	(p(eats f g)) !-!    % 170
	(n(much_smaller b f)) !-! % 180
	(n(is_animal s)) !-! % 190
	(n(much_smaller s b)) !-! % 200
	(n(eats s g)) !-!    % 210 NEG?
	(p(eats b s)) !-!    % 220 NEG?
	(n(is_animal w)) !-! % 230
	(p(eats w g)) !-!    % 240
	(n(much_smaller f w)) !-! % 250
	(p(eats w f))        % 260
%%% DUMMY %%%
)
(rsteps [
%	resolv (rid (idx 1) (sub [w])) (rid (idx 6) (sub [])) 230,
%	resolv (rid (idx 230) (sub [])) (rid (idx 26) (sub [])) 0
%%	resolv (rid (idx 18) (sub [w, f])) (rid (idx 7) (sub [])) 261,
%%	resolv (rid (idx 261) (sub [])) (rid (idx 6) (sub [])) 260,
%%	resolv (rid (idx 260) (sub [])) (rid (idx 26) (sub [])) 0
% b g s g = x y z v
	resolv (rid (idx   2) (sub [f]      )) (rid (idx   7) (sub [])) 110,

	resolv (rid (idx   3) (sub [b]      )) (rid (idx   8) (sub [])) 120,

	resolv (rid (idx  12) (sub [g]      )) (rid (idx  11) (sub [])) 160,

	resolv (rid (idx  13) (sub [w, g, f, g])) (rid (idx 230) (sub [])) 176,
	resolv (rid (idx 176) (sub []          )) (rid (idx 160) (sub [])) 175,
	resolv (rid (idx 175) (sub []          )) (rid (idx 110) (sub [])) 174,
	resolv (rid (idx 174) (sub []          )) (rid (idx 160) (sub [])) 173,
	resolv (rid (idx 173) (sub []          )) (rid (idx 240) (sub [])) 172,
	resolv (rid (idx 172) (sub []          )) (rid (idx 250) (sub [])) 171,
	resolv (rid (idx 171) (sub []          )) (rid (idx 260) (sub [])) 170,

	resolv (rid (idx  13) (sub [b, g, s, g])) (rid (idx 120) (sub [])) 156,
	resolv (rid (idx 156) (sub []          )) (rid (idx 160) (sub [])) 155,
	resolv (rid (idx 155) (sub []          )) (rid (idx 190) (sub [])) 154,
	resolv (rid (idx 154) (sub []          )) (rid (idx 160) (sub [])) 153,
	resolv (rid (idx 153) (sub []          )) (rid (idx 200) (sub [])) 152,
	resolv (rid (idx 152) (sub []          )) (rid (idx 210) (sub [])) 151,
	resolv (rid (idx 151) (sub []          )) (rid (idx 220) (sub [])) 150,

	resolv (rid (idx  13) (sub [f, g, b, g])) (rid (idx 110) (sub [])) 146,
	resolv (rid (idx 146) (sub []          )) (rid (idx 160) (sub [])) 145,
	resolv (rid (idx 145) (sub []          )) (rid (idx 120) (sub [])) 144,
	resolv (rid (idx 144) (sub []          )) (rid (idx 160) (sub [])) 143,
	resolv (rid (idx 143) (sub []          )) (rid (idx 170) (sub [])) 142,
	resolv (rid (idx 142) (sub []          )) (rid (idx 180) (sub [])) 141,
	resolv (rid (idx 141) (sub []          )) (rid (idx 150) (sub [])) 140,

	resolv (rid (idx  26) (sub [f, b, g])) (rid (idx 110) (sub [])) 104,
	resolv (rid (idx 104) (sub []       )) (rid (idx 120) (sub [])) 103,
	resolv (rid (idx 103) (sub []       )) (rid (idx   7) (sub [])) 102,
	resolv (rid (idx 102) (sub []       )) (rid (idx 140) (sub [])) 101,
	resolv (rid (idx 101) (sub []       )) (rid (idx 150) (sub []))   0

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
%%% DUMMY %%%
%	pr  26 (p(is_animal w)),
	pr  26 (n(eats w f)),
%%% DUMMY %%%

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

	pr 190 (n(is_animal s)),

	pr 200 (n(much_smaller s b)),

	pr 210 (n(eats s g)), % NEG?

	pr 220 (p(eats b s)), % NEG?

	pr 230 (n(is_animal w)),

	pr 240 (p(eats w g)),

	pr 250 (n(much_smaller f w)),

	pr 260 (p(eats w f)),
	pr 261 ((p(is_wolf  w)) &+& (p(eats w f))),

	pr   0 t+
])
.
