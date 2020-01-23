(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "0" tmp_str1 "\"a\"") "0"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = "a"
;actual status: unsat
;I0818 17:35:57.434129  2314 main.cpp:352] report is_sat: UNSAT time: 4.94858 ms
;I0818 17:35:57.434180  2314 main.cpp:353] report count: 0 time: 0
;I0818 17:35:57.434190  2314 main.cpp:356] done.
