(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "2" tmp_str1 "-1") "2"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = "a"
;actual status: unsat
;I0818 17:36:14.868433  2605 main.cpp:352] report is_sat: UNSAT time: 1.933 ms
;I0818 17:36:14.868472  2605 main.cpp:353] report count: 0 time: 0
;I0818 17:36:14.868480  2605 main.cpp:356] done.
