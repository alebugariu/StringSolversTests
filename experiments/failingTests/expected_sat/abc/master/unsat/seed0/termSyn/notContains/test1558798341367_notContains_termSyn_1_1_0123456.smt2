(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str14 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.contains (str.at tmp_str0 tmp_int1) (str.++ tmp_str0 tmp_str0)) (= tmp_str0 tmp_str14)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str14 = 
;actual status: unsat
;I0818 17:37:18.191697  3256 SymbolTable.cpp:304] tmp_int1,1
;I0818 17:37:18.268510  3256 main.cpp:204] Done solving
;I0818 17:37:18.268576  3256 main.cpp:352] report is_sat: UNSAT time: 283.64 ms
;I0818 17:37:18.268652  3256 main.cpp:353] report count: 0 time: 0
;I0818 17:37:18.268661  3256 main.cpp:356] done.
