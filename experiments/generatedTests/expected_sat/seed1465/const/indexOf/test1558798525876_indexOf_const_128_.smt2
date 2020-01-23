(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1414 (str.indexof "-1" "a" 2)))
 (= ?x1414 (- 1))))
(check-sat)

(get-info :reason-unknown)



