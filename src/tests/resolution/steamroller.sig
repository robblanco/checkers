sig steamroller.

accum_sig lkf-kernel.
accum_sig binary_res_fol.
accum_sig resolution_steps.
accum_sig base.
accum_sig lkf-syntax.

/* Signature of the resolution problems */
type w, f, b, c, s, g   atm.
type is_wolf, is_fox, is_bird, is_cater, is_snail, is_grain, is_plant, is_animal   atm -> atm.
type much_smaller, eats   atm -> atm -> atm.
