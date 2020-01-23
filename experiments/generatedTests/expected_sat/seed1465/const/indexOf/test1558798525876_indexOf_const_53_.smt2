(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x101 (str.indexof "a" """a""" 2)))
 (= ?x101 (- 1))))
(check-sat)

(get-info :reason-unknown)



