(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "0" tmp_str1 "\n") "\n0"))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = 
