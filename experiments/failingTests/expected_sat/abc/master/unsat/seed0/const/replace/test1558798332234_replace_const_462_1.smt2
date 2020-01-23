(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "2" tmp_str1 "0") "2"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = "a"
;actual status: unsat
;I0818 17:35:58.337364  2329 main.cpp:352] report is_sat: UNSAT time: 1.88422 ms
;I0818 17:35:58.337388  2329 main.cpp:353] report count: 0 time: 0
;I0818 17:35:58.337395  2329 main.cpp:356] done.
