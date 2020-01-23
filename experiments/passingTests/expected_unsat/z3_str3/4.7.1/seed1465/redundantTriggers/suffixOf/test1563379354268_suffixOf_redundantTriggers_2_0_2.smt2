(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t1_fresh () String)
(declare-fun t1 () String)
(declare-fun t () String)
(declare-fun s () String)
(assert (! 
 (let ((?x2053 (str.++ "" t1)))
 (= ?x2053 t1_fresh)) :named a1))
(assert (! 
 (let ((?x468 (str.++ t1_fresh s)))
 (= ?x468 t)) :named a2))
(assert (! 
 (let (($x464 (str.suffixof s t)))
 (let (($x465 (= $x464 true)))
 (not $x465))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t1 = NO VALUE
;t1_fresh = NO VALUE

;unsat core: a0 a2 

;actual status: unsat
