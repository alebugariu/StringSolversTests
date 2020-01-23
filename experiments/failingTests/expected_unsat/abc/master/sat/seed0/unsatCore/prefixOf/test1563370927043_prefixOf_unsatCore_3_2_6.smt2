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
 (= (str.substr t 0 (str.len t)) t_fresh))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t_fresh = NO VALUE
;t2 = NO VALUE

;unsat core: a0 a1 a2 
;actual status: sat
;I0815 22:48:16.334005 10317 main.cpp:292] report is_sat: SAT time: 553.214 ms
;I0815 22:48:16.334069 10317 main.cpp:356] done.
