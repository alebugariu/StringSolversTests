(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at tmp_str0 (- 1)) tmp_str2))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;tmp_str2 = 
;actual status: unsat
;I0818 17:36:17.160743  2646 main.cpp:352] report is_sat: UNSAT time: 1.30512 ms
;I0818 17:36:17.160773  2646 main.cpp:353] report count: 0 time: 0
;I0818 17:36:17.160780  2646 main.cpp:356] done.
