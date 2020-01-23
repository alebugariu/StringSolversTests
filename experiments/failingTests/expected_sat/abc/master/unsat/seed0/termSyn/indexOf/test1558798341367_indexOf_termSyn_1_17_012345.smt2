(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.indexof (str.at tmp_str0 tmp_int1) (int.to.str tmp_int1) (str.to.int tmp_str0)) (str.to.int tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: unsat
;I0818 17:36:42.368883  2958 UnaryAutomaton.cpp:325] 1
;I0818 17:36:42.368913  2958 UnaryAutomaton.cpp:326] 1
;I0818 17:36:42.368921  2958 UnaryAutomaton.cpp:327] 1
;I0818 17:36:42.505780  2958 main.cpp:204] Done solving
;I0818 17:36:42.505841  2958 main.cpp:352] report is_sat: UNSAT time: 147.525 ms
;I0818 17:36:42.505869  2958 main.cpp:353] report count: 0 time: 0
;I0818 17:36:42.505877  2958 main.cpp:356] done.
