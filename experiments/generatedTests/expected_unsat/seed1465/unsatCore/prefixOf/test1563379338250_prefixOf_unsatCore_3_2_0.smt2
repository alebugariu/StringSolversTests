(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun t_fresh () String)
(declare-fun t2 () String)
(declare-fun s () String)
(assert (! 
 (let ((?x1028 (str.len t)))
 (let (($x505 (= ?x1028 1)))
 (let ((?x1697 (str.at t 0)))
 (let (($x1699 (= ?x1697 t_fresh)))
 (and $x1699 $x505))))) :named a1))
(assert (! 
 (let ((?x346 (str.++ s t2)))
 (= ?x346 t_fresh)) :named a2))
(assert (! 
 (let (($x557 (str.prefixof s t)))
 (let (($x558 (= $x557 true)))
 (not $x558))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t2 = NO VALUE
;t_fresh = NO VALUE

;unsat core: a0 a1 a2 

