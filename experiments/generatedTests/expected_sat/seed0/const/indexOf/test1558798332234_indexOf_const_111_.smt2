(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1606 (str.indexof "\n" "-1" (- 1))))
 (= ?x1606 (- 1))))
(check-sat)

(get-info :reason-unknown)



