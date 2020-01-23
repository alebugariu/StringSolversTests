(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at (str.substr tmp_str0 tmp_int1 tmp_int1) (str.indexof tmp_str0 tmp_str0 tmp_int1)) (str.++ tmp_str16 tmp_str16)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str16 = 
;actual status: unsat
;I0818 17:37:18.400708  3257 main.cpp:204] Done solving
;I0818 17:37:18.400786  3257 main.cpp:352] report is_sat: UNSAT time: 125.219 ms
;I0818 17:37:18.400831  3257 main.cpp:353] report count: 0 time: 0
;I0818 17:37:18.400842  3257 main.cpp:356] done.
