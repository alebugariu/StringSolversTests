(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.at "\n" tmp_int1) "\n"))
(check-sat)

(get-info :reason-unknown)

;tmp_int1 = 0
;actual status: unsat
;I0818 17:36:17.120999  2643 main.cpp:204] Done solving
;I0818 17:36:17.121052  2643 main.cpp:352] report is_sat: UNSAT time: 12.1551 ms
;I0818 17:36:17.121083  2643 main.cpp:353] report count: 0 time: 0
;I0818 17:36:17.121091  2643 main.cpp:356] done.
