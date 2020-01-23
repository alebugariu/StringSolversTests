(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1134 (str.indexof "a" "-1" (- 1))))
 (= ?x1134 (- 1))))
(check-sat)

(get-info :reason-unknown)



