(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1519 (str.indexof "0" "-1" (- 1))))
 (= ?x1519 (- 1))))
(check-sat)

(get-info :reason-unknown)



