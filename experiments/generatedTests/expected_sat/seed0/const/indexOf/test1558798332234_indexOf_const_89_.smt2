(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2833 (str.indexof "\x07" "-1" 2)))
 (= ?x2833 (- 1))))
(check-sat)

(get-info :reason-unknown)



