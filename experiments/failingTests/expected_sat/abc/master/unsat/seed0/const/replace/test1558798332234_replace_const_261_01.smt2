(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 tmp_str1 "-1") "-1\n"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = \n
;tmp_str1 = 
;actual status: unsat
;I0818 17:36:08.215133  2504 main.cpp:352] report is_sat: UNSAT time: 5.87698 ms
;I0818 17:36:08.215163  2504 main.cpp:353] report count: 0 time: 0
;I0818 17:36:08.215173  2504 main.cpp:356] done.
