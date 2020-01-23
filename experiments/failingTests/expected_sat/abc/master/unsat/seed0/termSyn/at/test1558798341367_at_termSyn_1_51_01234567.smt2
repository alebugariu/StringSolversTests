(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at (str.replace tmp_str0 tmp_str0 tmp_str0) (str.len tmp_str0)) (str.replace tmp_str0 tmp_str0 tmp_str12)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str12 = 
;actual status: unsat
;I0818 17:37:19.901803  3270 main.cpp:352] report is_sat: UNSAT time: 62.6041 ms
;I0818 17:37:19.901844  3270 main.cpp:353] report count: 0 time: 0
;I0818 17:37:19.901855  3270 main.cpp:356] done.
