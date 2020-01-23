(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x623 (str.indexof """a""" """a""" 2)))
 (= ?x623 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
