(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2696 (str.indexof "0" "-1" 0)))
 (= ?x2696 (- 1))))
(check-sat)

(get-info :reason-unknown)



