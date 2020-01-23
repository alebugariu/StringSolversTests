(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "\n" tmp_str1 "0") "\n"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = "a"
;actual status: unsat
;I0818 17:35:55.622944  2280 main.cpp:352] report is_sat: UNSAT time: 1.65936 ms
;I0818 17:35:55.624270  2280 main.cpp:353] report count: 0 time: 0
;I0818 17:35:55.624291  2280 main.cpp:356] done.
