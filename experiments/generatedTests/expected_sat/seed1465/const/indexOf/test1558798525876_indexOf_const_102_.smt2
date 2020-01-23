(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2095 (str.indexof "\n" "a" (- 1))))
 (= ?x2095 (- 1))))
(check-sat)

(get-info :reason-unknown)



