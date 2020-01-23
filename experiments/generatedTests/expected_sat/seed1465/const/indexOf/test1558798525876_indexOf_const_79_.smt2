(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x598 (str.indexof "\x07" "a" 0)))
 (= ?x598 (- 1))))
(check-sat)

(get-info :reason-unknown)



