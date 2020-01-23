(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.indexof (int.to.str tmp_int0) (str.++ tmp_str2 tmp_str2) (str.to.int tmp_str2)) (str.to.int tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: unsat
;I0818 17:36:52.018604  3037 UnaryAutomaton.cpp:325] 1
;I0818 17:36:52.018625  3037 UnaryAutomaton.cpp:326] 1
;I0818 17:36:52.018632  3037 UnaryAutomaton.cpp:327] 1
;I0818 17:36:52.129889  3037 main.cpp:204] Done solving
;I0818 17:36:52.132824  3037 main.cpp:352] report is_sat: UNSAT time: 113.313 ms
;I0818 17:36:52.132870  3037 main.cpp:353] report count: 0 time: 0
;I0818 17:36:52.132881  3037 main.cpp:356] done.
