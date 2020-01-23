(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (= (str.to.int tmp_str0) (- 1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;actual status: unsat
;I0818 17:35:53.442898  2234 main.cpp:352] report is_sat: UNSAT time: 2.35305 ms
;I0818 17:35:53.442940  2234 main.cpp:353] report count: 0 time: 0
;I0818 17:35:53.442951  2234 main.cpp:356] done.
