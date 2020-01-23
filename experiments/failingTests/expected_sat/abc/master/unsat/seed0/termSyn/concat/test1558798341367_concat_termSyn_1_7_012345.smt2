(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.++ (str.at tmp_str0 tmp_int1) (int.to.str tmp_int1)) (str.at tmp_str0 tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: unsat
;I0818 17:37:31.452781  3389 UnaryAutomaton.cpp:325] 1
;I0818 17:37:31.452831  3389 UnaryAutomaton.cpp:326] 1
;I0818 17:37:31.452841  3389 UnaryAutomaton.cpp:327] 1
;I0818 17:37:31.470266  3389 main.cpp:204] Done solving
;I0818 17:37:31.470332  3389 main.cpp:352] report is_sat: UNSAT time: 37.1363 ms
;I0818 17:37:31.470369  3389 main.cpp:353] report count: 0 time: 0
;I0818 17:37:31.470377  3389 main.cpp:356] done.
