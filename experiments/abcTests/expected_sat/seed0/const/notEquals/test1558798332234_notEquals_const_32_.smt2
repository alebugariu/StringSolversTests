(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (= "\n" "-1") false))
(check-sat)

(get-info :reason-unknown)
