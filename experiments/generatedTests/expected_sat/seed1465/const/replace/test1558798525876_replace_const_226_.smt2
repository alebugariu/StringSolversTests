(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2258 (str.replace "\x07" "\n" "a")))
 (= ?x2258 "\x07")))
(check-sat)

(get-info :reason-unknown)



