(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2595 (str.indexof """a""" "\x07" (- 1))))
 (= ?x2595 (- 1))))
(check-sat)

(get-info :reason-unknown)



