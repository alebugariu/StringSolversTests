(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "2" tmp_str1 tmp_str2) ""))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = 2
;tmp_str2 = 
;actual status: unsat
;I0818 17:36:03.611696  2407 main.cpp:352] report is_sat: UNSAT time: 2.47995 ms
;I0818 17:36:03.611721  2407 main.cpp:353] report count: 0 time: 0
;I0818 17:36:03.611729  2407 main.cpp:356] done.
