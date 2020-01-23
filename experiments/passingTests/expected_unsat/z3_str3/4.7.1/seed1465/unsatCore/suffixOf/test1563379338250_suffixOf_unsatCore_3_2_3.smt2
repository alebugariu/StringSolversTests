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
 (let ((?x1065 (str.replace t t t)))
 (= ?x1065 t_fresh)) :named a1))
(assert (! 
 (let ((?x365 (str.++ t1 s)))
 (= ?x365 t_fresh)) :named a2))
(assert (! 
 (let (($x1144 (str.suffixof s t)))
 (let (($x2431 (= $x1144 true)))
 (not $x2431))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t_fresh = NO VALUE
;t1 = NO VALUE

;unsat core: a0 a1 a2 

;actual status: unsat
