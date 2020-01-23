(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(assert
 (= (str.replace "\"a\"" "\"a\"" "") tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str3 = 
;actual status: unsat
;I0818 17:36:00.147939  2357 main.cpp:352] report is_sat: UNSAT time: 24.8563 ms
;I0818 17:36:00.147972  2357 main.cpp:353] report count: 0 time: 0
;I0818 17:36:00.147981  2357 main.cpp:356] done.
