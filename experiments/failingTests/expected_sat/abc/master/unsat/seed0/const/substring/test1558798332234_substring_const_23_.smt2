(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.substr "a" 0 2) "a"))
(check-sat)

(get-info :reason-unknown)
;actual status: unsat
;I0818 17:35:46.704567  2160 main.cpp:352] report is_sat: UNSAT time: 0.59901 ms
;I0818 17:35:46.704602  2160 main.cpp:353] report count: 0 time: 0
;I0818 17:35:46.704612  2160 main.cpp:356] done.
