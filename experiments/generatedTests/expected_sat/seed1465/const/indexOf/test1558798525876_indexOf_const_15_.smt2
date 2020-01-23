(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1783 (str.indexof "" "-1" (- 1))))
 (= ?x1783 (- 1))))
(check-sat)

(get-info :reason-unknown)



