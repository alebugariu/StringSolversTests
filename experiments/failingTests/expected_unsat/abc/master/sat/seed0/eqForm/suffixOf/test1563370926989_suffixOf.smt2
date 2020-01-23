(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun s () String)
(declare-fun t1 () String)
(assert  
 (= (str.++ t1 s) t))
(assert  
 (not (= (str.suffixof s t) true)))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t1 = NO VALUE

;unsat core: a0 a1 
;actual status: sat
;I0815 22:48:02.285864 10216 main.cpp:292] report is_sat: SAT time: 52.1098 ms
;I0815 22:48:02.285899 10216 main.cpp:356] done.
