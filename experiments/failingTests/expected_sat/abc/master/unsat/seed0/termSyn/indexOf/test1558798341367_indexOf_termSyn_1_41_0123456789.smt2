(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int3 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof (str.++ tmp_str0 tmp_str0) (int.to.str tmp_int3) (str.indexof tmp_str0 tmp_str0 tmp_int3)) (str.indexof tmp_str0 tmp_str0 tmp_int3)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int3 = -1
;actual status: unsat
;I0818 17:36:45.752092  2985 UnaryAutomaton.cpp:325] 1
;I0818 17:36:45.752110  2985 UnaryAutomaton.cpp:326] 1
;I0818 17:36:45.752116  2985 UnaryAutomaton.cpp:327] 1
;I0818 17:36:45.946326  2985 main.cpp:204] Done solving
;I0818 17:36:45.946377  2985 main.cpp:352] report is_sat: UNSAT time: 215.281 ms
;I0818 17:36:45.946408  2985 main.cpp:353] report count: 0 time: 0
;I0818 17:36:45.946414  2985 main.cpp:356] done.
