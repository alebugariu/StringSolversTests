(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2663 (str.indexof "\x07" "\n" 0)))
 (= ?x2663 (- 1))))
(check-sat)

(get-info :reason-unknown)



