(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (= (str.contains "2" tmp_str1) false))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = "a"
