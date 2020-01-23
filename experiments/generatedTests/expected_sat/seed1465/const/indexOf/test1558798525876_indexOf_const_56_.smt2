(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2838 (str.indexof "a" "a" 2)))
 (= ?x2838 (- 1))))
(check-sat)

(get-info :reason-unknown)



