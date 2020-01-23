(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2589 (str.indexof "" "2" 2)))
 (= ?x2589 (- 1))))
(check-sat)

(get-info :reason-unknown)



