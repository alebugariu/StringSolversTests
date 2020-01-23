(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int5 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at (str.++ tmp_str0 tmp_str0) (str.indexof tmp_str0 tmp_str0 tmp_int5)) (str.substr tmp_str0 tmp_int5 tmp_int5)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;actual status: unsat
;I0818 17:37:22.599364  3295 main.cpp:204] Done solving
;I0818 17:37:22.599431  3295 main.cpp:352] report is_sat: UNSAT time: 122.241 ms
;I0818 17:37:22.599470  3295 main.cpp:353] report count: 0 time: 0
;I0818 17:37:22.599480  3295 main.cpp:356] done.
