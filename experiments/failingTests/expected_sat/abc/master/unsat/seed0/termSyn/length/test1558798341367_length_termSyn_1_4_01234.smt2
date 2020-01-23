(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int4 () Int)
(declare-fun tmp_str5 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.len (int.to.str tmp_int0)) (str.indexof tmp_str5 tmp_str5 tmp_int4)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str5 = a
;tmp_int4 = 0
;actual status: unsat
;I0818 17:36:39.793494  2934 UnaryAutomaton.cpp:325] 1
;I0818 17:36:39.793511  2934 UnaryAutomaton.cpp:326] 1
;I0818 17:36:39.793519  2934 UnaryAutomaton.cpp:327] 1
;I0818 17:36:39.800962  2934 SymbolTable.cpp:304] tmp_int4,1
;I0818 17:36:39.863615  2934 main.cpp:204] Done solving
;I0818 17:36:39.863664  2934 main.cpp:352] report is_sat: UNSAT time: 72.4453 ms
;I0818 17:36:39.863688  2934 main.cpp:353] report count: 0 time: 0
;I0818 17:36:39.863698  2934 main.cpp:356] done.
