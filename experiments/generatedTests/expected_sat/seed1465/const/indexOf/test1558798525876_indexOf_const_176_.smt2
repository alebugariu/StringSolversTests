(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x81 (str.indexof "2" "a" 2)))
 (= ?x81 (- 1))))
(check-sat)

(get-info :reason-unknown)



