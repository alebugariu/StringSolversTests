(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x7 (str.indexof "\n" "a" 0)))
 (= ?x7 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
