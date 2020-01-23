(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.to.int (str.at tmp_str0 tmp_int1)) (str.indexof tmp_str0 tmp_str0 tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: unsat
;I0818 17:36:56.945343  3075 main.cpp:204] Done solving
;I0818 17:36:56.945396  3075 main.cpp:352] report is_sat: UNSAT time: 170.31 ms
;I0818 17:36:56.945432  3075 main.cpp:353] report count: 0 time: 0
;I0818 17:36:56.945441  3075 main.cpp:356] done.
