(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int6 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.to.int (str.++ tmp_str0 tmp_str0)) (str.indexof tmp_str0 tmp_str0 tmp_int6)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int6 = -1
;actual status: unsat
;I0818 17:36:56.651599  3074 UnaryAutomaton.cpp:326] 1
;I0818 17:36:56.651703  3074 UnaryAutomaton.cpp:327] 1
;I0818 17:36:56.690246  3074 SymbolTable.cpp:304] tmp_int6,1
;I0818 17:36:56.760816  3074 main.cpp:204] Done solving
;I0818 17:36:56.767660  3074 main.cpp:352] report is_sat: UNSAT time: 133.68 ms
;I0818 17:36:56.767702  3074 main.cpp:353] report count: 0 time: 0
;I0818 17:36:56.767711  3074 main.cpp:356] done.
