(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "\n" "\n" tmp_str2) ""))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;actual status: unsat
;I0818 17:36:07.769217  2493 main.cpp:352] report is_sat: UNSAT time: 1.86455 ms
;I0818 17:36:07.769259  2493 main.cpp:353] report count: 0 time: 0
;I0818 17:36:07.769270  2493 main.cpp:356] done.
