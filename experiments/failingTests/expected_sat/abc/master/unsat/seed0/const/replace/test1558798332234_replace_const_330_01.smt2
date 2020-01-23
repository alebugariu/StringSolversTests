(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 tmp_str1 "a") "-1"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = -1
;tmp_str1 = "a"
;actual status: unsat
;I0818 17:36:05.643509  2445 main.cpp:352] report is_sat: UNSAT time: 1.74513 ms
;I0818 17:36:05.643533  2445 main.cpp:353] report count: 0 time: 0
;I0818 17:36:05.643543  2445 main.cpp:356] done.
