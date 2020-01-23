(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1788 (str.indexof "\x07" "a" 2)))
 (= ?x1788 (- 1))))
(check-sat)

(get-info :reason-unknown)



