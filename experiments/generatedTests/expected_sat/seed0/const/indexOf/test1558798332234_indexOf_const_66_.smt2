(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2578 (str.indexof "a" "0" (- 1))))
 (= ?x2578 (- 1))))
(check-sat)

(get-info :reason-unknown)



