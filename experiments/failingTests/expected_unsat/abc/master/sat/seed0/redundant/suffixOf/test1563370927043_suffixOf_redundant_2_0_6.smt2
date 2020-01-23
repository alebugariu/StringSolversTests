(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t1_fresh () String)
(declare-fun t1 () String)
(declare-fun t () String)
(declare-fun s () String)
(assert  
 (not (= (str.suffixof s t) true)))
(assert  
 (= (str.++ t1_fresh s) t))
(assert  
 (= (str.substr t1 0 (str.len t1)) t1_fresh))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t1 = NO VALUE
;t1_fresh = NO VALUE

;unsat core: a0 a2 
;actual status: sat
;I0815 22:48:03.127720 10226 main.cpp:292] report is_sat: SAT time: 53.8358 ms
;I0815 22:48:03.127753 10226 main.cpp:356] done.
