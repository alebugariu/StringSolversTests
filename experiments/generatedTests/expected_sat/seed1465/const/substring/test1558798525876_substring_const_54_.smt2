(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1388 (str.substr "0" (- 1) (- 1))))
 (= ?x1388 "")))
(check-sat)

(get-info :reason-unknown)



