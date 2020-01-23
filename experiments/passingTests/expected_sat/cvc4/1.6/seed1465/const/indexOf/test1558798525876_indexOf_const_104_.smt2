(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2472 (str.indexof "\n" "a" 2)))
 (= ?x2472 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
