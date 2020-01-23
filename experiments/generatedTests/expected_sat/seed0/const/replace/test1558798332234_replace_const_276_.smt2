(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2554 (str.replace "\n" "a" "\n")))
 (= ?x2554 "\n")))
(check-sat)

(get-info :reason-unknown)



