(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "\n" tmp_str1 "") "\n"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = 
;actual status: unsat
;I0818 17:35:56.327261  2296 main.cpp:352] report is_sat: UNSAT time: 2.08598 ms
;I0818 17:35:56.327313  2296 main.cpp:353] report count: 0 time: 0
;I0818 17:35:56.327327  2296 main.cpp:356] done.
