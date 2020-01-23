(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s_fresh () String)
(declare-fun s () String)
(declare-fun t () String)
(declare-fun t2 () String)
(assert  
 (= (str.++ "" s) s_fresh))
(assert  
 (not (= (str.prefixof s t) true)))
(assert  
 (= (str.++ s_fresh t2) t))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s_fresh = NO VALUE
;t2 = NO VALUE

;unsat core: a0 a1 a2 
;actual status: unsat
