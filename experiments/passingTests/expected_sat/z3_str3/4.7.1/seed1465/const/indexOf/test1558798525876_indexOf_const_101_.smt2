(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x721 (str.indexof "\n" """a""" 2)))
 (= ?x721 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
