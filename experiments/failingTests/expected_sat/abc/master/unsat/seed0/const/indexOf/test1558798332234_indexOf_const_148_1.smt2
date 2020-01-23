(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.indexof "0" tmp_str1 0) (- 1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = "a"
;actual status: unsat
;I0818 17:35:52.397594  2220 main.cpp:352] report is_sat: UNSAT time: 41.1798 ms
;I0818 17:35:52.397647  2220 main.cpp:353] report count: 0 time: 0
;I0818 17:35:52.397658  2220 main.cpp:356] done.
