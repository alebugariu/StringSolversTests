(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(declare-fun tmp_bool2 () Bool)
(assert
 (= (str.suffixof "2" tmp_str1) tmp_bool2))
(check-sat)

(get-info :reason-unknown)

;tmp_str1 = 2
;tmp_bool2 = true
