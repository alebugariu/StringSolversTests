(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2410 (str.substr "a" 2 0)))
 (= ?x2410 "")))
(check-sat)

(get-info :reason-unknown)



