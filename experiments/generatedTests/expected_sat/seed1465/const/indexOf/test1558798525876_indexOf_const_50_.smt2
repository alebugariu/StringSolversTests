(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1787 (str.indexof "a" "" 2)))
 (= ?x1787 (- 1))))
(check-sat)

(get-info :reason-unknown)



