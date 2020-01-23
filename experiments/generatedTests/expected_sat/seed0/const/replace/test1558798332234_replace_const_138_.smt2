(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1734 (str.replace "a" """a""" "a")))
 (= ?x1734 "a")))
(check-sat)

(get-info :reason-unknown)



