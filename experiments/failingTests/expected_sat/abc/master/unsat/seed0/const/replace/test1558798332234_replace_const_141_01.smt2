(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 tmp_str1 "-1") "a"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str1 = "a"
;actual status: unsat
;I0818 17:36:02.759064  2394 main.cpp:352] report is_sat: UNSAT time: 17.824 ms
;I0818 17:36:02.759121  2394 main.cpp:353] report count: 0 time: 0
;I0818 17:36:02.759131  2394 main.cpp:356] done.
