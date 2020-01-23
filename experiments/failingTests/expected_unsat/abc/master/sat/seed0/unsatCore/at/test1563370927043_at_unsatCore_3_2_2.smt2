(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result_fresh () String)
(declare-fun offset () Int)
(declare-fun s () String)
(declare-fun result () String)
(assert  
 (= (str.++ "" result) result_fresh))
(assert  
 (not (= (str.at s offset) result)))
(assert  
 (= (str.substr s offset 1) result_fresh))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;offset = NO VALUE
;result = NO VALUE
;result_fresh = NO VALUE

;unsat core: a0 a1 a2 
;actual status: sat
;I0815 22:48:57.775818 10414 main.cpp:204] Done solving
;I0815 22:48:57.775888 10414 main.cpp:292] report is_sat: SAT time: 178.911 ms
;I0815 22:48:57.775931 10414 main.cpp:356] done.
