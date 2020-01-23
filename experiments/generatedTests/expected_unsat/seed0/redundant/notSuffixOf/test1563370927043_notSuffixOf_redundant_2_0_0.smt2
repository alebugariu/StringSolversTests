(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (forall ((t1_fresh String) (t2 String) (t1 String) )(let (($x523 (= (str.len t1) 1)))
 (let (($x1114 (=> $x523 (= (str.at t1 0) t1_fresh))))
 (=> (and $x1114 (= (str.++ t1_fresh t2) t)) (= (= t2 s) false)))))
  :named a1))
(assert (! 
 (not (= (str.suffixof s t) false)) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE

;unsat core: a0 a1 

