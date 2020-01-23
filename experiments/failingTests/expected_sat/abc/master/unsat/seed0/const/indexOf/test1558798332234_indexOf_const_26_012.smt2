(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(declare-fun tmp_str1 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof tmp_str0 tmp_str1 tmp_int2) 2))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = "a"
;tmp_str1 = 
;tmp_int2 = 2
;actual status: unsat
;I0818 17:35:50.010833  2193 main.cpp:204] Done solving
;I0818 17:35:50.010903  2193 main.cpp:352] report is_sat: UNSAT time: 73.731 ms
;I0818 17:35:50.010951  2193 main.cpp:353] report count: 0 time: 0
;I0818 17:35:50.010962  2193 main.cpp:356] done.
