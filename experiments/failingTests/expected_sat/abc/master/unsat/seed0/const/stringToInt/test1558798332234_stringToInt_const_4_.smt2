(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.to.int "\n") (- 1)))
(check-sat)

(get-info :reason-unknown)
;actual status: unsat
;I0818 17:35:53.870208  2239 main.cpp:352] report is_sat: UNSAT time: 0.492423 ms
;I0818 17:35:53.870244  2239 main.cpp:353] report count: 0 time: 0
;I0818 17:35:53.870254  2239 main.cpp:356] done.
