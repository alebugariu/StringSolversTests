(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2438 (str.replace "-1" "\n" "2")))
 (= ?x2438 "-1")))
(check-sat)

(get-info :reason-unknown)



