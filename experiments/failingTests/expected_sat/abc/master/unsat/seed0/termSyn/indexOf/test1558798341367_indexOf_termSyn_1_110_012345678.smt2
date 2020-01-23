(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (= (str.indexof (str.replace tmp_str0 tmp_str0 tmp_str0) (str.substr tmp_str0 tmp_int5 tmp_int5) (str.len tmp_str0)) (str.len tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;actual status: unsat
;I0818 17:36:50.808326  3026 main.cpp:204] Done solving
;I0818 17:36:50.808398  3026 main.cpp:352] report is_sat: UNSAT time: 54.696 ms
;I0818 17:36:50.810570  3026 main.cpp:353] report count: 0 time: 0
;I0818 17:36:50.810580  3026 main.cpp:356] done.
