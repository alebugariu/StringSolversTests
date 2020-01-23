(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int16 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof (str.++ tmp_str0 tmp_str0) (str.++ tmp_str0 tmp_str0) (str.len tmp_str0)) (str.indexof tmp_str0 tmp_str0 tmp_int16)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int16 = -1
;actual status: unsat
;I0818 17:36:43.868454  2970 main.cpp:352] report is_sat: UNSAT time: 59.4838 ms
;I0818 17:36:43.868485  2970 main.cpp:353] report count: 0 time: 0
;I0818 17:36:43.868494  2970 main.cpp:356] done.
