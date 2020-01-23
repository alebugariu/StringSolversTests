(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (= (str.indexof (int.to.str tmp_int0) (str.++ tmp_str2 tmp_str2) (str.indexof tmp_str2 tmp_str2 tmp_int0)) (str.indexof tmp_str2 tmp_str2 tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: unsat
;I0818 17:36:50.624264  3025 UnaryAutomaton.cpp:325] 1
;I0818 17:36:50.624281  3025 UnaryAutomaton.cpp:326] 1
;I0818 17:36:50.624289  3025 UnaryAutomaton.cpp:327] 1
;I0818 17:36:50.749876  3025 main.cpp:204] Done solving
;I0818 17:36:50.749927  3025 main.cpp:352] report is_sat: UNSAT time: 128.048 ms
;I0818 17:36:50.749958  3025 main.cpp:353] report count: 0 time: 0
;I0818 17:36:50.749964  3025 main.cpp:356] done.
