(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "\n" tmp_str1 "2") "\n"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = "a"
;actual status: unsat
;I0818 17:36:05.710557  2447 main.cpp:352] report is_sat: UNSAT time: 2.11036 ms
;I0818 17:36:05.710590  2447 main.cpp:353] report count: 0 time: 0
;I0818 17:36:05.710599  2447 main.cpp:356] done.
