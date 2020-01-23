(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result () String)
(declare-fun offset () Int)
(declare-fun s () String)
(assert  
 (not (= (str.at s offset) result)))
(assert  
 (= (str.substr s offset 1) result))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;offset = NO VALUE
;result = NO VALUE

;unsat core: a0 a1 
;actual status: sat
;I0815 22:48:02.758800 10221 main.cpp:204] Done solving
;I0815 22:48:02.758855 10221 main.cpp:292] report is_sat: SAT time: 96.0183 ms
;I0815 22:48:02.758890 10221 main.cpp:356] done.
