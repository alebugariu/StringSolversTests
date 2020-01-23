(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.at (str.substr tmp_str0 tmp_int1 tmp_int1) (str.indexof tmp_str0 tmp_str0 tmp_int1)) (str.replace tmp_str0 tmp_str0 tmp_str16)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str16 = 
;actual status: unsat
;I0818 17:37:25.462178  3322 main.cpp:204] Done solving
;I0818 17:37:25.462277  3322 main.cpp:352] report is_sat: UNSAT time: 118.197 ms
;I0818 17:37:25.462316  3322 main.cpp:353] report count: 0 time: 0
;I0818 17:37:25.462323  3322 main.cpp:356] done.
