(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (= (str.++ (str.replace tmp_str0 tmp_str0 tmp_str0) (str.at tmp_str0 tmp_int5)) (str.replace tmp_str0 tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;actual status: unsat
;I0818 17:37:30.256186  3373 main.cpp:204] Done solving
;I0818 17:37:30.256218  3373 main.cpp:352] report is_sat: UNSAT time: 8.37404 ms
;I0818 17:37:30.256247  3373 main.cpp:353] report count: 0 time: 0
;I0818 17:37:30.256254  3373 main.cpp:356] done.
