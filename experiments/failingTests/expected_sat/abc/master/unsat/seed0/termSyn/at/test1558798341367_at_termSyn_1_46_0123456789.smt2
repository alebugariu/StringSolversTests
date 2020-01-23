(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int6 () Int)
(assert
 (= (str.at (str.replace tmp_str0 tmp_str0 tmp_str0) (str.indexof tmp_str0 tmp_str0 tmp_int6)) (str.replace tmp_str0 tmp_str0 tmp_str16)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int6 = -1
;tmp_str16 = 
;actual status: unsat
;I0818 17:37:22.470422  3294 main.cpp:204] Done solving
;I0818 17:37:22.472635  3294 main.cpp:352] report is_sat: UNSAT time: 135.518 ms
;I0818 17:37:22.472678  3294 main.cpp:353] report count: 0 time: 0
;I0818 17:37:22.472687  3294 main.cpp:356] done.
