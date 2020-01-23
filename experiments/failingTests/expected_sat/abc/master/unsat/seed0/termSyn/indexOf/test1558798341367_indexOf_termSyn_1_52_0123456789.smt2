(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (= (str.indexof (str.++ tmp_str0 tmp_str0) (str.substr tmp_str0 tmp_int4 tmp_int4) (str.indexof tmp_str0 tmp_str0 tmp_int4)) (str.to.int tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;actual status: unsat
;I0818 17:36:53.037008  3046 main.cpp:204] Done solving
;I0818 17:36:53.037065  3046 main.cpp:352] report is_sat: UNSAT time: 109.723 ms
;I0818 17:36:53.037099  3046 main.cpp:353] report count: 0 time: 0
;I0818 17:36:53.037106  3046 main.cpp:356] done.
