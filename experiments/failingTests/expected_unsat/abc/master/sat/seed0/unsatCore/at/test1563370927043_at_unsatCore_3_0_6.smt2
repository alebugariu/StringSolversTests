(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () String)
(declare-fun offset () Int)
(declare-fun s_fresh () String)
(declare-fun s () String)
(assert  
 (not (= (str.at s offset) result)))
(assert  
 (= (str.substr s_fresh offset 1) result))
(assert  
 (= (str.substr s 0 (str.len s)) s_fresh))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;offset = NO VALUE
;result = NO VALUE
;s_fresh = NO VALUE

;unsat core: a0 a1 a2 
;actual status: sat
;I0815 22:48:57.995225 10415 main.cpp:204] Done solving
;I0815 22:48:57.995296 10415 main.cpp:292] report is_sat: SAT time: 185.153 ms
;I0815 22:48:57.995340 10415 main.cpp:356] done.
