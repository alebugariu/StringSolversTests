(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.indexof (int.to.str tmp_int0) (str.replace tmp_str2 tmp_str2 tmp_str2) (str.to.int tmp_str2)) (str.to.int tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: unsat
;I0818 17:36:45.568881  2983 UnaryAutomaton.cpp:325] 1
;I0818 17:36:45.568903  2983 UnaryAutomaton.cpp:326] 1
;I0818 17:36:45.568912  2983 UnaryAutomaton.cpp:327] 1
;I0818 17:36:45.618381  2983 main.cpp:204] Done solving
;I0818 17:36:45.618436  2983 main.cpp:352] report is_sat: UNSAT time: 51.8609 ms
;I0818 17:36:45.618465  2983 main.cpp:353] report count: 0 time: 0
;I0818 17:36:45.618474  2983 main.cpp:356] done.
