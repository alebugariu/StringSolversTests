(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.at (str.substr tmp_str0 tmp_int1 tmp_int1) (str.len tmp_str0)) (str.replace tmp_str0 tmp_str0 tmp_str12)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str12 = 
;actual status: unsat
;I0818 17:37:20.644836  3277 main.cpp:204] Done solving
;I0818 17:37:20.644963  3277 main.cpp:352] report is_sat: UNSAT time: 87.3345 ms
;I0818 17:37:20.645005  3277 main.cpp:353] report count: 0 time: 0
;I0818 17:37:20.645015  3277 main.cpp:356] done.
