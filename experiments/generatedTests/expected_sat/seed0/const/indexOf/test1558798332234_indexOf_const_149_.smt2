(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2182 (str.indexof "0" """a""" 2)))
 (= ?x2182 (- 1))))
(check-sat)

(get-info :reason-unknown)



