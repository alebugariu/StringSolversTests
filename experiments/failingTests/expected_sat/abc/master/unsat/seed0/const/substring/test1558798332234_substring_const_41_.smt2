(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.substr "\n" 0 2) "\n"))
(check-sat)

(get-info :reason-unknown)
;actual status: unsat
;I0818 17:35:43.899173  2132 main.cpp:352] report is_sat: UNSAT time: 0.428757 ms
;I0818 17:35:43.899205  2132 main.cpp:353] report count: 0 time: 0
;I0818 17:35:43.899219  2132 main.cpp:356] done.
