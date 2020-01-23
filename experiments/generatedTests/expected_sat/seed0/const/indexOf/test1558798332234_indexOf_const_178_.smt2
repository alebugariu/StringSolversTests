(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1497 (str.indexof "2" "\x07" 0)))
 (= ?x1497 (- 1))))
(check-sat)

(get-info :reason-unknown)



