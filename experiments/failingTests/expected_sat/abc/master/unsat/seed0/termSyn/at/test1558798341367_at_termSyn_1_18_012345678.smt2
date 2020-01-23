(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str14 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (= (str.at (str.++ tmp_str0 tmp_str0) (str.indexof tmp_str0 tmp_str0 tmp_int5)) (str.replace tmp_str0 tmp_str0 tmp_str14)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_str14 = 
;actual status: unsat
;I0818 17:37:18.762220  3260 main.cpp:204] Done solving
;I0818 17:37:18.765319  3260 main.cpp:352] report is_sat: UNSAT time: 136.38 ms
;I0818 17:37:18.765379  3260 main.cpp:353] report count: 0 time: 0
;I0818 17:37:18.765390  3260 main.cpp:356] done.
