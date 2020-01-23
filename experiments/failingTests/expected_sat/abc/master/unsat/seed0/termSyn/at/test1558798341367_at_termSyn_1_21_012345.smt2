(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at (str.++ tmp_str0 tmp_str0) (str.len tmp_str0)) (str.++ tmp_str0 tmp_str12)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str12 = 
;actual status: unsat
;I0818 17:37:22.684628  3296 main.cpp:352] report is_sat: UNSAT time: 74.4755 ms
;I0818 17:37:22.684675  3296 main.cpp:353] report count: 0 time: 0
;I0818 17:37:22.684684  3296 main.cpp:356] done.
