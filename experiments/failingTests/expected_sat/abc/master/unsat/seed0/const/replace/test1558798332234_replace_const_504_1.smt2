(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "2" tmp_str1 "") ""))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = 2
;actual status: unsat
;I0818 17:36:06.565286  2469 main.cpp:352] report is_sat: UNSAT time: 1.51948 ms
;I0818 17:36:06.565340  2469 main.cpp:353] report count: 0 time: 0
;I0818 17:36:06.565348  2469 main.cpp:356] done.
