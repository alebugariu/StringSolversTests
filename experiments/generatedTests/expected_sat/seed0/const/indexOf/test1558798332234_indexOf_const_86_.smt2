(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2671 (str.indexof "\x07" "\n" 2)))
 (= ?x2671 (- 1))))
(check-sat)

(get-info :reason-unknown)



