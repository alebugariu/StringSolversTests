(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "\n" tmp_str1 "\"a\"") "\n"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = "a"
;actual status: unsat
;I0818 17:35:57.680667  2317 main.cpp:352] report is_sat: UNSAT time: 10.3654 ms
;I0818 17:35:57.680696  2317 main.cpp:353] report count: 0 time: 0
;I0818 17:35:57.680706  2317 main.cpp:356] done.
