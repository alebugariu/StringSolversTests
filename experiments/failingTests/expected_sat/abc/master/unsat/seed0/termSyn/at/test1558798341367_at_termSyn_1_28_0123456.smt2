(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (= (str.at (int.to.str tmp_int0) (str.indexof tmp_str2 tmp_str2 tmp_int0)) (str.at tmp_str2 tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: unsat
;I0818 17:37:22.691243  3297 UnaryAutomaton.cpp:325] 1
;I0818 17:37:22.691362  3297 UnaryAutomaton.cpp:326] 1
;I0818 17:37:22.691392  3297 UnaryAutomaton.cpp:327] 1
;I0818 17:37:22.869477  3297 main.cpp:204] Done solving
;I0818 17:37:22.871811  3297 main.cpp:352] report is_sat: UNSAT time: 180.714 ms
;I0818 17:37:22.871856  3297 main.cpp:353] report count: 0 time: 0
;I0818 17:37:22.871867  3297 main.cpp:356] done.
