(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1022 (str.substr "a" 0 2)))
 (= ?x1022 "a")))
(check-sat)

(get-info :reason-unknown)



