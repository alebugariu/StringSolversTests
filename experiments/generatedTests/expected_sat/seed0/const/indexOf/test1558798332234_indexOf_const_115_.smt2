(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x864 (str.indexof "\n" "0" 0)))
 (= ?x864 (- 1))))
(check-sat)

(get-info :reason-unknown)



