(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.len "\n") 1))
(check-sat)

(get-info :reason-unknown)
;actual status: unsat
;I0818 17:35:42.736032  2120 main.cpp:352] report is_sat: UNSAT time: 0.629776 ms
;I0818 17:35:42.736133  2120 main.cpp:353] report count: 0 time: 0
;I0818 17:35:42.736155  2120 main.cpp:356] done.
