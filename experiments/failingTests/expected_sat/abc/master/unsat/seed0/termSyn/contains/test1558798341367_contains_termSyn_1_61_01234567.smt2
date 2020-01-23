(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.contains (str.substr tmp_str0 tmp_int1 tmp_int1) (str.at tmp_str0 tmp_int1)) (= tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: unsat
;I0818 17:37:02.293920  3116 main.cpp:204] Done solving
;I0818 17:37:02.293980  3116 main.cpp:352] report is_sat: UNSAT time: 39.9856 ms
;I0818 17:37:02.294014  3116 main.cpp:353] report count: 0 time: 0
;I0818 17:37:02.294023  3116 main.cpp:356] done.
