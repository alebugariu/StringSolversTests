(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.at "a" tmp_int1) ""))
(check-sat)

(get-info :reason-unknown)

;tmp_int1 = -1
;actual status: unsat
;I0818 17:36:17.217519  2648 main.cpp:204] Done solving
;I0818 17:36:17.217567  2648 main.cpp:352] report is_sat: UNSAT time: 22.4032 ms
;I0818 17:36:17.217595  2648 main.cpp:353] report count: 0 time: 0
;I0818 17:36:17.217602  2648 main.cpp:356] done.
