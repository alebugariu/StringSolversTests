(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str14 () String)
(declare-fun tmp_int5 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at (str.++ tmp_str0 tmp_str0) (str.indexof tmp_str0 tmp_str0 tmp_int5)) (str.++ tmp_str14 tmp_str14)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_str14 = 
;actual status: unsat
;I0818 17:37:18.620954  3259 main.cpp:204] Done solving
;I0818 17:37:18.621026  3259 main.cpp:352] report is_sat: UNSAT time: 133.603 ms
;I0818 17:37:18.621068  3259 main.cpp:353] report count: 0 time: 0
;I0818 17:37:18.621078  3259 main.cpp:356] done.
