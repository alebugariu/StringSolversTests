(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1642 (str.indexof "\x07" "a" (- 1))))
 (= ?x1642 (- 1))))
(check-sat)

(get-info :reason-unknown)



