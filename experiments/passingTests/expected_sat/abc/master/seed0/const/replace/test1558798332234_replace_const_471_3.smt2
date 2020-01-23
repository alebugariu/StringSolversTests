(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(assert
 (= (str.replace "2" "a" "2") tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str3 = 2
;actual status: sat
