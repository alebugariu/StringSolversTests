(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.indexof "\"a\"" tmp_str1 0) 1))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = a
;actual status: unsat
;I0818 17:35:50.827054  2200 main.cpp:352] report is_sat: UNSAT time: 100.112 ms
;I0818 17:35:50.827127  2200 main.cpp:353] report count: 0 time: 0
;I0818 17:35:50.827141  2200 main.cpp:356] done.
