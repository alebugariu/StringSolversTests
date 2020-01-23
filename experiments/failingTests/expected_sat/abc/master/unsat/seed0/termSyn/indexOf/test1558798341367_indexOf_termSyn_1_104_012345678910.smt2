(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int20 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof (str.replace tmp_str0 tmp_str0 tmp_str0) (str.replace tmp_str0 tmp_str0 tmp_str0) (str.len tmp_str0)) (str.indexof tmp_str0 tmp_str0 tmp_int20)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int20 = -1
;actual status: unsat
;I0818 17:36:53.607971  3051 main.cpp:352] report is_sat: UNSAT time: 83.9802 ms
;I0818 17:36:53.608009  3051 main.cpp:353] report count: 0 time: 0
;I0818 17:36:53.608018  3051 main.cpp:356] done.
