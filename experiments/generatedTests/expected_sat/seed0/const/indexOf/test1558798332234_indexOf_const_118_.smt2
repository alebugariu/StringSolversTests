(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2018 (str.indexof "\n" "2" 0)))
 (= ?x2018 (- 1))))
(check-sat)

(get-info :reason-unknown)



