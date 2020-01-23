(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof tmp_str0 "\n" 0) (- 1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;actual status: unsat
;I0818 17:35:49.545542  2188 main.cpp:352] report is_sat: UNSAT time: 60.869 ms
;I0818 17:35:49.545599  2188 main.cpp:353] report count: 0 time: 0
;I0818 17:35:49.545611  2188 main.cpp:356] done.
