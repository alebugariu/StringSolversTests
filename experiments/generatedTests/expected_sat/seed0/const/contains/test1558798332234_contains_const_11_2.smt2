(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_bool2 () Bool)
(assert
 (= (str.contains "-1" "-1") tmp_bool2))
(check-sat)

(get-value (tmp_bool2 ))
(get-info :reason-unknown)

;tmp_bool2 = true


