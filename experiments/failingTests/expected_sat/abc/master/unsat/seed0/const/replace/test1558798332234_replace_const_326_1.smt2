(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "-1" tmp_str1 "0") "0-1"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = 
;actual status: unsat
;I0818 17:36:05.631426  2444 main.cpp:352] report is_sat: UNSAT time: 33.9651 ms
;I0818 17:36:05.631460  2444 main.cpp:353] report count: 0 time: 0
;I0818 17:36:05.631469  2444 main.cpp:356] done.
