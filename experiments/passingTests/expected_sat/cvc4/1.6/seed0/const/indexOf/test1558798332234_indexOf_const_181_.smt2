(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x860 (str.indexof "2" "\n" 0)))
 (= ?x860 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
