(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2507 (str.indexof "\n" """a""" 2)))
 (= ?x2507 (- 1))))
(check-sat)

(get-info :reason-unknown)



