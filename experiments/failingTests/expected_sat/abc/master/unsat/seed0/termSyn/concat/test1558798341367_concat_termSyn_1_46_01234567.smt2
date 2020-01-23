(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int16 () Int)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (= (str.++ (str.replace tmp_str0 tmp_str0 tmp_str0) (str.at tmp_str0 tmp_int5)) (str.at tmp_str0 tmp_int16)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_int16 = 0
;actual status: unsat
;I0818 17:37:31.652087  3392 SymbolTable.cpp:304] tmp_int16,1
;I0818 17:37:31.765606  3392 main.cpp:204] Done solving
;I0818 17:37:31.765669  3392 main.cpp:352] report is_sat: UNSAT time: 126.61 ms
;I0818 17:37:31.765707  3392 main.cpp:353] report count: 0 time: 0
;I0818 17:37:31.765714  3392 main.cpp:356] done.
