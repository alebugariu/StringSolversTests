(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int5 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof (str.replace tmp_str0 tmp_str0 tmp_str0) (str.substr tmp_str0 tmp_int5 tmp_int5) (str.to.int tmp_str0)) (str.indexof tmp_str0 tmp_str0 tmp_int5)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;actual status: unsat
;I0818 17:36:54.196641  3055 main.cpp:204] Done solving
;I0818 17:36:54.196696  3055 main.cpp:352] report is_sat: UNSAT time: 52.7022 ms
;I0818 17:36:54.196728  3055 main.cpp:353] report count: 0 time: 0
;I0818 17:36:54.196736  3055 main.cpp:356] done.
