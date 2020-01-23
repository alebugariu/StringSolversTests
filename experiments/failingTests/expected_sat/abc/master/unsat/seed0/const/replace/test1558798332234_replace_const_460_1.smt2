(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "2" tmp_str1 "\n") "2"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = "a"
;actual status: unsat
;I0818 17:36:08.196395  2503 main.cpp:352] report is_sat: UNSAT time: 2.1156 ms
;I0818 17:36:08.196441  2503 main.cpp:353] report count: 0 time: 0
;I0818 17:36:08.196455  2503 main.cpp:356] done.
