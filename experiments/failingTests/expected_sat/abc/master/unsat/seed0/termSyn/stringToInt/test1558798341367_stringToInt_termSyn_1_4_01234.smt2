(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str5 () String)
(assert
 (= (str.to.int (int.to.str tmp_int0)) (str.indexof tmp_str5 tmp_str5 tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str5 = a
;actual status: unsat
;I0818 17:36:56.473289  3073 UnaryAutomaton.cpp:325] 1
;I0818 17:36:56.473309  3073 UnaryAutomaton.cpp:326] 1
;I0818 17:36:56.473316  3073 UnaryAutomaton.cpp:327] 1
;I0818 17:36:56.481191  3073 UnaryAutomaton.cpp:325] 1
;I0818 17:36:56.481230  3073 UnaryAutomaton.cpp:326] 1
;I0818 17:36:56.481240  3073 UnaryAutomaton.cpp:327] 1
;I0818 17:36:56.608820  3073 main.cpp:204] Done solving
;I0818 17:36:56.615413  3073 main.cpp:352] report is_sat: UNSAT time: 138.333 ms
;I0818 17:36:56.615494  3073 main.cpp:353] report count: 0 time: 0
;I0818 17:36:56.615504  3073 main.cpp:356] done.
