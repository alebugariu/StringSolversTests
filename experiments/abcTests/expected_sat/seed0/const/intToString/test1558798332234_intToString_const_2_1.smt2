(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (int.to.str 2) tmp_str1))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = 2
