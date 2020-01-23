(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "0" "0" tmp_str2) ""))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;actual status: unsat
;I0818 17:35:58.544540  2332 main.cpp:352] report is_sat: UNSAT time: 2.0954 ms
;I0818 17:35:58.544577  2332 main.cpp:353] report count: 0 time: 0
;I0818 17:35:58.544587  2332 main.cpp:356] done.
