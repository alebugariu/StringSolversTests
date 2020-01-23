(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.indexof (str.at tmp_str0 tmp_int1) (int.to.str tmp_int1) (str.indexof tmp_str0 tmp_str0 tmp_int1)) (str.to.int tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: unsat
;I0818 17:36:49.381793  3014 UnaryAutomaton.cpp:325] 1
;I0818 17:36:49.381834  3014 UnaryAutomaton.cpp:326] 1
;I0818 17:36:49.381844  3014 UnaryAutomaton.cpp:327] 1
;I0818 17:36:49.512199  3014 main.cpp:204] Done solving
;I0818 17:36:49.512253  3014 main.cpp:352] report is_sat: UNSAT time: 139.975 ms
;I0818 17:36:49.512285  3014 main.cpp:353] report count: 0 time: 0
;I0818 17:36:49.512293  3014 main.cpp:356] done.
