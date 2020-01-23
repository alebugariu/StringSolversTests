(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x157 (str.indexof "\x07" """a""" 2)))
 (= ?x157 (- 1))))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
