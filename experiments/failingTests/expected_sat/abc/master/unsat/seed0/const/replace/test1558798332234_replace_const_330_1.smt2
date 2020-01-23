(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "-1" tmp_str1 "a") "-1"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = "a"
;actual status: unsat
;I0818 17:36:14.894871  2607 main.cpp:352] report is_sat: UNSAT time: 1.87986 ms
;I0818 17:36:14.894899  2607 main.cpp:353] report count: 0 time: 0
;I0818 17:36:14.894908  2607 main.cpp:356] done.
