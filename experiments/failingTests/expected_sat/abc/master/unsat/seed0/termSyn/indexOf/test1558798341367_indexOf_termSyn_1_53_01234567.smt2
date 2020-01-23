(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (= (str.indexof (str.++ tmp_str0 tmp_str0) (str.substr tmp_str0 tmp_int4 tmp_int4) (str.len tmp_str0)) (str.len tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;actual status: unsat
;I0818 17:36:48.121721  3003 main.cpp:204] Done solving
;I0818 17:36:48.121778  3003 main.cpp:352] report is_sat: UNSAT time: 101.639 ms
;I0818 17:36:48.121811  3003 main.cpp:353] report count: 0 time: 0
;I0818 17:36:48.121819  3003 main.cpp:356] done.
