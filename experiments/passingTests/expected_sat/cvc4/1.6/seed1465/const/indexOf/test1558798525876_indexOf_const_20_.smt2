(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2642 (str.indexof "" "0" 2)))
 (= ?x2642 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
