(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "\n" tmp_str1 "") tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = 
;tmp_str3 = \n
;actual status: unsat
;I0818 17:36:01.183432  2372 main.cpp:352] report is_sat: UNSAT time: 5.8313 ms
;I0818 17:36:01.183460  2372 main.cpp:353] report count: 0 time: 0
;I0818 17:36:01.183470  2372 main.cpp:356] done.
