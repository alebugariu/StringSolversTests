(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1576 (str.indexof "\n" "\x07" 2)))
 (= ?x1576 (- 1))))
(check-sat)

(get-info :reason-unknown)



