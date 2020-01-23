(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.replace "\n" "\n" "") ""))
(check-sat)

(get-info :reason-unknown)
;actual status: unsat
;I0818 17:35:59.061031  2345 main.cpp:352] report is_sat: UNSAT time: 2.23347 ms
;I0818 17:35:59.061089  2345 main.cpp:353] report count: 0 time: 0
;I0818 17:35:59.061098  2345 main.cpp:356] done.
