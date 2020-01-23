(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.replace "\"a\"" "\"a\"" "") ""))
(check-sat)

(get-info :reason-unknown)
;actual status: unsat
;I0818 17:36:09.725131  2525 main.cpp:352] report is_sat: UNSAT time: 1.61295 ms
;I0818 17:36:09.725173  2525 main.cpp:353] report count: 0 time: 0
;I0818 17:36:09.725183  2525 main.cpp:356] done.
