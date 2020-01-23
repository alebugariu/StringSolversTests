(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "a" tmp_str1 "\"a\"") "a"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = "a"
;actual status: unsat
;I0818 17:35:53.913708  2243 main.cpp:352] report is_sat: UNSAT time: 2.10974 ms
;I0818 17:35:53.913765  2243 main.cpp:353] report count: 0 time: 0
;I0818 17:35:53.913777  2243 main.cpp:356] done.
