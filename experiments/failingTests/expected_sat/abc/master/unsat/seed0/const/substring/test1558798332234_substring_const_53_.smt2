(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.substr "-1" 2 2) ""))
(check-sat)

(get-info :reason-unknown)
;actual status: unsat
;I0818 17:35:43.893254  2131 main.cpp:352] report is_sat: UNSAT time: 0.503666 ms
;I0818 17:35:43.893311  2131 main.cpp:353] report count: 0 time: 0
;I0818 17:35:43.893327  2131 main.cpp:356] done.
