(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1496 (str.indexof "a" "a" 0)))
 (= ?x1496 0)))
(check-sat)

(get-info :reason-unknown)



