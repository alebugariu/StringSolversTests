(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 tmp_str1 "a") "2"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 2
;tmp_str1 = "a"
;actual status: unsat
;I0818 17:36:13.370287  2583 main.cpp:352] report is_sat: UNSAT time: 12.0025 ms
;I0818 17:36:13.370327  2583 main.cpp:353] report count: 0 time: 0
;I0818 17:36:13.370337  2583 main.cpp:356] done.
