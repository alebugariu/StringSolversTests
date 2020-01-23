(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(declare-fun tmp_str1 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof tmp_str0 tmp_str1 tmp_int2) 0))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;tmp_str1 = 
;tmp_int2 = 0
;actual status: unsat
;I0818 17:35:52.996639  2228 main.cpp:204] Done solving
;I0818 17:35:52.996714  2228 main.cpp:352] report is_sat: UNSAT time: 100.906 ms
;I0818 17:35:52.996764  2228 main.cpp:353] report count: 0 time: 0
;I0818 17:35:52.996775  2228 main.cpp:356] done.
