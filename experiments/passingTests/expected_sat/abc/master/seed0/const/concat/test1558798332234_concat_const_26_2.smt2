(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.++ "\x07" "a") tmp_str2))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = a
;actual status: sat
