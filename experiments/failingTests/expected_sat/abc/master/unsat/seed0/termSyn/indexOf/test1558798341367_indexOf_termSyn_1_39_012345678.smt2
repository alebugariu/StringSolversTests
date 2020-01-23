(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int16 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof (str.++ tmp_str0 tmp_str0) (str.++ tmp_str0 tmp_str0) (str.to.int tmp_str0)) (str.indexof tmp_str0 tmp_str0 tmp_int16)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int16 = -1
;actual status: unsat
;I0818 17:36:52.004144  3036 main.cpp:352] report is_sat: UNSAT time: 73.9174 ms
;I0818 17:36:52.004178  3036 main.cpp:353] report count: 0 time: 0
;I0818 17:36:52.004185  3036 main.cpp:356] done.
