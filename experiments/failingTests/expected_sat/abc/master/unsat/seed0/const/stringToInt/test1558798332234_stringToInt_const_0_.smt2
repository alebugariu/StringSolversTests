(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.to.int "") (- 1)))
(check-sat)

(get-info :reason-unknown)
;actual status: unsat
;I0818 17:35:53.873543  2240 main.cpp:352] report is_sat: UNSAT time: 0.478274 ms
;I0818 17:35:53.873571  2240 main.cpp:353] report count: 0 time: 0
;I0818 17:35:53.873581  2240 main.cpp:356] done.
