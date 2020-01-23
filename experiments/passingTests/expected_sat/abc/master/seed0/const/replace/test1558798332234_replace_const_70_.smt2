(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.replace "\"a\"" "" "0") "0\"a\""))
(check-sat)

(get-info :reason-unknown)
;actual status: sat
