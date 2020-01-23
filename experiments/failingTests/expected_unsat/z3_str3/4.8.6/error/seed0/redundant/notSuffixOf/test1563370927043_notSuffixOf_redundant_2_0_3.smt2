(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (forall ((t1_fresh String) (t2 String) (t1 String) )(let (($x1883 (=> (= (str.++ t1_fresh t2) t) (= (= t2 s) false))))
 (let ((?x624 (str.replace t1 t1 t1)))
 (let (($x77 (= ?x624 t1_fresh)))
 (=> (and $x77 (= (str.++ t1_fresh t2) t)) (= (= t2 s) false))))))
  :named a1))
(assert (! 
 (let (($x1473 (str.suffixof s t)))
 (let (($x1889 (= $x1473 false)))
 (not $x1889))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE

;unsat core: a0 a1 

;actual status: not_implemented
