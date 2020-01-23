(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at tmp_str0 (- 1)) ""))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;actual status: unsat
;I0818 17:36:18.191608  2667 main.cpp:352] report is_sat: UNSAT time: 1.35161 ms
;I0818 17:36:18.191632  2667 main.cpp:353] report count: 0 time: 0
;I0818 17:36:18.191638  2667 main.cpp:356] done.
