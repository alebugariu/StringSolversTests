(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str8 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int2 () Int)
(assert
 (= (int.to.str (str.indexof tmp_str0 tmp_str0 tmp_int2)) (str.replace tmp_str0 tmp_str0 tmp_str8)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int2 = -1
;tmp_str8 = 
;actual status: unsat
;I0818 17:36:35.737994  2889 UnaryAutomaton.cpp:325] 1
;I0818 17:36:35.738032  2889 UnaryAutomaton.cpp:326] 1
;I0818 17:36:35.738041  2889 UnaryAutomaton.cpp:327] 1
;I0818 17:36:35.761386  2889 main.cpp:204] Done solving
;I0818 17:36:35.761418  2889 main.cpp:352] report is_sat: UNSAT time: 49.6423 ms
;I0818 17:36:35.761445  2889 main.cpp:353] report count: 0 time: 0
;I0818 17:36:35.761453  2889 main.cpp:356] done.
