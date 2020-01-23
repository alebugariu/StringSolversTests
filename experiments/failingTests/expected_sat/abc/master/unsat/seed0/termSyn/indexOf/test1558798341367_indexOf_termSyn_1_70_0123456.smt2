(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str4 () String)
(assert
 (= (str.indexof (int.to.str tmp_int0) (int.to.str tmp_int0) (str.len tmp_str4)) (str.indexof tmp_str4 tmp_str4 tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str4 = a
;actual status: unsat
;I0818 17:36:52.713481  3044 UnaryAutomaton.cpp:325] 1
;I0818 17:36:52.713511  3044 UnaryAutomaton.cpp:326] 1
;I0818 17:36:52.713521  3044 UnaryAutomaton.cpp:327] 1
;I0818 17:36:52.719936  3044 UnaryAutomaton.cpp:325] 1
;I0818 17:36:52.719975  3044 UnaryAutomaton.cpp:326] 1
;I0818 17:36:52.719985  3044 UnaryAutomaton.cpp:327] 1
;I0818 17:36:52.853528  3044 main.cpp:204] Done solving
;I0818 17:36:52.853585  3044 main.cpp:352] report is_sat: UNSAT time: 144.766 ms
;I0818 17:36:52.853615  3044 main.cpp:353] report count: 0 time: 0
;I0818 17:36:52.853623  3044 main.cpp:356] done.
