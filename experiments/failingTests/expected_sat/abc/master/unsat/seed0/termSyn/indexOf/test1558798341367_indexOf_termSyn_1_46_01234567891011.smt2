(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int9 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof (str.++ tmp_str0 tmp_str0) (str.replace tmp_str0 tmp_str0 tmp_str0) (str.indexof tmp_str0 tmp_str0 tmp_int9)) (str.indexof tmp_str0 tmp_str0 tmp_int9)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int9 = -1
;actual status: unsat
;I0818 17:36:48.381713  3005 main.cpp:204] Done solving
;I0818 17:36:48.381767  3005 main.cpp:352] report is_sat: UNSAT time: 79.1173 ms
;I0818 17:36:48.381799  3005 main.cpp:353] report count: 0 time: 0
;I0818 17:36:48.381806  3005 main.cpp:356] done.
