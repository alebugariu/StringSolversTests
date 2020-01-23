(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (= (str.indexof (int.to.str tmp_int0) (str.substr tmp_str2 tmp_int0 tmp_int0) (str.to.int tmp_str2)) (str.indexof tmp_str2 tmp_str2 tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: unsat
;I0818 17:36:52.534119  3042 UnaryAutomaton.cpp:325] 1
;I0818 17:36:52.534135  3042 UnaryAutomaton.cpp:326] 1
;I0818 17:36:52.534143  3042 UnaryAutomaton.cpp:327] 1
;I0818 17:36:52.609329  3042 main.cpp:204] Done solving
;I0818 17:36:52.609390  3042 main.cpp:352] report is_sat: UNSAT time: 77.2639 ms
;I0818 17:36:52.609421  3042 main.cpp:353] report count: 0 time: 0
;I0818 17:36:52.609429  3042 main.cpp:356] done.
