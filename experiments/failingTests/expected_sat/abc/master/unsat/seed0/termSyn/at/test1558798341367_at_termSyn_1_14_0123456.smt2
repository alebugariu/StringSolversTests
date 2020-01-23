(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at (str.at tmp_str0 tmp_int1) (str.to.int tmp_str0)) (str.substr tmp_str0 tmp_int1 tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: unsat
;I0818 17:37:25.850678  3326 main.cpp:204] Done solving
;I0818 17:37:25.856258  3326 main.cpp:352] report is_sat: UNSAT time: 93.2426 ms
;I0818 17:37:25.856317  3326 main.cpp:353] report count: 0 time: 0
;I0818 17:37:25.856328  3326 main.cpp:356] done.
