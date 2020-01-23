(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(assert
 (= (int.to.str tmp_int0) ""))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;actual status: unsat
;I0818 17:35:42.294338  2117 UnaryAutomaton.cpp:325] 1
;I0818 17:35:42.294411  2117 UnaryAutomaton.cpp:326] 1
;I0818 17:35:42.294440  2117 UnaryAutomaton.cpp:327] 1
;I0818 17:35:42.309355  2117 main.cpp:204] Done solving
;I0818 17:35:42.315454  2117 main.cpp:352] report is_sat: UNSAT time: 31.483 ms
;I0818 17:35:42.315789  2117 main.cpp:353] report count: 0 time: 0
;I0818 17:35:42.315829  2117 main.cpp:356] done.
