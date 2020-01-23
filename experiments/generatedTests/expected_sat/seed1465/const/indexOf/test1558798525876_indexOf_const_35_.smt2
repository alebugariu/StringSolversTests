(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2435 (str.indexof """a""" "\x07" 2)))
 (= ?x2435 (- 1))))
(check-sat)

(get-info :reason-unknown)



