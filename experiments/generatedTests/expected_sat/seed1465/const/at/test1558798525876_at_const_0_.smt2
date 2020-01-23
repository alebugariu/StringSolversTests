(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x49 (str.at "" (- 1))))
 (= ?x49 "")))
(check-sat)

(get-info :reason-unknown)



