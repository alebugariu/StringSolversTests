(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2645 (str.replace "\n" "\n" "0")))
 (= ?x2645 "0")))
(check-sat)

(get-info :reason-unknown)



