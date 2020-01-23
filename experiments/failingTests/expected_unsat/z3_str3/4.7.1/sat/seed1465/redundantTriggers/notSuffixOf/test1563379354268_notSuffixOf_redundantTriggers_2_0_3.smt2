(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (forall ((t1_fresh String) (t2 String) (t1 String) )(! (let (($x211 (=> (= (str.++ t1_fresh t2) t) (= (= t2 s) false))))
 (let ((?x42 (str.replace t1 t1 t1)))
 (let (($x163 (= ?x42 t1_fresh)))
 (=> (and $x163 (= (str.++ t1_fresh t2) t)) (= (= t2 s) false))))) :pattern ( (str.++ t1_fresh t2) (str.replace t1 t1 t1) )))
  :named a1))
(assert (! 
 (let (($x464 (str.suffixof s t)))
 (let (($x1946 (= $x464 false)))
 (not $x1946))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE

;unsat core: a0 a1 

;actual status: sat
;(error "line 18 column 10: check annotation that says unsat")
