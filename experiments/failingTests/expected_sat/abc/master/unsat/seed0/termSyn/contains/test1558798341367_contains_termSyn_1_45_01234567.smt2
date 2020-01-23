(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (= (str.contains (str.replace tmp_str0 tmp_str0 tmp_str0) (str.at tmp_str0 tmp_int5)) (= tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;actual status: unsat
;I0818 17:37:02.505856  3119 main.cpp:204] Done solving
;I0818 17:37:02.505920  3119 main.cpp:352] report is_sat: UNSAT time: 31.9554 ms
;I0818 17:37:02.505960  3119 main.cpp:353] report count: 0 time: 0
;I0818 17:37:02.505969  3119 main.cpp:356] done.
