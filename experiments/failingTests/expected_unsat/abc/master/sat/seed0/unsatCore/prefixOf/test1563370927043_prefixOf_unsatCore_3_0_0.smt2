(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun t2 () String)
(declare-fun s_fresh () String)
(declare-fun s () String)
(assert  
 (= (str.++ s_fresh t2) t))
(assert  
 (and (= (str.at s 0) s_fresh) (= (str.len s) 1)))
(assert  
 (not (= (str.prefixof s t) true)))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s_fresh = NO VALUE
;t2 = NO VALUE

;unsat core: a0 a1 a2 
;actual status: sat
;I0815 22:48:17.181938 10319 main.cpp:292] report is_sat: SAT time: 552.319 ms
;I0815 22:48:17.181996 10319 main.cpp:356] done.
