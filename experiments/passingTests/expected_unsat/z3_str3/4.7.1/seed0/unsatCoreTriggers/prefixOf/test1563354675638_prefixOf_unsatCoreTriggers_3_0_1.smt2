(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun t2 () String)
(declare-fun s_fresh () String)
(declare-fun s () String)
(assert (! 
 (let ((?x1718 (str.++ s_fresh t2)))
 (= ?x1718 t)) :named a1))
(assert (! 
 (let ((?x106 (str.++ s "")))
 (= ?x106 s_fresh)) :named a2))
(assert (! 
 (let (($x1036 (str.prefixof s t)))
 (let (($x1040 (= $x1036 true)))
 (not $x1040))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s_fresh = NO VALUE
;t2 = NO VALUE

;unsat core: a0 a1 a2 

;actual status: unsat
