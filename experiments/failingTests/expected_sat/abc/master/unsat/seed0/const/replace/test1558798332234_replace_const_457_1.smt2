(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "2" tmp_str1 "\"a\"") "2"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = "a"
;actual status: unsat
;I0818 17:35:55.639869  2281 main.cpp:352] report is_sat: UNSAT time: 2.03937 ms
;I0818 17:35:55.639927  2281 main.cpp:353] report count: 0 time: 0
;I0818 17:35:55.639940  2281 main.cpp:356] done.
