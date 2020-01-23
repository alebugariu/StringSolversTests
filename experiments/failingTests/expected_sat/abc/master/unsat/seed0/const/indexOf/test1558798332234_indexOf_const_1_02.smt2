(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof tmp_str0 "" tmp_int2) 0))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;tmp_int2 = 0
;actual status: unsat
;I0818 17:35:52.585407  2222 main.cpp:204] Done solving
;I0818 17:35:52.585484  2222 main.cpp:352] report is_sat: UNSAT time: 57.5642 ms
;I0818 17:35:52.585541  2222 main.cpp:353] report count: 0 time: 0
;I0818 17:35:52.585551  2222 main.cpp:356] done.
