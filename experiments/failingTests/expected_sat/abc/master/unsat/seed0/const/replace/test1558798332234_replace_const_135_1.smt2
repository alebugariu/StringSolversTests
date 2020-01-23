(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "a" tmp_str1 "2") "2a"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = 
;actual status: unsat
;I0818 17:35:56.579668  2302 main.cpp:352] report is_sat: UNSAT time: 1.79165 ms
;I0818 17:35:56.579700  2302 main.cpp:353] report count: 0 time: 0
;I0818 17:35:56.579710  2302 main.cpp:356] done.
