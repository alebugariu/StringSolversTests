(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x567 (str.indexof "0" """a""" (- 1))))
 (= ?x567 (- 1))))
(check-sat)

(get-info :reason-unknown)



