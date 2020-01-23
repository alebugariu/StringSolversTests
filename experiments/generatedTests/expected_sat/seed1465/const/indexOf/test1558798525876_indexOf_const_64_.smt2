(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x528 (str.indexof "a" "-1" 0)))
 (= ?x528 (- 1))))
(check-sat)

(get-info :reason-unknown)



