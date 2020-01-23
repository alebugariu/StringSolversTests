(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2265 (str.indexof "\n" "2" (- 1))))
 (= ?x2265 (- 1))))
(check-sat)

(get-info :reason-unknown)



