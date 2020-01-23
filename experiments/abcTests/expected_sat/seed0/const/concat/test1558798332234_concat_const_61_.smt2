(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.++ "2" "-1") "2-1"))
(check-sat)

(get-info :reason-unknown)
