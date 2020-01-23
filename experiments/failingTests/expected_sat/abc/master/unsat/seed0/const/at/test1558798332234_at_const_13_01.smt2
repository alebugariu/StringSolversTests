(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at tmp_str0 tmp_int1) "\n"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = \n
;tmp_int1 = 0
;actual status: unsat
;I0818 17:36:17.261564  2651 main.cpp:204] Done solving
;I0818 17:36:17.261605  2651 main.cpp:352] report is_sat: UNSAT time: 7.92345 ms
;I0818 17:36:17.261629  2651 main.cpp:353] report count: 0 time: 0
;I0818 17:36:17.261636  2651 main.cpp:356] done.
