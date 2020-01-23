(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.at "\n" 2) ""))
(check-sat)

(get-info :reason-unknown)
;actual status: unsat
;I0818 17:36:19.901190  2700 main.cpp:352] report is_sat: UNSAT time: 1.00829 ms
;I0818 17:36:19.901211  2700 main.cpp:353] report count: 0 time: 0
;I0818 17:36:19.901218  2700 main.cpp:356] done.
