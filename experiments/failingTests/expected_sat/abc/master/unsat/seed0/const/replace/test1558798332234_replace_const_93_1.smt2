(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "\"a\"" tmp_str1 "-1") "\"a\""))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = 
;actual status: unsat
;I0818 17:36:05.744701  2449 main.cpp:352] report is_sat: UNSAT time: 2.47253 ms
;I0818 17:36:05.744740  2449 main.cpp:353] report count: 0 time: 0
;I0818 17:36:05.744750  2449 main.cpp:356] done.
