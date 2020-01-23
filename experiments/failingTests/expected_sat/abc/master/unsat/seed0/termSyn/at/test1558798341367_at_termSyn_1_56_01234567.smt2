(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at (str.replace tmp_str0 tmp_str0 tmp_str0) (str.to.int tmp_str0)) (str.replace tmp_str0 tmp_str0 tmp_str12)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str12 = 
;actual status: unsat
;I0818 17:37:24.285265  3312 main.cpp:352] report is_sat: UNSAT time: 72.3691 ms
;I0818 17:37:24.285318  3312 main.cpp:353] report count: 0 time: 0
;I0818 17:37:24.285333  3312 main.cpp:356] done.
