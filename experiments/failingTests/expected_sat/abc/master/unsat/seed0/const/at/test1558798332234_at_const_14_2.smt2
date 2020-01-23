(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.at "\n" 2) tmp_str2))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;actual status: unsat
;I0818 17:36:18.770164  2678 main.cpp:352] report is_sat: UNSAT time: 1.79748 ms
;I0818 17:36:18.770192  2678 main.cpp:353] report count: 0 time: 0
;I0818 17:36:18.770200  2678 main.cpp:356] done.
