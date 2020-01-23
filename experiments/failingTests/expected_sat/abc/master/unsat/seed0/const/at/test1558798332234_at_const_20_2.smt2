(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.at "0" 2) tmp_str2))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;actual status: unsat
;I0818 17:36:19.547834  2694 main.cpp:352] report is_sat: UNSAT time: 1.53009 ms
;I0818 17:36:19.547860  2694 main.cpp:353] report count: 0 time: 0
;I0818 17:36:19.547869  2694 main.cpp:356] done.
