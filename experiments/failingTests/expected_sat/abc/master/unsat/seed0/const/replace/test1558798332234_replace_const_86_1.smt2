(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "\"a\"" tmp_str1 "0") "\"0\""))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = a
;actual status: unsat
;I0818 17:36:07.071646  2481 main.cpp:352] report is_sat: UNSAT time: 1.91663 ms
;I0818 17:36:07.071669  2481 main.cpp:353] report count: 0 time: 0
;I0818 17:36:07.071678  2481 main.cpp:356] done.
