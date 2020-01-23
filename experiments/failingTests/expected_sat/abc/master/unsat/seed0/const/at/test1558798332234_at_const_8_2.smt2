(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.at "a" 2) tmp_str2))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;actual status: unsat
;I0818 17:36:19.127156  2686 main.cpp:352] report is_sat: UNSAT time: 1.84147 ms
;I0818 17:36:19.127179  2686 main.cpp:353] report count: 0 time: 0
;I0818 17:36:19.127187  2686 main.cpp:356] done.
