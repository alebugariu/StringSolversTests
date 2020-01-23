(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t_fresh () String)
(declare-fun t2 () String)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (let ((?x346 (str.++ s t2)))
 (= ?x346 t_fresh)) :named a1))
(assert (! 
 (let ((?x1728 (str.++ t "")))
 (= ?x1728 t_fresh)) :named a2))
(assert (! 
 (let (($x991 (str.prefixof s t)))
 (let (($x992 (= $x991 true)))
 (not $x992))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t2 = NO VALUE
;t_fresh = NO VALUE

;unsat core: a0 a1 a2 

;actual status: unsat
