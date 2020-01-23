(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str4 () String)
(assert
 (= (str.indexof (int.to.str tmp_int0) (int.to.str tmp_int0) (str.to.int tmp_str4)) (str.indexof tmp_str4 tmp_str4 tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str4 = a
;actual status: unsat
;I0818 17:36:46.044637  2987 UnaryAutomaton.cpp:325] 1
;I0818 17:36:46.044653  2987 UnaryAutomaton.cpp:326] 1
;I0818 17:36:46.044661  2987 UnaryAutomaton.cpp:327] 1
;I0818 17:36:46.050329  2987 UnaryAutomaton.cpp:325] 1
;I0818 17:36:46.070168  2987 UnaryAutomaton.cpp:326] 1
;I0818 17:36:46.070217  2987 UnaryAutomaton.cpp:327] 1
;I0818 17:36:46.240968  2987 main.cpp:204] Done solving
;I0818 17:36:46.241032  2987 main.cpp:352] report is_sat: UNSAT time: 198.729 ms
;I0818 17:36:46.241065  2987 main.cpp:353] report count: 0 time: 0
;I0818 17:36:46.241072  2987 main.cpp:356] done.
