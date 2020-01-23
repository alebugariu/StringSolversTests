(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int6 () Int)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.len (str.at tmp_str0 tmp_int1)) (str.indexof tmp_str0 tmp_str0 tmp_int6)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_int6 = 0
;actual status: unsat
;I0818 17:36:39.931007  2935 SymbolTable.cpp:304] tmp_int6,1
;I0818 17:36:40.036265  2935 main.cpp:204] Done solving
;I0818 17:36:40.039099  2935 main.cpp:352] report is_sat: UNSAT time: 169.37 ms
;I0818 17:36:40.039142  2935 main.cpp:353] report count: 0 time: 0
;I0818 17:36:40.039150  2935 main.cpp:356] done.
