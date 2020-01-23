(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.++ (str.at tmp_str0 tmp_int1) (str.at tmp_str0 tmp_int1)) (str.at tmp_str0 tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: unsat
;I0818 17:37:31.942122  3395 main.cpp:204] Done solving
;I0818 17:37:31.942183  3395 main.cpp:352] report is_sat: UNSAT time: 44.9652 ms
;I0818 17:37:31.942216  3395 main.cpp:353] report count: 0 time: 0
;I0818 17:37:31.942224  3395 main.cpp:356] done.
