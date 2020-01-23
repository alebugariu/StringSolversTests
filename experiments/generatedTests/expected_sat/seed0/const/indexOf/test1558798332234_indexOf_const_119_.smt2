(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1546 (str.indexof "\n" "2" 2)))
 (= ?x1546 (- 1))))
(check-sat)

(get-info :reason-unknown)



