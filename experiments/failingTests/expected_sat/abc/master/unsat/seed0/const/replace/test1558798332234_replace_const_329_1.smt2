(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "-1" tmp_str1 "\"a\"") "-1"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = "a"
;actual status: unsat
;I0818 17:35:53.920265  2244 main.cpp:352] report is_sat: UNSAT time: 2.58544 ms
;I0818 17:35:53.920302  2244 main.cpp:353] report count: 0 time: 0
;I0818 17:35:53.920313  2244 main.cpp:356] done.
