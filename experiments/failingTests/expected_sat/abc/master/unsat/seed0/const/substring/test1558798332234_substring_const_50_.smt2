(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.substr "-1" 0 2) "-1"))
(check-sat)

(get-info :reason-unknown)
;actual status: unsat
;I0818 17:35:42.777055  2121 main.cpp:352] report is_sat: UNSAT time: 0.536604 ms
;I0818 17:35:42.777139  2121 main.cpp:353] report count: 0 time: 0
;I0818 17:35:42.777163  2121 main.cpp:356] done.
