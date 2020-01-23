(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof tmp_str0 "-1" 2) (- 1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;actual status: unsat
;I0818 17:35:51.245193  2204 main.cpp:352] report is_sat: UNSAT time: 58.766 ms
;I0818 17:35:51.245249  2204 main.cpp:353] report count: 0 time: 0
;I0818 17:35:51.245260  2204 main.cpp:356] done.
