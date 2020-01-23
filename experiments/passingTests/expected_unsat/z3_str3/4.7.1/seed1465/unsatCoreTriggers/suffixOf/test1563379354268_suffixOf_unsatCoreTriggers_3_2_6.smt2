(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t_fresh () String)
(declare-fun t () String)
(declare-fun s () String)
(declare-fun t1 () String)
(assert (! 
 (let ((?x1066 (str.len t)))
 (let ((?x1853 (str.substr t 0 ?x1066)))
 (= ?x1853 t_fresh))) :named a1))
(assert (! 
 (let ((?x373 (str.++ t1 s)))
 (= ?x373 t_fresh)) :named a2))
(assert (! 
 (let (($x464 (str.suffixof s t)))
 (let (($x465 (= $x464 true)))
 (not $x465))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t_fresh = NO VALUE
;t1 = NO VALUE

;unsat core: a0 a1 a2 

;actual status: unsat
