(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (int.to.str (- 1)) ""))
(check-sat)

(get-info :reason-unknown)
;actual status: unsat
;I0818 17:35:42.034476  2113 main.cpp:352] report is_sat: UNSAT time: 0.710833 ms
;I0818 17:35:42.034579  2113 main.cpp:353] report count: 0 time: 0
;I0818 17:35:42.034615  2113 main.cpp:356] done.
