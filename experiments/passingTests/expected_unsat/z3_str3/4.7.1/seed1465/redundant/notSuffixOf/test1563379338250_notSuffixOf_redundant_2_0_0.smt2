(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (forall ((t1_fresh String) (t2 String) (t1 String) )(let (($x103 (= (str.len t1) 1)))
 (let (($x1772 (=> $x103 (= (str.at t1 0) t1_fresh))))
 (=> (and $x1772 (= (str.++ t1_fresh t2) t)) (= (= t2 s) false)))))
  :named a1))
(assert (! 
 (not (= (str.suffixof s t) false)) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE

;unsat core: a0 a1 

;actual status: unsat
