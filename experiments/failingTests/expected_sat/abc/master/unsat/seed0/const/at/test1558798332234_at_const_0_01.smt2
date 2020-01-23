(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at tmp_str0 tmp_int1) ""))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;tmp_int1 = -1
;actual status: unsat
;I0818 17:36:17.248791  2650 main.cpp:204] Done solving
;I0818 17:36:17.248847  2650 main.cpp:352] report is_sat: UNSAT time: 17.1966 ms
;I0818 17:36:17.248881  2650 main.cpp:353] report count: 0 time: 0
;I0818 17:36:17.248890  2650 main.cpp:356] done.
