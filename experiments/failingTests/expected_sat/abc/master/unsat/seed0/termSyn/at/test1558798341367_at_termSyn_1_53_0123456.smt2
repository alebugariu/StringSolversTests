(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int14 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at (str.replace tmp_str0 tmp_str0 tmp_str0) (str.to.int tmp_str0)) (str.at tmp_str0 tmp_int14)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int14 = -1
;actual status: unsat
;I0818 17:37:20.018570  3271 main.cpp:204] Done solving
;I0818 17:37:20.018631  3271 main.cpp:352] report is_sat: UNSAT time: 96.6799 ms
;I0818 17:37:20.018676  3271 main.cpp:353] report count: 0 time: 0
;I0818 17:37:20.018684  3271 main.cpp:356] done.
