(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1046 (str.indexof "2" "0" 0)))
 (= ?x1046 (- 1))))
(check-sat)

(get-info :reason-unknown)



