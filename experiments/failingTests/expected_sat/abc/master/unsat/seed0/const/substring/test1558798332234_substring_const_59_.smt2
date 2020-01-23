(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.substr "0" 0 2) "0"))
(check-sat)

(get-info :reason-unknown)
;actual status: unsat
;I0818 17:35:46.267321  2154 main.cpp:352] report is_sat: UNSAT time: 0.686835 ms
;I0818 17:35:46.267387  2154 main.cpp:353] report count: 0 time: 0
;I0818 17:35:46.267400  2154 main.cpp:356] done.
