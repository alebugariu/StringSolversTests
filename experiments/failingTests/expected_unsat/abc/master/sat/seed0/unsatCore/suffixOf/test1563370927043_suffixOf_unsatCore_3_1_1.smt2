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
 (= (str.++ s "") s_fresh))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s_fresh = NO VALUE
;t1 = NO VALUE

;unsat core: a0 a1 a2 
;actual status: sat
;I0815 22:48:11.406586 10298 main.cpp:292] report is_sat: SAT time: 44.8597 ms
;I0815 22:48:11.406620 10298 main.cpp:356] done.
