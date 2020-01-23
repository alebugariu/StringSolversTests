(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.substr "\"a\"" 2 0) ""))
(check-sat)

(get-info :reason-unknown)
;actual status: unsat
;I0818 17:35:45.507704  2149 main.cpp:352] report is_sat: UNSAT time: 0.605245 ms
;I0818 17:35:45.507752  2149 main.cpp:353] report count: 0 time: 0
;I0818 17:35:45.507764  2149 main.cpp:356] done.
