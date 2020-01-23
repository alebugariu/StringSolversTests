(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.indexof "\n" "" 2) (- 1)))
(check-sat)

(get-info :reason-unknown)
;actual status: unsat
;I0818 17:35:51.911482  2213 main.cpp:352] report is_sat: UNSAT time: 43.2437 ms
;I0818 17:35:51.911543  2213 main.cpp:353] report count: 0 time: 0
;I0818 17:35:51.911556  2213 main.cpp:356] done.
