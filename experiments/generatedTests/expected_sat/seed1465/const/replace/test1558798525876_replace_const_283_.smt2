(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2584 (str.replace "\n" "\x07" "\x07")))
 (= ?x2584 "\n")))
(check-sat)

(get-info :reason-unknown)



