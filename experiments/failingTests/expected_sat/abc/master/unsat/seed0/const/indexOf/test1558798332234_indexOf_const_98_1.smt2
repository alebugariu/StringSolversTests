(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.indexof "\n" tmp_str1 2) (- 1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = 
;actual status: unsat
;I0818 17:35:51.310109  2205 main.cpp:352] report is_sat: UNSAT time: 59.6003 ms
;I0818 17:35:51.310156  2205 main.cpp:353] report count: 0 time: 0
;I0818 17:35:51.310168  2205 main.cpp:356] done.
