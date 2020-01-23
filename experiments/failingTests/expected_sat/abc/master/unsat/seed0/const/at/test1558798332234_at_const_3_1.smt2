(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.at "\"a\"" tmp_int1) ""))
(check-sat)

(get-info :reason-unknown)

;tmp_int1 = -1
;actual status: unsat
;I0818 17:36:18.780067  2679 main.cpp:204] Done solving
;I0818 17:36:18.780097  2679 main.cpp:352] report is_sat: UNSAT time: 7.33719 ms
;I0818 17:36:18.780124  2679 main.cpp:353] report count: 0 time: 0
;I0818 17:36:18.780133  2679 main.cpp:356] done.
