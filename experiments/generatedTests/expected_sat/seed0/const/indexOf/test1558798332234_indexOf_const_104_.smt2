(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1350 (str.indexof "\n" "a" 2)))
 (= ?x1350 (- 1))))
(check-sat)

(get-info :reason-unknown)



