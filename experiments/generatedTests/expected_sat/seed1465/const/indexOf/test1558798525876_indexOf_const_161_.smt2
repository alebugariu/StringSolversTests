(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x567 (str.indexof "0" "-1" 2)))
 (= ?x567 (- 1))))
(check-sat)

(get-info :reason-unknown)



