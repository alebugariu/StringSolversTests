(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (int.to.str (str.indexof tmp_str0 tmp_str0 tmp_int2)) (int.to.str tmp_int2)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int2 = -1
;actual status: unsat
;I0818 17:36:35.804260  2890 UnaryAutomaton.cpp:325] 1
;I0818 17:36:35.808533  2890 UnaryAutomaton.cpp:326] 1
;I0818 17:36:35.808548  2890 UnaryAutomaton.cpp:327] 1
;I0818 17:36:35.814049  2890 UnaryAutomaton.cpp:325] 1
;I0818 17:36:35.825700  2890 UnaryAutomaton.cpp:326] 1
;I0818 17:36:35.825736  2890 UnaryAutomaton.cpp:327] 1
;I0818 17:36:35.871137  2890 main.cpp:204] Done solving
;I0818 17:36:35.871194  2890 main.cpp:352] report is_sat: UNSAT time: 104.432 ms
;I0818 17:36:35.871227  2890 main.cpp:353] report count: 0 time: 0
;I0818 17:36:35.871234  2890 main.cpp:356] done.
