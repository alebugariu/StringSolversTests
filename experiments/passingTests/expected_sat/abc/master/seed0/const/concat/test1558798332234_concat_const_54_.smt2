(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.++ "0" "0") "00"))
(check-sat)

(get-info :reason-unknown)
;actual status: sat
