(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.to.int "\"a\"") (- 1)))
(check-sat)

(get-info :reason-unknown)
;actual status: unsat
;I0818 17:35:53.885870  2241 main.cpp:352] report is_sat: UNSAT time: 0.510405 ms
;I0818 17:35:53.885907  2241 main.cpp:353] report count: 0 time: 0
;I0818 17:35:53.885918  2241 main.cpp:356] done.
