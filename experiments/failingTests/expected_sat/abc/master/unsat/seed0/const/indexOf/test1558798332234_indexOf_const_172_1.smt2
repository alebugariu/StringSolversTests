(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.indexof "2" tmp_str1 0) (- 1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = "a"
;actual status: unsat
;I0818 17:35:51.798687  2211 main.cpp:352] report is_sat: UNSAT time: 28.1856 ms
;I0818 17:35:51.798734  2211 main.cpp:353] report count: 0 time: 0
;I0818 17:35:51.798746  2211 main.cpp:356] done.
