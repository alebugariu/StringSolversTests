(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1797 (str.indexof "" "2" (- 1))))
 (= ?x1797 (- 1))))
(check-sat)

(get-info :reason-unknown)



