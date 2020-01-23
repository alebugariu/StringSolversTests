(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2545 (str.indexof "\n" "\x07" 0)))
 (= ?x2545 (- 1))))
(check-sat)

(get-info :reason-unknown)



