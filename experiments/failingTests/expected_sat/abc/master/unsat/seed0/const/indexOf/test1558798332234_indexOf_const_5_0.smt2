(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof tmp_str0 "\"a\"" 2) (- 1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;actual status: unsat
;I0818 17:35:51.507776  2207 main.cpp:352] report is_sat: UNSAT time: 68.479 ms
;I0818 17:35:51.507833  2207 main.cpp:353] report count: 0 time: 0
;I0818 17:35:51.507844  2207 main.cpp:356] done.
