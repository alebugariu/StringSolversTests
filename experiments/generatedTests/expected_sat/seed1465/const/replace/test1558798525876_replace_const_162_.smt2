(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1877 (str.replace "a" "\n" "a")))
 (= ?x1877 "a")))
(check-sat)

(get-info :reason-unknown)



