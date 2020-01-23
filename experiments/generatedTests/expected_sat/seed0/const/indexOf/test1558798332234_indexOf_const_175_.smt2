(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1352 (str.indexof "2" "a" 0)))
 (= ?x1352 (- 1))))
(check-sat)

(get-info :reason-unknown)



