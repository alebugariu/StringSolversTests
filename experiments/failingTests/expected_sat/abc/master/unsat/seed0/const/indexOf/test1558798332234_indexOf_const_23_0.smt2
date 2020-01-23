(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof tmp_str0 "2" 2) (- 1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;actual status: unsat
;I0818 17:35:50.937937  2201 main.cpp:352] report is_sat: UNSAT time: 86.938 ms
;I0818 17:35:50.937996  2201 main.cpp:353] report count: 0 time: 0
;I0818 17:35:50.938009  2201 main.cpp:356] done.
