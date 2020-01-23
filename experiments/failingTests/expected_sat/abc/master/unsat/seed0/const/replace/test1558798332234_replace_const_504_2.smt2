(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "2" "2" tmp_str2) ""))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;actual status: unsat
;I0818 17:35:54.788233  2266 main.cpp:352] report is_sat: UNSAT time: 2.00826 ms
;I0818 17:35:54.788271  2266 main.cpp:353] report count: 0 time: 0
;I0818 17:35:54.788282  2266 main.cpp:356] done.
