(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "\n" tmp_str1 "0") "0\n"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = 
;actual status: unsat
;I0818 17:35:56.313905  2295 main.cpp:352] report is_sat: UNSAT time: 22.091 ms
;I0818 17:35:56.313946  2295 main.cpp:353] report count: 0 time: 0
;I0818 17:35:56.313957  2295 main.cpp:356] done.
