(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t1 () String)
(declare-fun t1_fresh () String)
(declare-fun t () String)
(declare-fun s () String)
(assert  
 (= (str.++ t1_fresh s) t))
(assert  
 (and (= (str.at t1 0) t1_fresh) (= (str.len t1) 1)))
(assert  
 (not (= (str.suffixof s t) true)))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t1 = NO VALUE
;t1_fresh = NO VALUE

;unsat core: a0 a2 
