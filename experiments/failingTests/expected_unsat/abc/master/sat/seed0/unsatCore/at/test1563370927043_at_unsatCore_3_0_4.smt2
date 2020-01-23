(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str2 () String)
(declare-fun s () String)
(declare-fun s_fresh () String)
(declare-fun tmp_str3 () String)
(declare-fun result () String)
(declare-fun offset () Int)
(assert  
 (and (= (str.replace s tmp_str2 tmp_str3) s_fresh) (= (str.contains s tmp_str2) false)))
(assert  
 (not (= (str.at s offset) result)))
(assert  
 (= (str.substr s_fresh offset 1) result))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;offset = NO VALUE
;result = NO VALUE
;tmp_str2 = NO VALUE
;tmp_str3 = NO VALUE
;s_fresh = NO VALUE

;unsat core: a0 a1 a2 
;actual status: sat
;I0815 22:48:56.379997 10403 main.cpp:204] Done solving
;I0815 22:48:56.380069 10403 main.cpp:292] report is_sat: SAT time: 182.022 ms
;I0815 22:48:56.380115 10403 main.cpp:356] done.
