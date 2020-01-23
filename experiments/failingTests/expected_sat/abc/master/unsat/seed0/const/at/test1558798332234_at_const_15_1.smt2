(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.at "-1" tmp_int1) ""))
(check-sat)

(get-info :reason-unknown)

;tmp_int1 = -1
;actual status: unsat
;I0818 17:36:17.446868  2655 main.cpp:204] Done solving
;I0818 17:36:17.446923  2655 main.cpp:352] report is_sat: UNSAT time: 9.94986 ms
;I0818 17:36:17.446955  2655 main.cpp:353] report count: 0 time: 0
;I0818 17:36:17.446964  2655 main.cpp:356] done.
