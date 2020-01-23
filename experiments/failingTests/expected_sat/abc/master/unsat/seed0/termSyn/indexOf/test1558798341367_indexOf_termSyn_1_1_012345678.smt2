(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.indexof (str.at tmp_str0 tmp_int1) (str.at tmp_str0 tmp_int1) (str.indexof tmp_str0 tmp_str0 tmp_int1)) (str.to.int tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: unsat
;I0818 17:36:48.745774  3008 main.cpp:204] Done solving
;I0818 17:36:48.745824  3008 main.cpp:352] report is_sat: UNSAT time: 162.157 ms
;I0818 17:36:48.745857  3008 main.cpp:353] report count: 0 time: 0
;I0818 17:36:48.745864  3008 main.cpp:356] done.
