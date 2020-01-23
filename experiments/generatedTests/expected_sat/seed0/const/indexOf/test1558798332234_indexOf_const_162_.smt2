(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1150 (str.indexof "0" "0" (- 1))))
 (= ?x1150 (- 1))))
(check-sat)

(get-info :reason-unknown)



