(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1761 (str.indexof "a" "a" (- 1))))
 (= ?x1761 (- 1))))
(check-sat)

(get-info :reason-unknown)



