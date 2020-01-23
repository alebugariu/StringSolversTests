(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.at "-1" 2) ""))
(check-sat)

(get-info :reason-unknown)
;actual status: unsat
;I0818 17:36:18.954321  2683 main.cpp:352] report is_sat: UNSAT time: 0.955495 ms
;I0818 17:36:18.954341  2683 main.cpp:353] report count: 0 time: 0
;I0818 17:36:18.954349  2683 main.cpp:356] done.
