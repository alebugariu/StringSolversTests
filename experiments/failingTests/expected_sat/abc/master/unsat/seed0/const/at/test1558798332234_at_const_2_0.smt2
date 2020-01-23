(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at tmp_str0 2) ""))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;actual status: unsat
;I0818 17:36:18.950496  2682 main.cpp:352] report is_sat: UNSAT time: 2.01115 ms
;I0818 17:36:18.950520  2682 main.cpp:353] report count: 0 time: 0
;I0818 17:36:18.950527  2682 main.cpp:356] done.
