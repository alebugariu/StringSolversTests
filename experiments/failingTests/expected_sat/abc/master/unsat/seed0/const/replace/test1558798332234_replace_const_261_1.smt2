(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "\n" tmp_str1 "-1") "-1\n"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = 
;actual status: unsat
;I0818 17:36:04.634069  2425 main.cpp:352] report is_sat: UNSAT time: 2.09907 ms
;I0818 17:36:04.634094  2425 main.cpp:353] report count: 0 time: 0
;I0818 17:36:04.634104  2425 main.cpp:356] done.
