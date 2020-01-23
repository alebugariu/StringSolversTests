(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.++ "\"a\"" tmp_str1) "\"a\"-1"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = -1
