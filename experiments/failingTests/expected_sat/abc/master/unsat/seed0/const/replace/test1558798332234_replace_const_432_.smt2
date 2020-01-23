(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.replace "0" "0" "") ""))
(check-sat)

(get-info :reason-unknown)
;actual status: unsat
;I0818 17:36:10.444152  2537 main.cpp:352] report is_sat: UNSAT time: 1.23503 ms
;I0818 17:36:10.444200  2537 main.cpp:353] report count: 0 time: 0
;I0818 17:36:10.444209  2537 main.cpp:356] done.
