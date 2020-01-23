(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x337 (str.++ "a" "\n")))
 (= ?x337 "a\n")))
(check-sat)

(get-info :reason-unknown)



