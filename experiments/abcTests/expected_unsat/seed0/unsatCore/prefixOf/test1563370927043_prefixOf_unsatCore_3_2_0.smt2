(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun t_fresh () String)
(declare-fun t2 () String)
(declare-fun s () String)
(assert  
 (and (= (str.at t 0) t_fresh) (= (str.len t) 1)))
(assert  
 (= (str.++ s t2) t_fresh))
(assert  
 (not (= (str.prefixof s t) true)))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t2 = NO VALUE
;t_fresh = NO VALUE

;unsat core: a0 a1 a2 
