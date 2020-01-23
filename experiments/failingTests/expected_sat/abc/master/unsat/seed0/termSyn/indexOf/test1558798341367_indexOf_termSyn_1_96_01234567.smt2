(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof (str.replace tmp_str0 tmp_str0 tmp_str0) (str.++ tmp_str0 tmp_str0) (str.to.int tmp_str0)) (str.to.int tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;actual status: unsat
;I0818 17:36:43.061563  2963 main.cpp:352] report is_sat: UNSAT time: 95.6581 ms
;I0818 17:36:43.061594  2963 main.cpp:353] report count: 0 time: 0
;I0818 17:36:43.061602  2963 main.cpp:356] done.
