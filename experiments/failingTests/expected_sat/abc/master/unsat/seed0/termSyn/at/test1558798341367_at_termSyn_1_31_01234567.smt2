(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.at (int.to.str tmp_int0) (str.indexof tmp_str2 tmp_str2 tmp_int0)) (str.replace tmp_str2 tmp_str2 tmp_str12)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str12 = 
;actual status: unsat
;I0818 17:37:20.345679  3275 UnaryAutomaton.cpp:325] 1
;I0818 17:37:20.345705  3275 UnaryAutomaton.cpp:326] 1
;I0818 17:37:20.345715  3275 UnaryAutomaton.cpp:327] 1
;I0818 17:37:20.440919  3275 main.cpp:204] Done solving
;I0818 17:37:20.440981  3275 main.cpp:352] report is_sat: UNSAT time: 97.4214 ms
;I0818 17:37:20.441007  3275 main.cpp:353] report count: 0 time: 0
;I0818 17:37:20.441015  3275 main.cpp:356] done.
