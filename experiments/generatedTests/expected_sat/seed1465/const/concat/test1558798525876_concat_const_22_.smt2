(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x351 (str.++ "a" "0")))
 (= ?x351 "a0")))
(check-sat)

(get-info :reason-unknown)



