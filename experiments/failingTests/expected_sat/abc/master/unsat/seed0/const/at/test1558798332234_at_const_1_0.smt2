(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at tmp_str0 0) ""))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;actual status: unsat
;I0818 17:36:17.154127  2645 main.cpp:352] report is_sat: UNSAT time: 1.39723 ms
;I0818 17:36:17.154161  2645 main.cpp:353] report count: 0 time: 0
;I0818 17:36:17.154170  2645 main.cpp:356] done.
