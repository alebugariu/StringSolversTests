(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_bool2 () Bool)
(assert
 (= (= "2" "\"a\"") tmp_bool2))
(check-sat)

(get-info :reason-unknown)

;tmp_bool2 = false
;actual status: sat
