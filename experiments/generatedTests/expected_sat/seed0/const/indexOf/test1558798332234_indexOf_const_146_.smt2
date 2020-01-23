(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1105 (str.indexof "0" "" 2)))
 (= ?x1105 (- 1))))
(check-sat)

(get-info :reason-unknown)



