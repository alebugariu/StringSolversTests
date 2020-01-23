(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "" tmp_str1 "a") ""))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = "a"
;actual status: sat
