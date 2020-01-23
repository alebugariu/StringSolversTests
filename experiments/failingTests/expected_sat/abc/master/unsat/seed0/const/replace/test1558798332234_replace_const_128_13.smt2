(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "a" tmp_str1 "") tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = 
;tmp_str3 = a
;actual status: unsat
;I0818 17:36:16.675321  2635 main.cpp:352] report is_sat: UNSAT time: 2.08485 ms
;I0818 17:36:16.675345  2635 main.cpp:353] report count: 0 time: 0
;I0818 17:36:16.675354  2635 main.cpp:356] done.
