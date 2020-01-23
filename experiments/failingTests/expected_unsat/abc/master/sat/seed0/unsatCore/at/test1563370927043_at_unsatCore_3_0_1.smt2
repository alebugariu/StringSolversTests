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
 (= (str.++ s "") s_fresh))
(assert  
 (= (str.substr s_fresh offset 1) result))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;offset = NO VALUE
;result = NO VALUE
;s_fresh = NO VALUE

;unsat core: a0 a1 a2 
;actual status: sat
;I0815 22:48:57.267124 10411 main.cpp:204] Done solving
;I0815 22:48:57.267204 10411 main.cpp:292] report is_sat: SAT time: 66.8962 ms
;I0815 22:48:57.267244 10411 main.cpp:356] done.
