(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (= (str.indexof (int.to.str tmp_int0) (str.at tmp_str2 tmp_int0) (str.indexof tmp_str2 tmp_str2 tmp_int0)) (str.indexof tmp_str2 tmp_str2 tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: unsat
;I0818 17:36:50.390020  3023 UnaryAutomaton.cpp:325] 1
;I0818 17:36:50.390041  3023 UnaryAutomaton.cpp:326] 1
;I0818 17:36:50.390049  3023 UnaryAutomaton.cpp:327] 1
;I0818 17:36:50.559698  3023 main.cpp:204] Done solving
;I0818 17:36:50.559751  3023 main.cpp:352] report is_sat: UNSAT time: 171.862 ms
;I0818 17:36:50.559782  3023 main.cpp:353] report count: 0 time: 0
;I0818 17:36:50.559789  3023 main.cpp:356] done.
