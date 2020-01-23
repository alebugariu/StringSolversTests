(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "2" tmp_str1 "\"a\"") "\"a\"2"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = 
;actual status: unsat
;I0818 17:35:54.782308  2265 main.cpp:352] report is_sat: UNSAT time: 3.15555 ms
;I0818 17:35:54.782351  2265 main.cpp:353] report count: 0 time: 0
;I0818 17:35:54.782361  2265 main.cpp:356] done.
