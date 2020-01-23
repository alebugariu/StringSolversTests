(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (forall ((t1_fresh String) (t2 String) (t1 String) )(let (($x1883 (=> (= (str.++ t1_fresh t2) t) (= (= t2 s) false))))
 (let ((?x755 (str.substr t1 0 (str.len t1))))
 (let (($x504 (= ?x755 t1_fresh)))
 (=> (and $x504 (= (str.++ t1_fresh t2) t)) (= (= t2 s) false))))))
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

;actual status: unknown
;(:reason-unknown "(incomplete quantifiers)")
