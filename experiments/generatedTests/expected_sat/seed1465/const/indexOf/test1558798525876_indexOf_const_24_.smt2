(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2175 (str.indexof """a""" "" (- 1))))
 (= ?x2175 (- 1))))
(check-sat)

(get-info :reason-unknown)



