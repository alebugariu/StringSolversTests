(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (= (str.++ (str.replace tmp_str0 tmp_str0 tmp_str0) (int.to.str tmp_int4)) (str.replace tmp_str0 tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;actual status: unsat
;I0818 17:37:31.092306  3384 UnaryAutomaton.cpp:325] 1
;I0818 17:37:31.092329  3384 UnaryAutomaton.cpp:326] 1
;I0818 17:37:31.092347  3384 UnaryAutomaton.cpp:327] 1
;I0818 17:37:31.098801  3384 main.cpp:204] Done solving
;I0818 17:37:31.098829  3384 main.cpp:352] report is_sat: UNSAT time: 8.86258 ms
;I0818 17:37:31.098852  3384 main.cpp:353] report count: 0 time: 0
;I0818 17:37:31.098860  3384 main.cpp:356] done.
