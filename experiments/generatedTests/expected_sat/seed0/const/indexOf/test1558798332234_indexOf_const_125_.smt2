(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2098 (str.indexof "-1" """a""" 2)))
 (= ?x2098 (- 1))))
(check-sat)

(get-info :reason-unknown)



