(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "a" tmp_str1 "-1") "-1a"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = 
;actual status: unsat
;I0818 17:35:54.801359  2268 main.cpp:352] report is_sat: UNSAT time: 1.63304 ms
;I0818 17:35:54.801393  2268 main.cpp:353] report count: 0 time: 0
;I0818 17:35:54.801404  2268 main.cpp:356] done.
