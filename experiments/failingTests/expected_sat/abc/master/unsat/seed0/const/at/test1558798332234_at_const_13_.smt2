(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.at "\n" 0) "\n"))
(check-sat)

(get-info :reason-unknown)
;actual status: unsat
;I0818 17:36:19.130442  2687 main.cpp:352] report is_sat: UNSAT time: 0.46586 ms
;I0818 17:36:19.130473  2687 main.cpp:353] report count: 0 time: 0
;I0818 17:36:19.130482  2687 main.cpp:356] done.
