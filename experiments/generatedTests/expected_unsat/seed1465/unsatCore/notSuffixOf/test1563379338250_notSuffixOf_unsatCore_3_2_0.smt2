(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s_fresh () String)
(declare-fun t () String)
(declare-fun s () String)
(assert (! 
 (forall ((t1 String) (t2 String) )(let (($x1239 (= (str.++ t1 t2) t)))
 (=> $x1239 (= (= t2 s_fresh) false))))
  :named a1))
(assert (! 
 (let ((?x2295 (str.len s)))
 (let (($x2296 (= ?x2295 1)))
 (let ((?x2293 (str.at s 0)))
 (let (($x2294 (= ?x2293 s_fresh)))
 (and $x2294 $x2296))))) :named a2))
(assert (! 
 (let (($x1144 (str.suffixof s t)))
 (let (($x562 (= $x1144 false)))
 (not $x562))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s_fresh = NO VALUE

;unsat core: a0 a1 a2 

