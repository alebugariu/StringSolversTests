(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x94 (str.at "a" 0)))
 (= ?x94 "a")))
(check-sat)

(get-info :reason-unknown)



