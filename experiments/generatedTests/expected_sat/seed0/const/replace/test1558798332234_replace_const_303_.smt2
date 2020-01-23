(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2691 (str.replace "\n" "-1" "2")))
 (= ?x2691 "\n")))
(check-sat)

(get-info :reason-unknown)



