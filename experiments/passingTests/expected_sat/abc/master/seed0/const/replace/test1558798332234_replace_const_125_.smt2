(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.replace "\"a\"" "2" "-1") "\"a\""))
(check-sat)

(get-info :reason-unknown)
;actual status: sat
