(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.indexof (str.substr tmp_str0 tmp_int1 tmp_int1) (str.++ tmp_str0 tmp_str0) (str.len tmp_str0)) (str.to.int tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: unsat
;I0818 17:36:43.428279  2966 main.cpp:204] Done solving
;I0818 17:36:43.428334  2966 main.cpp:352] report is_sat: UNSAT time: 126.095 ms
;I0818 17:36:43.428370  2966 main.cpp:353] report count: 0 time: 0
;I0818 17:36:43.428377  2966 main.cpp:356] done.
