(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x432 (str.to.int "0")))
 (= ?x432 0)))
(check-sat)

(get-info :reason-unknown)



