(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (forall ((t1_fresh String) (t2 String) (t1 String) )(let ((?x56 (str.++ t1 "")))
 (let (($x277 (= ?x56 t1_fresh)))
 (=> (and $x277 (= (str.++ t1_fresh t2) t)) (= (= t2 s) false)))))
  :named a1))
(assert (! 
 (let (($x1144 (str.suffixof s t)))
 (let (($x562 (= $x1144 false)))
 (not $x562))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE

;unsat core: a0 a1 

;actual status: sat
;(error "line 17 column 10: check annotation that says unsat")
