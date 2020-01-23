(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "\"a\"" tmp_str1 "2") "\"2\""))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = a
;actual status: unsat
;I0818 17:35:56.081532  2291 main.cpp:352] report is_sat: UNSAT time: 7.84746 ms
;I0818 17:35:56.081586  2291 main.cpp:353] report count: 0 time: 0
;I0818 17:35:56.081606  2291 main.cpp:356] done.
