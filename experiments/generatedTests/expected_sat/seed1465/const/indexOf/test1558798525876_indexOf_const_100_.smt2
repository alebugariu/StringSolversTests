(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x883 (str.indexof "\n" """a""" 0)))
 (= ?x883 (- 1))))
(check-sat)

(get-info :reason-unknown)



