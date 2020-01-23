(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.replace "a" "a" "") ""))
(check-sat)

(get-info :reason-unknown)
;actual status: unsat
;I0818 17:36:06.181583  2461 main.cpp:352] report is_sat: UNSAT time: 1.76341 ms
;I0818 17:36:06.181612  2461 main.cpp:353] report count: 0 time: 0
;I0818 17:36:06.181620  2461 main.cpp:356] done.
