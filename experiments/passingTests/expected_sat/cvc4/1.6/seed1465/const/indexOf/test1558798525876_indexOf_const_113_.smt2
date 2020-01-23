(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2674 (str.indexof "\n" "-1" 2)))
 (= ?x2674 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
