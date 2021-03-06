(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t_fresh () String)
(declare-fun t () String)
(declare-fun t2 () String)
(declare-fun s () String)
(assert  
 (= (str.++ s t2) t_fresh))
(assert  
 (not (= (str.prefixof s t) true)))
(assert  
 (= (str.++ "" t) t_fresh))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t_fresh = NO VALUE
;t2 = NO VALUE

;unsat core: a0 a1 a2 
;actual status: unsat
