(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.replace "-1" "-1" "") ""))
(check-sat)

(get-info :reason-unknown)
;actual status: unsat
;I0818 17:36:07.748792  2491 main.cpp:352] report is_sat: UNSAT time: 10.0899 ms
;I0818 17:36:07.749284  2491 main.cpp:353] report count: 0 time: 0
;I0818 17:36:07.749302  2491 main.cpp:356] done.
