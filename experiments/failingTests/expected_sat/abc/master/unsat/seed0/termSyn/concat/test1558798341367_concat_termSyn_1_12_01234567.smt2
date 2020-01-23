(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int16 () Int)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.++ (str.at tmp_str0 tmp_int1) (str.replace tmp_str0 tmp_str0 tmp_str0)) (str.at tmp_str0 tmp_int16)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_int16 = 0
;actual status: unsat
;I0818 17:37:28.578272  3352 SymbolTable.cpp:304] tmp_int16,1
;I0818 17:37:28.638336  3352 main.cpp:204] Done solving
;I0818 17:37:28.638398  3352 main.cpp:352] report is_sat: UNSAT time: 82.8557 ms
;I0818 17:37:28.638434  3352 main.cpp:353] report count: 0 time: 0
;I0818 17:37:28.638443  3352 main.cpp:356] done.
