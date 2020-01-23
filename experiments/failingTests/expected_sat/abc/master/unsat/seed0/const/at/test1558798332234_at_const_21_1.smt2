(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.at "2" tmp_int1) ""))
(check-sat)

(get-info :reason-unknown)

;tmp_int1 = -1
;actual status: unsat
;I0818 17:36:17.279474  2652 main.cpp:204] Done solving
;I0818 17:36:17.283453  2652 main.cpp:352] report is_sat: UNSAT time: 12.6777 ms
;I0818 17:36:17.283490  2652 main.cpp:353] report count: 0 time: 0
;I0818 17:36:17.283499  2652 main.cpp:356] done.
