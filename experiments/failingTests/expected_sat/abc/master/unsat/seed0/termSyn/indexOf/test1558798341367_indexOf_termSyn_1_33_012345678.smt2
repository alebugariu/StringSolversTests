(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int4 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof (str.++ tmp_str0 tmp_str0) (str.at tmp_str0 tmp_int4) (str.to.int tmp_str0)) (str.indexof tmp_str0 tmp_str0 tmp_int4)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;actual status: unsat
;I0818 17:36:55.830024  3067 main.cpp:204] Done solving
;I0818 17:36:55.830076  3067 main.cpp:352] report is_sat: UNSAT time: 280.697 ms
;I0818 17:36:55.830108  3067 main.cpp:353] report count: 0 time: 0
;I0818 17:36:55.830116  3067 main.cpp:356] done.
