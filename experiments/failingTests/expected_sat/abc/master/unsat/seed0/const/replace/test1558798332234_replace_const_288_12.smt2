(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "\n" tmp_str1 tmp_str2) ""))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = \n
;tmp_str2 = 
;actual status: unsat
;I0818 17:36:15.780061  2619 main.cpp:352] report is_sat: UNSAT time: 2.57007 ms
;I0818 17:36:15.780086  2619 main.cpp:353] report count: 0 time: 0
;I0818 17:36:15.780092  2619 main.cpp:356] done.
