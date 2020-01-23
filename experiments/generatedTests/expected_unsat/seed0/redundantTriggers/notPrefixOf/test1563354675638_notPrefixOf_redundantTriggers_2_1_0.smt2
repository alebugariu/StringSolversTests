(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (forall ((t1 String) (t2_fresh String) (t2 String) )(! (let (($x524 (=> (= (str.++ t1 t2_fresh) t) (= (= t1 s) false))))
 (=> (and (=> (= (str.len t2) 1) (= (str.at t2 0) t2_fresh)) (= (str.++ t1 t2_fresh) t)) (= (= t1 s) false))) :pattern ( (str.++ t1 t2_fresh) (str.at t2 0) )))
  :named a1))
(assert (! 
 (let (($x1036 (str.prefixof s t)))
 (let (($x1144 (= $x1036 false)))
 (not $x1144))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE

;unsat core: a0 a1 

