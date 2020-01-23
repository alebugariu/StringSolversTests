(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof tmp_str0 "\"a\"" 0) (- 1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;actual status: unsat
;I0818 17:35:52.701326  2224 main.cpp:352] report is_sat: UNSAT time: 59.2547 ms
;I0818 17:35:52.701370  2224 main.cpp:353] report count: 0 time: 0
;I0818 17:35:52.701380  2224 main.cpp:356] done.
