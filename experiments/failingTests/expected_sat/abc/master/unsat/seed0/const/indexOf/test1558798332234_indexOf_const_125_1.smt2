(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.indexof "-1" tmp_str1 2) (- 1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = "a"
;actual status: unsat
;I0818 17:35:49.930927  2192 main.cpp:352] report is_sat: UNSAT time: 53.4969 ms
;I0818 17:35:49.930980  2192 main.cpp:353] report count: 0 time: 0
;I0818 17:35:49.930992  2192 main.cpp:356] done.
