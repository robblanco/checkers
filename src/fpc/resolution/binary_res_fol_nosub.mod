module binary_res_fol_nosub.

% Proving the sequent can be proved by deciding clauses C1, C2 and some other clause.

store_kc (dlist C1 C2) _ lit (dlist C1 C2).
store_kc (dlist2_ C1) _ lit (dlist2_ C1).
store_kc dlist3_ _ lit dlist3_.
andPos_ke (dlist C1 C2) _  (dlist C1 C2) (dlist C1 C2).
andPos_ke (dlist2_ C1) _  (dlist2_ C1) (dlist2_ C1).
andPos_ke dlist3_ _  dlist3_ dlist3_.
orNeg_kc (dlist C1 C2) _  (dlist C1 C2).
orNeg_kc (dlist2_ C1) _  (dlist2_ C1).
orNeg_kc dlist3_ _  dlist3_.
initial_ke (dlist _ _) _.
initial_ke (dlist _ _) _.
initial_ke (dlist2_ _) _.
initial_ke dlist3_ _.
initial_ke done _.
release_ke (dlist C1 C2) (dlist C1 C2).
release_ke (dlist2_ C1) (dlist2_ C1).
release_ke dlist3_ dlist3_.
% here we decide the clauses for proving -C1,-C2,C3 of decide depth 3.
% Note that since they might be negative, we will need sometimes to decide on the cut formula
% This cut formula is indexed by lit but all other resolvents from previous
% steps are indexed by idx, so we need to either decide on C1, C2 or lit
decide_ke (dlist (rid_ I) C2)  I (dlist2_ C2).
decide_ke (dlist C1 (rid_ I))  I (dlist2_ C1).
decide_ke (dlist C1 C2) lit (dlist2_ C1).
decide_ke (dlist C1 C2) lit (dlist2_ C2).
decide_ke (dlist2_ (rid_ I)) I dlist3_.
decide_ke (dlist2_ _) lit dlist3_.
decide_ke dlist3_ lit done.
% the last cut is over t+ and we need to eliminate its negation
false_kc (dlist C1 C2) (dlist C1 C2).
% clauses are in prefix normal form and we just apply the sub in the right order
some_ke (dlist2_ C) _ (dlist2_ C).
some_ke (dlist2_ C) _ (dlist2_ C).
some_ke dlist3_ _ dlist3_.
some_ke dlist3_ _ dlist3_.
