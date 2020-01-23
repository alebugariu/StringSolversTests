(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str4 () String)
(assert
 (= (str.indexof (int.to.str tmp_int0) (int.to.str tmp_int0) (str.indexof tmp_str4 tmp_str4 tmp_int0)) (str.indexof tmp_str4 tmp_str4 tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str4 = a
;actual status: unsat
;I0818 17:36:51.439767  3033 UnaryAutomaton.cpp:325] 1
;I0818 17:36:51.439785  3033 UnaryAutomaton.cpp:326] 1
;I0818 17:36:51.439792  3033 UnaryAutomaton.cpp:327] 1
;I0818 17:36:51.445873  3033 UnaryAutomaton.cpp:325] 1
;I0818 17:36:51.445902  3033 UnaryAutomaton.cpp:326] 1
;I0818 17:36:51.445911  3033 UnaryAutomaton.cpp:327] 1
;I0818 17:36:51.643688  3033 main.cpp:204] Done solving
;I0818 17:36:51.643740  3033 main.cpp:352] report is_sat: UNSAT time: 206.223 ms
;I0818 17:36:51.643765  3033 main.cpp:353] report count: 0 time: 0
;I0818 17:36:51.643772  3033 main.cpp:356] done.
