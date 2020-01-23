(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof tmp_str0 "2" 0) (- 1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;actual status: unsat
;I0818 17:35:50.632411  2198 main.cpp:352] report is_sat: UNSAT time: 110.904 ms
;I0818 17:35:50.632493  2198 main.cpp:353] report count: 0 time: 0
;I0818 17:35:50.632504  2198 main.cpp:356] done.
