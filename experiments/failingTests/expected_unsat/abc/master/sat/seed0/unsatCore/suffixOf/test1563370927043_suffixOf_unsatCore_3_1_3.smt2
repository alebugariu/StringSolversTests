(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s_fresh () String)
(declare-fun s () String)
(declare-fun t () String)
(declare-fun t1 () String)
(assert  
 (not (= (str.suffixof s t) true)))
(assert  
 (= (str.++ t1 s_fresh) t))
(assert  
 (= (str.replace s s s) s_fresh))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s_fresh = NO VALUE
;t1 = NO VALUE

;unsat core: a0 a1 a2 
;actual status: sat
;I0815 22:48:12.076545 10306 main.cpp:292] report is_sat: SAT time: 75.3329 ms
;I0815 22:48:12.076581 10306 main.cpp:356] done.
