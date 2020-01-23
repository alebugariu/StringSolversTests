(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "\"a\"" tmp_str1 "-1") "\"-1\""))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = a
;actual status: unsat
;I0818 17:36:06.570960  2470 main.cpp:352] report is_sat: UNSAT time: 2.17431 ms
;I0818 17:36:06.570986  2470 main.cpp:353] report count: 0 time: 0
;I0818 17:36:06.570993  2470 main.cpp:356] done.
