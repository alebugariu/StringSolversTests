(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x600 (str.indexof "0" "a" 0)))
 (= ?x600 (- 1))))
(check-sat)

(get-info :reason-unknown)



