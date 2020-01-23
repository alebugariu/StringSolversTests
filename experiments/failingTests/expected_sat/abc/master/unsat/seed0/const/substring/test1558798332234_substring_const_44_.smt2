(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.substr "\n" 2 2) ""))
(check-sat)

(get-info :reason-unknown)
;actual status: unsat
;I0818 17:35:46.699807  2159 main.cpp:352] report is_sat: UNSAT time: 0.734174 ms
;I0818 17:35:46.699898  2159 main.cpp:353] report count: 0 time: 0
;I0818 17:35:46.699936  2159 main.cpp:356] done.
