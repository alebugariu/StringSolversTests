(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "0" tmp_str1 "\n") "0"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = "a"
;actual status: unsat
;I0818 17:36:13.919380  2591 main.cpp:352] report is_sat: UNSAT time: 1.80568 ms
;I0818 17:36:13.919404  2591 main.cpp:353] report count: 0 time: 0
;I0818 17:36:13.919411  2591 main.cpp:356] done.
