(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1557 (str.indexof "\n" "\x07" (- 1))))
 (= ?x1557 (- 1))))
(check-sat)

(get-info :reason-unknown)



