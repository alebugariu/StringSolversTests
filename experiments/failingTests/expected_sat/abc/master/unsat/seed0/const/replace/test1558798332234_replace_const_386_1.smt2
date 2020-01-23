(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "0" tmp_str1 "a") "a0"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = 
;actual status: unsat
;I0818 17:36:04.168185  2415 main.cpp:352] report is_sat: UNSAT time: 1.99123 ms
;I0818 17:36:04.168212  2415 main.cpp:353] report count: 0 time: 0
;I0818 17:36:04.168220  2415 main.cpp:356] done.
