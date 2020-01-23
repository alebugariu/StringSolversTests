(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int8 () Int)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.len (str.substr tmp_str0 tmp_int1 tmp_int1)) (str.indexof tmp_str0 tmp_str0 tmp_int8)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_int8 = 0
;actual status: unsat
;I0818 17:36:39.697024  2933 SymbolTable.cpp:304] tmp_int8,1
;I0818 17:36:39.787266  2933 main.cpp:204] Done solving
;I0818 17:36:39.787326  2933 main.cpp:352] report is_sat: UNSAT time: 111.371 ms
;I0818 17:36:39.787362  2933 main.cpp:353] report count: 0 time: 0
;I0818 17:36:39.787370  2933 main.cpp:356] done.
