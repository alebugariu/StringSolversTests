(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "-1" tmp_str1 "") tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = 
;tmp_str3 = -1
;actual status: unsat
;I0818 17:36:05.968472  2455 main.cpp:352] report is_sat: UNSAT time: 1.76876 ms
;I0818 17:36:05.968502  2455 main.cpp:353] report count: 0 time: 0
;I0818 17:36:05.968513  2455 main.cpp:356] done.
