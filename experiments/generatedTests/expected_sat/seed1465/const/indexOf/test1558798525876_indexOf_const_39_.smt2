(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1015 (str.indexof """a""" "-1" (- 1))))
 (= ?x1015 (- 1))))
(check-sat)

(get-info :reason-unknown)



