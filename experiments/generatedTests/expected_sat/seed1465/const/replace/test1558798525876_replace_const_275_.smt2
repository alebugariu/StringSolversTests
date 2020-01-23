(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2550 (str.replace "\n" "a" "\x07")))
 (= ?x2550 "\n")))
(check-sat)

(get-info :reason-unknown)



