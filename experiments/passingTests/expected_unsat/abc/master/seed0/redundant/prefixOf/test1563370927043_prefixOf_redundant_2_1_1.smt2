(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t2_fresh () String)
(declare-fun t2 () String)
(declare-fun t () String)
(declare-fun s () String)
(assert  
 (= (str.++ s t2_fresh) t))
(assert  
 (not (= (str.prefixof s t) true)))
(assert  
 (= (str.++ t2 "") t2_fresh))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t2 = NO VALUE
;t2_fresh = NO VALUE

;unsat core: a0 a2 
;actual status: unsat
