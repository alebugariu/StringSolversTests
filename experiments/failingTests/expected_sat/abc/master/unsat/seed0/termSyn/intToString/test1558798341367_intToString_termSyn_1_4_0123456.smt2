(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (int.to.str (str.indexof tmp_str0 tmp_str0 tmp_int2)) (str.substr tmp_str0 tmp_int2 tmp_int2)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int2 = -1
;actual status: unsat
;I0818 17:36:35.903342  2891 UnaryAutomaton.cpp:325] 1
;I0818 17:36:35.903393  2891 UnaryAutomaton.cpp:326] 1
;I0818 17:36:35.903401  2891 UnaryAutomaton.cpp:327] 1
;I0818 17:36:35.965876  2891 main.cpp:204] Done solving
;I0818 17:36:35.965936  2891 main.cpp:352] report is_sat: UNSAT time: 90.3647 ms
;I0818 17:36:35.965967  2891 main.cpp:353] report count: 0 time: 0
;I0818 17:36:35.965975  2891 main.cpp:356] done.
