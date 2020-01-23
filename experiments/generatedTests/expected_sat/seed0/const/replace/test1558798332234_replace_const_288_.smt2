(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2606 (str.replace "\n" "\n" "")))
 (= ?x2606 "")))
(check-sat)

(get-info :reason-unknown)



