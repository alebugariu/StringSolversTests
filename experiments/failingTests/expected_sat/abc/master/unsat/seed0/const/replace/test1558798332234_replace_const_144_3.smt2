(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(assert
 (= (str.replace "a" "a" "") tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str3 = 
;actual status: unsat
;I0818 17:36:05.128482  2434 main.cpp:352] report is_sat: UNSAT time: 7.13078 ms
;I0818 17:36:05.128509  2434 main.cpp:353] report count: 0 time: 0
;I0818 17:36:05.128517  2434 main.cpp:356] done.
