(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2751 (str.replace "\n" "2" "\n")))
 (= ?x2751 "\n")))
(check-sat)

(get-info :reason-unknown)



