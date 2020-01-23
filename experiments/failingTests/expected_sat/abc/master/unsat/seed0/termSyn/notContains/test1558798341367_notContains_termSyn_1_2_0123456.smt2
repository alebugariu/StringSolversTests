(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str14 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.contains (str.at tmp_str0 tmp_int1) (str.++ tmp_str0 tmp_str0)) (str.contains tmp_str14 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str14 = 
;actual status: unsat
;I0818 17:37:17.571609  3254 SymbolTable.cpp:304] tmp_int1,1
;I0818 17:37:17.652281  3254 main.cpp:204] Done solving
;I0818 17:37:17.652340  3254 main.cpp:352] report is_sat: UNSAT time: 294.67 ms
;I0818 17:37:17.652406  3254 main.cpp:353] report count: 0 time: 0
;I0818 17:37:17.652416  3254 main.cpp:356] done.
