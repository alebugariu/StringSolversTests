(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.at "a" 2) ""))
(check-sat)

(get-info :reason-unknown)
;actual status: unsat
;I0818 17:36:17.459617  2656 main.cpp:352] report is_sat: UNSAT time: 1.01744 ms
;I0818 17:36:17.459640  2656 main.cpp:353] report count: 0 time: 0
;I0818 17:36:17.459647  2656 main.cpp:356] done.
