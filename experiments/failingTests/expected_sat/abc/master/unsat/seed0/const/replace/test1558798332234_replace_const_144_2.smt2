(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "a" "a" tmp_str2) ""))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;actual status: unsat
;I0818 17:35:59.072890  2346 main.cpp:352] report is_sat: UNSAT time: 2.367 ms
;I0818 17:35:59.072927  2346 main.cpp:353] report count: 0 time: 0
;I0818 17:35:59.072938  2346 main.cpp:356] done.
