(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1514 (str.substr "-1" 2 (- 1))))
 (= ?x1514 "")))
(check-sat)

(get-info :reason-unknown)



