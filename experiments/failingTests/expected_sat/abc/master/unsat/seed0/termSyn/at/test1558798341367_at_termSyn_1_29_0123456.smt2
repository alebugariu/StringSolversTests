(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (= (str.at (int.to.str tmp_int0) (str.indexof tmp_str2 tmp_str2 tmp_int0)) (str.++ tmp_str12 tmp_str12)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str12 = 
;actual status: unsat
;I0818 17:37:19.609961  3268 UnaryAutomaton.cpp:325] 1
;I0818 17:37:19.609982  3268 UnaryAutomaton.cpp:326] 1
;I0818 17:37:19.609990  3268 UnaryAutomaton.cpp:327] 1
;I0818 17:37:19.735474  3268 main.cpp:204] Done solving
;I0818 17:37:19.735535  3268 main.cpp:352] report is_sat: UNSAT time: 127.649 ms
;I0818 17:37:19.735563  3268 main.cpp:353] report count: 0 time: 0
;I0818 17:37:19.735572  3268 main.cpp:356] done.
