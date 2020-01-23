(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "-1" tmp_str1 "a") "a-1"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = 
;actual status: unsat
;I0818 17:35:58.318354  2327 main.cpp:352] report is_sat: UNSAT time: 3.48546 ms
;I0818 17:35:58.318383  2327 main.cpp:353] report count: 0 time: 0
;I0818 17:35:58.318392  2327 main.cpp:356] done.
