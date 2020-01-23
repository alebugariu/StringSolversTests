(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2647 (str.indexof "0" """a""" (- 1))))
 (= ?x2647 (- 1))))
(check-sat)

(get-info :reason-unknown)



