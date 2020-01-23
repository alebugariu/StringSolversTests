(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.at "2" 2) ""))
(check-sat)

(get-info :reason-unknown)
;actual status: unsat
;I0818 17:36:17.805339  2661 main.cpp:352] report is_sat: UNSAT time: 1.41104 ms
;I0818 17:36:17.805373  2661 main.cpp:353] report count: 0 time: 0
;I0818 17:36:17.805382  2661 main.cpp:356] done.
