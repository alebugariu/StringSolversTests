(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "\"a\"" tmp_str1 "2") "2\"a\""))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = 
;actual status: unsat
;I0818 17:35:53.925258  2245 main.cpp:352] report is_sat: UNSAT time: 1.91292 ms
;I0818 17:35:53.925290  2245 main.cpp:353] report count: 0 time: 0
;I0818 17:35:53.925302  2245 main.cpp:356] done.
