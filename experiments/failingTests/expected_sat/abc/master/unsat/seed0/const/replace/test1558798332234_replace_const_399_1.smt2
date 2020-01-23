(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "0" tmp_str1 "2") "0"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = "a"
;actual status: unsat
;I0818 17:36:05.527851  2439 main.cpp:352] report is_sat: UNSAT time: 2.4136 ms
;I0818 17:36:05.527882  2439 main.cpp:353] report count: 0 time: 0
;I0818 17:36:05.527891  2439 main.cpp:356] done.
