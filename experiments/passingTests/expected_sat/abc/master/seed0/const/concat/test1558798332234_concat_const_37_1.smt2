(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.++ "\n" tmp_str1) "\n-1"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = -1
;actual status: sat
