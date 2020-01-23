(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.substr "\"a\"" 0 2) "\"a"))
(check-sat)

(get-info :reason-unknown)
