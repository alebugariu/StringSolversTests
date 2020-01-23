(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1569 (str.indexof "" "-1" 2)))
 (= ?x1569 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
