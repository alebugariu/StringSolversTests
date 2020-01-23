(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x287 (str.indexof "-1" """a""" 0)))
 (= ?x287 (- 1))))
(check-sat)

(get-info :reason-unknown)



