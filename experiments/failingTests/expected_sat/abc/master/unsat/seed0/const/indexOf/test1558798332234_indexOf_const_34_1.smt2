(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.indexof "\"a\"" tmp_str1 0) (- 1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = 
;actual status: unsat
;I0818 17:35:52.052754  2215 main.cpp:352] report is_sat: UNSAT time: 29.1035 ms
;I0818 17:35:52.052801  2215 main.cpp:353] report count: 0 time: 0
;I0818 17:35:52.052812  2215 main.cpp:356] done.
