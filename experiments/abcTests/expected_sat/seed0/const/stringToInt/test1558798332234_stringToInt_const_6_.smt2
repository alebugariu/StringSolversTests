(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.to.int "0") 0))
(check-sat)

(get-info :reason-unknown)
