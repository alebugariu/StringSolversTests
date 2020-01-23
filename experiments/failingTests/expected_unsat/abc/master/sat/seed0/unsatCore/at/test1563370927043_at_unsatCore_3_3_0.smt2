(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () String)
(declare-fun tmp_int1_fresh () Int)
(declare-fun offset () Int)
(declare-fun s () String)
(assert  
 (not (= (str.at s offset) result)))
(assert  
 (= (str.to.int "1") tmp_int1_fresh))
(assert  
 (= (str.substr s offset tmp_int1_fresh) result))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;offset = NO VALUE
;result = NO VALUE
;tmp_int1_fresh = 1

;unsat core: a0 a1 a2 
;actual status: sat
;I0815 22:48:58.269323 10417 main.cpp:204] Done solving
;I0815 22:48:58.269441 10417 main.cpp:292] report is_sat: SAT time: 118.685 ms
;I0815 22:48:58.269492 10417 main.cpp:356] done.
