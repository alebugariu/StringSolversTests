(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1930 (str.to.int "\x07")))
 (= ?x1930 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
