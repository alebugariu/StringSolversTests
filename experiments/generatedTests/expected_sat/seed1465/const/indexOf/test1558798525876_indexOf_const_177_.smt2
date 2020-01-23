(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x822 (str.indexof "2" "\x07" (- 1))))
 (= ?x822 (- 1))))
(check-sat)

(get-info :reason-unknown)



