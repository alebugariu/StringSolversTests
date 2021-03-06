(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun s () String)
(declare-fun t1_fresh () String)
(declare-fun t1 () String)
(assert  
 (not (= (str.suffixof s t) true)))
(assert  
 (= (str.++ t1_fresh s) t))
(assert  
 (= (str.++ "" t1) t1_fresh))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t1_fresh = NO VALUE
;t1 = NO VALUE

;unsat core: a0 a1 
;actual status: sat
;I0815 22:48:03.266134 10228 main.cpp:292] report is_sat: SAT time: 56.3655 ms
;I0815 22:48:03.266165 10228 main.cpp:356] done.
