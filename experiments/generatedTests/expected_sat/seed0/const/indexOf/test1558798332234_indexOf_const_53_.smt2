(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x266 (str.indexof "a" """a""" 2)))
 (= ?x266 (- 1))))
(check-sat)

(get-info :reason-unknown)



