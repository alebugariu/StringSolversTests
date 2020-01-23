(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "-1" tmp_str1 "\n") "-1"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = "a"
;actual status: unsat
;I0818 17:36:07.487579  2488 main.cpp:352] report is_sat: UNSAT time: 19.3393 ms
;I0818 17:36:07.487612  2488 main.cpp:353] report count: 0 time: 0
;I0818 17:36:07.487620  2488 main.cpp:356] done.
