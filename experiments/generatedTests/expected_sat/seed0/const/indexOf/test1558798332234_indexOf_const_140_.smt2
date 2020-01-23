(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2636 (str.indexof "-1" "0" 2)))
 (= ?x2636 (- 1))))
(check-sat)

(get-info :reason-unknown)



