(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str10 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.at (str.at tmp_str0 tmp_int1) (str.to.int tmp_str0)) (str.++ tmp_str10 tmp_str10)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str10 = 
;actual status: unsat
;I0818 17:37:19.834982  3269 main.cpp:204] Done solving
;I0818 17:37:19.835047  3269 main.cpp:352] report is_sat: UNSAT time: 95.704 ms
;I0818 17:37:19.835091  3269 main.cpp:353] report count: 0 time: 0
;I0818 17:37:19.835101  3269 main.cpp:356] done.
