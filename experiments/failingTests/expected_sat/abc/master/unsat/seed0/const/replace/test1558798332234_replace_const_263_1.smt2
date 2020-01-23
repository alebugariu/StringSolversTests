(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "\n" tmp_str1 "2") "2\n"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = 
;actual status: unsat
;I0818 17:35:58.107820  2323 main.cpp:352] report is_sat: UNSAT time: 1.97814 ms
;I0818 17:35:58.107849  2323 main.cpp:353] report count: 0 time: 0
;I0818 17:35:58.107857  2323 main.cpp:356] done.
