(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1171 (str.to.int "\n")))
 (= ?x1171 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
