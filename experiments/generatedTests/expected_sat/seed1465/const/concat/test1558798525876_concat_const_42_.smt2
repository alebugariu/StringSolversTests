(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x491 (str.++ "-1" "a")))
 (= ?x491 "-1a")))
(check-sat)

(get-info :reason-unknown)



