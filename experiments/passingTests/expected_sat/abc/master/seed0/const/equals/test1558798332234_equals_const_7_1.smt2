(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (= "2" tmp_str1) true))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = 2
;actual status: sat
