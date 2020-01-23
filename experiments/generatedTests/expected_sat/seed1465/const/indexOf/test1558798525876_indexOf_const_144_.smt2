(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1589 (str.indexof "0" "" (- 1))))
 (= ?x1589 (- 1))))
(check-sat)

(get-info :reason-unknown)



