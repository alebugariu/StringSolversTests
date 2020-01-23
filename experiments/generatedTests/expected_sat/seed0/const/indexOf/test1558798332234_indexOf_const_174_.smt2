(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x632 (str.indexof "2" "a" (- 1))))
 (= ?x632 (- 1))))
(check-sat)

(get-info :reason-unknown)



