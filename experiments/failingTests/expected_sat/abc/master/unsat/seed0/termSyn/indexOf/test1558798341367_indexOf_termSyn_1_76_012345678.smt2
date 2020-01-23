(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (= (str.indexof (int.to.str tmp_int0) (str.replace tmp_str2 tmp_str2 tmp_str2) (str.len tmp_str2)) (str.indexof tmp_str2 tmp_str2 tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: unsat
;I0818 17:36:44.127403  2973 UnaryAutomaton.cpp:325] 1
;I0818 17:36:44.134456  2973 UnaryAutomaton.cpp:326] 1
;I0818 17:36:44.134481  2973 UnaryAutomaton.cpp:327] 1
;I0818 17:36:44.212110  2973 main.cpp:204] Done solving
;I0818 17:36:44.215646  2973 main.cpp:352] report is_sat: UNSAT time: 86.6124 ms
;I0818 17:36:44.215678  2973 main.cpp:353] report count: 0 time: 0
;I0818 17:36:44.215687  2973 main.cpp:356] done.
