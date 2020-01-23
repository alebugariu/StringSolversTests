(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (int.to.str 2) "2"))
(check-sat)

(get-info :reason-unknown)
