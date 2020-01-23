(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun s_fresh () String)
(declare-fun t () String)
(assert (! 
 (let ((?x2295 (str.len s)))
 (let (($x2296 (= ?x2295 1)))
 (let ((?x2293 (str.at s 0)))
 (let (($x2294 (= ?x2293 s_fresh)))
 (and $x2294 $x2296))))) :named a1))
(assert (! 
 (forall ((t1 String) (t2 String) )(=> (= (str.++ t1 t2) t) (= (= t1 s_fresh) false)))
  :named a2))
(assert (! 
 (let (($x557 (str.prefixof s t)))
 (let (($x617 (= $x557 false)))
 (not $x617))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s_fresh = NO VALUE

;unsat core: a0 a1 a2 

