(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2168 (str.indexof "2" """a""" (- 1))))
 (= ?x2168 (- 1))))
(check-sat)

(get-info :reason-unknown)



