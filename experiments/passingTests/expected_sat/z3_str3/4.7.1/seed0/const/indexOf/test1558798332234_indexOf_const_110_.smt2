(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2365 (str.indexof "\n" "\n" 2)))
 (= ?x2365 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
