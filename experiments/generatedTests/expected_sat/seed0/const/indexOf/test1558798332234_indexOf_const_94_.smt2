(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1087 (str.indexof "\x07" "2" 0)))
 (= ?x1087 (- 1))))
(check-sat)

(get-info :reason-unknown)



