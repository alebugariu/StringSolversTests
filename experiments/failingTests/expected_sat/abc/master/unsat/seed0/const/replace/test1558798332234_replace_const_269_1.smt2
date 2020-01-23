(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "\n" tmp_str1 "-1") "\n"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = "a"
;actual status: unsat
;I0818 17:36:14.847090  2603 main.cpp:352] report is_sat: UNSAT time: 2.17425 ms
;I0818 17:36:14.847133  2603 main.cpp:353] report count: 0 time: 0
;I0818 17:36:14.847142  2603 main.cpp:356] done.
