(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun s () String)
(declare-fun t1_fresh () String)
(declare-fun t1 () String)
(assert (! 
 (let ((?x200 (str.++ t1_fresh s)))
 (= ?x200 t)) :named a1))
(assert (! 
 (let ((?x297 (str.replace t1 t1 t1)))
 (= ?x297 t1_fresh)) :named a2))
(assert (! 
 (let (($x1144 (str.suffixof s t)))
 (let (($x2431 (= $x1144 true)))
 (not $x2431))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t1_fresh = NO VALUE
;t1 = NO VALUE

;unsat core: a0 a1 

;actual status: unsat
