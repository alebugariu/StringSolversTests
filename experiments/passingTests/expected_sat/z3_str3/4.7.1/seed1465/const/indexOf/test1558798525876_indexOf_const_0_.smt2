(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1452 (str.indexof "" "" (- 1))))
 (= ?x1452 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
