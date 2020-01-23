(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(assert
 (= (str.replace "2" "2" "") tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str3 = 
;actual status: unsat
;I0818 17:36:01.588794  2378 main.cpp:352] report is_sat: UNSAT time: 2.10017 ms
;I0818 17:36:01.588822  2378 main.cpp:353] report count: 0 time: 0
;I0818 17:36:01.588830  2378 main.cpp:356] done.
