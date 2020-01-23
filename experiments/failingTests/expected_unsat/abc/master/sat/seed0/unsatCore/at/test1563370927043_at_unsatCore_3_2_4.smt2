(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun result_fresh () String)
(declare-fun offset () Int)
(declare-fun s () String)
(declare-fun tmp_str2 () String)
(declare-fun result () String)
(declare-fun tmp_str3 () String)
(assert  
 (not (= (str.at s offset) result)))
(assert  
 (= (str.substr s offset 1) result_fresh))
(assert  
 (and (= (str.replace result tmp_str2 tmp_str3) result_fresh) (= (str.contains result tmp_str2) false)))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;offset = NO VALUE
;result = NO VALUE
;result_fresh = NO VALUE
;tmp_str2 = NO VALUE
;tmp_str3 = NO VALUE

;unsat core: a0 a1 a2 
;actual status: sat
;I0815 22:48:56.852295 10407 main.cpp:204] Done solving
;I0815 22:48:56.852619 10407 main.cpp:292] report is_sat: SAT time: 129.675 ms
;I0815 22:48:56.852672 10407 main.cpp:356] done.
