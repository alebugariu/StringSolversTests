(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof tmp_str0 "a" 0) (- 1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;actual status: unsat
;I0818 17:35:49.249006  2185 main.cpp:352] report is_sat: UNSAT time: 49.7899 ms
;I0818 17:35:49.249052  2185 main.cpp:353] report count: 0 time: 0
;I0818 17:35:49.249063  2185 main.cpp:356] done.
