(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2754 (str.indexof "" "" 2)))
 (= ?x2754 (- 1))))
(check-sat)

(get-info :reason-unknown)



