(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.at (str.substr tmp_str0 tmp_int1 tmp_int1) (str.to.int tmp_str0)) (str.replace tmp_str0 tmp_str0 tmp_str12)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str12 = 
;actual status: unsat
;I0818 17:37:21.044936  3281 main.cpp:204] Done solving
;I0818 17:37:21.051766  3281 main.cpp:352] report is_sat: UNSAT time: 92.5658 ms
;I0818 17:37:21.051821  3281 main.cpp:353] report count: 0 time: 0
;I0818 17:37:21.051831  3281 main.cpp:356] done.
