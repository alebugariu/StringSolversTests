(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t2 () String)
(declare-fun t2_fresh () String)
(declare-fun t () String)
(declare-fun s () String)
(assert (! 
 (and (= (str.at t2 0) t2_fresh) (= (str.len t2) 1)) :named a1))
(assert (! 
 (= (str.++ s t2_fresh) t) :named a2))
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
;t2_fresh = NO VALUE

;unsat core: a0 a2 

;actual status: incorrect_unsat_core
;(a0 a2 a1)
