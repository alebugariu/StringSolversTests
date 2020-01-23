(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2753 (str.indexof """a""" """a""" (- 1))))
 (= ?x2753 (- 1))))
(check-sat)

(get-info :reason-unknown)



