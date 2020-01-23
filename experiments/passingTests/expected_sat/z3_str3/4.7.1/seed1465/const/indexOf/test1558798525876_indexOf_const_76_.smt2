(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2075 (str.indexof "\x07" """a""" 0)))
 (= ?x2075 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
