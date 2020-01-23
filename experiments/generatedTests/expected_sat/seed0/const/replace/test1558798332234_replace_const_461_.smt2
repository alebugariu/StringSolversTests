(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2637 (str.replace "2" """a""" "-1")))
 (= ?x2637 "2")))
(check-sat)

(get-info :reason-unknown)



