(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "2" tmp_str1 "0") "02"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = 
;actual status: unsat
;I0818 17:36:10.434978  2536 main.cpp:352] report is_sat: UNSAT time: 1.52156 ms
;I0818 17:36:10.435623  2536 main.cpp:353] report count: 0 time: 0
;I0818 17:36:10.435642  2536 main.cpp:356] done.
