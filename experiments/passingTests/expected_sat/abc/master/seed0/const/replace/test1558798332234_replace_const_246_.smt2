(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.replace "\x07" "0" "0") "\x07"))
(check-sat)

(get-info :reason-unknown)
;actual status: sat
