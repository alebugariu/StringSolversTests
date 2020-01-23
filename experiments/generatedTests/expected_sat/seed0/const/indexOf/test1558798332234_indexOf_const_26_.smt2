(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1390 (str.indexof """a""" "" 2)))
 (= ?x1390 2)))
(check-sat)

(get-info :reason-unknown)



