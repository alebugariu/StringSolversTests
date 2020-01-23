(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x117 (str.indexof """a""" "\n" 0)))
 (= ?x117 (- 1))))
(check-sat)

(get-info :reason-unknown)



