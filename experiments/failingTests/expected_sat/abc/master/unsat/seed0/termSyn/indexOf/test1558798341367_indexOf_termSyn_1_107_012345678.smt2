(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof (str.replace tmp_str0 tmp_str0 tmp_str0) (str.replace tmp_str0 tmp_str0 tmp_str0) (str.to.int tmp_str0)) (str.to.int tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;actual status: unsat
;I0818 17:36:50.323433  3021 main.cpp:352] report is_sat: UNSAT time: 46.5492 ms
;I0818 17:36:50.323468  3021 main.cpp:353] report count: 0 time: 0
;I0818 17:36:50.323477  3021 main.cpp:356] done.
