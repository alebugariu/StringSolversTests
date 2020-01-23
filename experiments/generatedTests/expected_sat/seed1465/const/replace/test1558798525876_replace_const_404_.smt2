(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2564 (str.replace "0" "a" "\n")))
 (= ?x2564 "0")))
(check-sat)

(get-info :reason-unknown)



