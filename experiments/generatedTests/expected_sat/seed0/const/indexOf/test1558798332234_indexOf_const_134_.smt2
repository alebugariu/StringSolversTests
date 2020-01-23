(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1465 (str.indexof "-1" "\n" 2)))
 (= ?x1465 (- 1))))
(check-sat)

(get-info :reason-unknown)



