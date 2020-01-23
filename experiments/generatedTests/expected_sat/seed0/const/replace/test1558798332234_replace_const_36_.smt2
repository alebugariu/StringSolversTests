(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1001 (str.replace "" "\n" "\n")))
 (= ?x1001 "")))
(check-sat)

(get-info :reason-unknown)



