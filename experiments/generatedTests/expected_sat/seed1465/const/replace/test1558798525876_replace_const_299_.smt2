(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2675 (str.replace "\n" "-1" "\x07")))
 (= ?x2675 "\n")))
(check-sat)

(get-info :reason-unknown)



