(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2715 (str.replace "\n" "0" "\n")))
 (= ?x2715 "\n")))
(check-sat)

(get-info :reason-unknown)



