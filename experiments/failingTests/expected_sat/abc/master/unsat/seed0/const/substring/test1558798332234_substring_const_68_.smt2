(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.substr "2" 0 2) "2"))
(check-sat)

(get-info :reason-unknown)
;actual status: unsat
;I0818 17:35:43.477949  2126 main.cpp:352] report is_sat: UNSAT time: 0.509089 ms
;I0818 17:35:43.478015  2126 main.cpp:353] report count: 0 time: 0
;I0818 17:35:43.478034  2126 main.cpp:356] done.
