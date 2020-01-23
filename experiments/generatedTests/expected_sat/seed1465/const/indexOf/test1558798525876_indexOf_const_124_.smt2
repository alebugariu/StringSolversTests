(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2288 (str.indexof "-1" """a""" 0)))
 (= ?x2288 (- 1))))
(check-sat)

(get-info :reason-unknown)



