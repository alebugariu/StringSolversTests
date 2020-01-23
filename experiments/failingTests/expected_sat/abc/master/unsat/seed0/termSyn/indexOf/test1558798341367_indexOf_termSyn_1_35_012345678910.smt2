(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int8 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof (str.++ tmp_str0 tmp_str0) (str.++ tmp_str0 tmp_str0) (str.indexof tmp_str0 tmp_str0 tmp_int8)) (str.indexof tmp_str0 tmp_str0 tmp_int8)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int8 = -1
;actual status: unsat
;I0818 17:36:42.669801  2959 main.cpp:204] Done solving
;I0818 17:36:42.673915  2959 main.cpp:352] report is_sat: UNSAT time: 158.818 ms
;I0818 17:36:42.673960  2959 main.cpp:353] report count: 0 time: 0
;I0818 17:36:42.673969  2959 main.cpp:356] done.
