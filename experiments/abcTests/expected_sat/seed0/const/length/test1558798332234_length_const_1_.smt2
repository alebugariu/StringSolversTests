(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.len "\"a\"") 3))
(check-sat)

(get-info :reason-unknown)
