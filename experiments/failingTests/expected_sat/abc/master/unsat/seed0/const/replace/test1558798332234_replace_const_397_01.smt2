(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 tmp_str1 "-1") "0"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 0
;tmp_str1 = "a"
;actual status: unsat
;I0818 17:36:07.086331  2482 main.cpp:352] report is_sat: UNSAT time: 8.83796 ms
;I0818 17:36:07.086359  2482 main.cpp:353] report count: 0 time: 0
;I0818 17:36:07.086367  2482 main.cpp:356] done.
