(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "0" tmp_str1 "") "0"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = 
;actual status: unsat
;I0818 17:36:09.697751  2524 main.cpp:352] report is_sat: UNSAT time: 9.97627 ms
;I0818 17:36:09.697801  2524 main.cpp:353] report count: 0 time: 0
;I0818 17:36:09.697819  2524 main.cpp:356] done.
