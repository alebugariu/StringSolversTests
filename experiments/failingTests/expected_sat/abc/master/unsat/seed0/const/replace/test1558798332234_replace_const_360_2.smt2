(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "-1" "-1" tmp_str2) ""))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;actual status: unsat
;I0818 17:35:55.653031  2282 main.cpp:352] report is_sat: UNSAT time: 2.22831 ms
;I0818 17:35:55.653074  2282 main.cpp:353] report count: 0 time: 0
;I0818 17:35:55.653084  2282 main.cpp:356] done.
