(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "2" tmp_str1 "a") "2"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = "a"
;actual status: unsat
;I0818 17:36:06.193094  2463 main.cpp:352] report is_sat: UNSAT time: 1.68467 ms
;I0818 17:36:06.193118  2463 main.cpp:353] report count: 0 time: 0
;I0818 17:36:06.193127  2463 main.cpp:356] done.
