(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1343 (str.indexof """a""" "a" 2)))
 (= ?x1343 (- 1))))
(check-sat)

(get-info :reason-unknown)



