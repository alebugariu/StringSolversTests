(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof (str.substr tmp_str0 tmp_int1 tmp_int1) (str.++ tmp_str0 tmp_str0) (str.to.int tmp_str0)) (str.indexof tmp_str0 tmp_str0 tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: unsat
;I0818 17:36:49.859882  3017 main.cpp:204] Done solving
;I0818 17:36:49.862385  3017 main.cpp:352] report is_sat: UNSAT time: 111.69 ms
;I0818 17:36:49.862426  3017 main.cpp:353] report count: 0 time: 0
;I0818 17:36:49.862433  3017 main.cpp:356] done.
