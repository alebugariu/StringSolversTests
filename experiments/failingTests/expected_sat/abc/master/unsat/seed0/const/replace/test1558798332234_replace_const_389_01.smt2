(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 tmp_str1 "-1") "-10"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 0
;tmp_str1 = 
;actual status: unsat
;I0818 17:36:11.084087  2548 main.cpp:352] report is_sat: UNSAT time: 1.65701 ms
;I0818 17:36:11.084112  2548 main.cpp:353] report count: 0 time: 0
;I0818 17:36:11.084120  2548 main.cpp:356] done.
