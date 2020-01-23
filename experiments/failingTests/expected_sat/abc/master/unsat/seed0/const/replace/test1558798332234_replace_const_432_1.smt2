(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "0" tmp_str1 "") ""))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = 0
;actual status: unsat
;I0818 17:35:55.671880  2283 main.cpp:352] report is_sat: UNSAT time: 6.90105 ms
;I0818 17:35:55.671922  2283 main.cpp:353] report count: 0 time: 0
;I0818 17:35:55.671934  2283 main.cpp:356] done.
