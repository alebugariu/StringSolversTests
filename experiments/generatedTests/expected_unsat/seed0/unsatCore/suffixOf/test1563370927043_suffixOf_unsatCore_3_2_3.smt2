(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t_fresh () String)
(declare-fun t () String)
(declare-fun s () String)
(declare-fun t1 () String)
(assert (! 
 (let ((?x1732 (str.replace t t t)))
 (= ?x1732 t_fresh)) :named a1))
(assert (! 
 (let ((?x365 (str.++ t1 s)))
 (= ?x365 t_fresh)) :named a2))
(assert (! 
 (let (($x1473 (str.suffixof s t)))
 (let (($x1478 (= $x1473 true)))
 (not $x1478))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t_fresh = NO VALUE
;t1 = NO VALUE

;unsat core: a0 a1 a2 

