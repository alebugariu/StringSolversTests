(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int3 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof tmp_str0 "" 0) tmp_int3))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;tmp_int3 = 0
;actual status: unsat
;I0818 17:35:52.837406  2226 main.cpp:352] report is_sat: UNSAT time: 70.8261 ms
;I0818 17:35:52.837455  2226 main.cpp:353] report count: 0 time: 0
;I0818 17:35:52.837466  2226 main.cpp:356] done.
