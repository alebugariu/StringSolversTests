(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1213 (str.to.int "a")))
 (= ?x1213 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
