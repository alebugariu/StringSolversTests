(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2595 (str.replace "\n" "\x07" "0")))
 (= ?x2595 "\n")))
(check-sat)

(get-info :reason-unknown)



