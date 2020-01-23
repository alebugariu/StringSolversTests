(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int9 () Int)
(assert
 (= (str.indexof (str.++ tmp_str0 tmp_str0) (str.replace tmp_str0 tmp_str0 tmp_str0) (str.indexof tmp_str0 tmp_str0 tmp_int9)) (str.to.int tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int9 = -1
;actual status: unsat
;I0818 17:36:47.365008  2996 main.cpp:204] Done solving
;I0818 17:36:47.365068  2996 main.cpp:352] report is_sat: UNSAT time: 92.4286 ms
;I0818 17:36:47.365105  2996 main.cpp:353] report count: 0 time: 0
;I0818 17:36:47.365114  2996 main.cpp:356] done.
