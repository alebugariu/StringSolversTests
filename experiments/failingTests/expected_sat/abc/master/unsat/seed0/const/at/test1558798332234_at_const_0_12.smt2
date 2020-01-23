(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.at "" tmp_int1) tmp_str2))
(check-sat)

(get-info :reason-unknown)

;tmp_int1 = -1
;tmp_str2 = 
;actual status: unsat
;I0818 17:36:17.191013  2647 main.cpp:204] Done solving
;I0818 17:36:17.191133  2647 main.cpp:352] report is_sat: UNSAT time: 19.2873 ms
;I0818 17:36:17.191171  2647 main.cpp:353] report count: 0 time: 0
;I0818 17:36:17.191179  2647 main.cpp:356] done.
