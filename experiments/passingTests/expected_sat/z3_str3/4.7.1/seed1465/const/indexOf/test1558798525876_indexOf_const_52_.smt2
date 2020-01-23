(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2525 (str.indexof "a" """a""" 0)))
 (= ?x2525 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
