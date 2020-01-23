(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.at "" tmp_int1) ""))
(check-sat)

(get-info :reason-unknown)

;tmp_int1 = -1
;actual status: unsat
;I0818 17:36:19.330485  2691 main.cpp:204] Done solving
;I0818 17:36:19.330528  2691 main.cpp:352] report is_sat: UNSAT time: 7.60554 ms
;I0818 17:36:19.330554  2691 main.cpp:353] report count: 0 time: 0
;I0818 17:36:19.330560  2691 main.cpp:356] done.
