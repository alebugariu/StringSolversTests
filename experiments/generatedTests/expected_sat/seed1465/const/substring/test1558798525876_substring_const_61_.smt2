(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1520 (str.substr "0" 2 0)))
 (= ?x1520 "")))
(check-sat)

(get-info :reason-unknown)



