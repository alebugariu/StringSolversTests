(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "0" tmp_str1 "-1") "-10"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = 
;actual status: unsat
;I0818 17:35:58.978394  2339 main.cpp:352] report is_sat: UNSAT time: 1.98079 ms
;I0818 17:35:58.978438  2339 main.cpp:353] report count: 0 time: 0
;I0818 17:35:58.978448  2339 main.cpp:356] done.
