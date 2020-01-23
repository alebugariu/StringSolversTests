(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2812 (str.indexof "\n" "-1" 0)))
 (= ?x2812 (- 1))))
(check-sat)

(get-info :reason-unknown)



