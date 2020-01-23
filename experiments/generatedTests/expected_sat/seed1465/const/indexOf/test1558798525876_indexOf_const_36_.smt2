(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x88 (str.indexof """a""" "\n" (- 1))))
 (= ?x88 (- 1))))
(check-sat)

(get-info :reason-unknown)



