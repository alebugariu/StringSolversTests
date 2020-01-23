(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof tmp_str0 tmp_str1 (- 1)) (- 1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;tmp_str1 = 
;actual status: unsat
;I0818 17:35:49.723610  2190 main.cpp:352] report is_sat: UNSAT time: 69.2547 ms
;I0818 17:35:49.723681  2190 main.cpp:353] report count: 0 time: 0
;I0818 17:35:49.723695  2190 main.cpp:356] done.
