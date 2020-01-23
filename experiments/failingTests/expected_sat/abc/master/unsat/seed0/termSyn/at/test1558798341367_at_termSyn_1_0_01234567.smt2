(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at (str.at tmp_str0 tmp_int1) (str.indexof tmp_str0 tmp_str0 tmp_int1)) (str.at tmp_str0 tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: unsat
;I0818 17:37:26.392985  3328 main.cpp:204] Done solving
;I0818 17:37:26.393057  3328 main.cpp:352] report is_sat: UNSAT time: 294.919 ms
;I0818 17:37:26.393100  3328 main.cpp:353] report count: 0 time: 0
;I0818 17:37:26.393110  3328 main.cpp:356] done.
