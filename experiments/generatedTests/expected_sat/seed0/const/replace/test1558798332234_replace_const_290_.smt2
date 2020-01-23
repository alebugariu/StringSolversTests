(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2618 (str.replace "\n" "\n" "a")))
 (= ?x2618 "a")))
(check-sat)

(get-info :reason-unknown)



