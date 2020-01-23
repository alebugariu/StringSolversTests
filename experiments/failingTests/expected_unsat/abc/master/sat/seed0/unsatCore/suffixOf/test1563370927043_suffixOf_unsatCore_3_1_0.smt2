(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun s_fresh () String)
(declare-fun t () String)
(declare-fun t1 () String)
(assert  
 (= (str.++ t1 s_fresh) t))
(assert  
 (not (= (str.suffixof s t) true)))
(assert  
 (and (= (str.at s 0) s_fresh) (= (str.len s) 1)))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t1 = NO VALUE
;s_fresh = NO VALUE

;unsat core: a0 a1 a2 
;actual status: sat
;I0815 22:48:11.487576 10299 main.cpp:292] report is_sat: SAT time: 74.0153 ms
;I0815 22:48:11.487613 10299 main.cpp:356] done.
