(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1522 (str.indexof "-1" """a""" (- 1))))
 (= ?x1522 (- 1))))
(check-sat)

(get-info :reason-unknown)



