(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2119 (str.indexof "a" """a""" 0)))
 (= ?x2119 (- 1))))
(check-sat)

(get-info :reason-unknown)



