(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 tmp_str1 "2") "20"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 0
;tmp_str1 = 
;actual status: unsat
;I0818 17:35:54.551196  2261 main.cpp:352] report is_sat: UNSAT time: 1.76067 ms
;I0818 17:35:54.551234  2261 main.cpp:353] report count: 0 time: 0
;I0818 17:35:54.551244  2261 main.cpp:356] done.
