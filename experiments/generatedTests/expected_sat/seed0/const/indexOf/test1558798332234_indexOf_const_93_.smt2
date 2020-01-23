(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x975 (str.indexof "\x07" "2" (- 1))))
 (= ?x975 (- 1))))
(check-sat)

(get-info :reason-unknown)



