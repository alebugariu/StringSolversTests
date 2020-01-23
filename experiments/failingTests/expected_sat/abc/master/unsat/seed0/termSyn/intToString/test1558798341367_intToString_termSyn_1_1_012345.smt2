(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str8 () String)
(declare-fun tmp_int2 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (int.to.str (str.indexof tmp_str0 tmp_str0 tmp_int2)) (str.++ tmp_str8 tmp_str8)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int2 = -1
;tmp_str8 = 
;actual status: unsat
;I0818 17:36:36.083874  2892 UnaryAutomaton.cpp:325] 1
;I0818 17:36:36.093950  2892 UnaryAutomaton.cpp:326] 1
;I0818 17:36:36.093983  2892 UnaryAutomaton.cpp:327] 1
;I0818 17:36:36.171090  2892 main.cpp:204] Done solving
;I0818 17:36:36.171150  2892 main.cpp:352] report is_sat: UNSAT time: 183.056 ms
;I0818 17:36:36.171176  2892 main.cpp:353] report count: 0 time: 0
;I0818 17:36:36.171185  2892 main.cpp:356] done.
