(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.indexof "" tmp_str1 0) (- 1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = "a"
;actual status: unsat
;I0818 17:35:49.471779  2187 main.cpp:352] report is_sat: UNSAT time: 68.3246 ms
;I0818 17:35:49.471829  2187 main.cpp:353] report count: 0 time: 0
;I0818 17:35:49.471841  2187 main.cpp:356] done.
