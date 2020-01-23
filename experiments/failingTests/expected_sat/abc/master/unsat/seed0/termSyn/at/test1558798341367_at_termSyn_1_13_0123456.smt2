(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str10 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.at (str.at tmp_str0 tmp_int1) (str.to.int tmp_str0)) (str.replace tmp_str0 tmp_str0 tmp_str10)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str10 = 
;actual status: unsat
;I0818 17:37:27.107131  3335 main.cpp:204] Done solving
;I0818 17:37:27.107195  3335 main.cpp:352] report is_sat: UNSAT time: 87.6898 ms
;I0818 17:37:27.107239  3335 main.cpp:353] report count: 0 time: 0
;I0818 17:37:27.107247  3335 main.cpp:356] done.
