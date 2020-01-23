(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(assert
 (= (str.replace "\n" "\n" "") tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str3 = 
;actual status: unsat
;I0818 17:36:05.973235  2456 main.cpp:352] report is_sat: UNSAT time: 1.87888 ms
;I0818 17:36:05.973258  2456 main.cpp:353] report count: 0 time: 0
;I0818 17:36:05.973266  2456 main.cpp:356] done.
