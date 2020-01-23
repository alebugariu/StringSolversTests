(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at (str.++ tmp_str0 tmp_str0) (str.len tmp_str0)) (str.replace tmp_str0 tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;actual status: unsat
;I0818 17:37:18.483173  3258 main.cpp:352] report is_sat: UNSAT time: 75.778 ms
;I0818 17:37:18.483211  3258 main.cpp:353] report count: 0 time: 0
;I0818 17:37:18.483219  3258 main.cpp:356] done.
