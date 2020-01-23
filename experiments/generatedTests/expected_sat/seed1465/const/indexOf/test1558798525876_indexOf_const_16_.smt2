(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2192 (str.indexof "" "-1" 0)))
 (= ?x2192 (- 1))))
(check-sat)

(get-info :reason-unknown)



