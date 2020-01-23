(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2565 (str.replace "-1" """a""" "2")))
 (= ?x2565 "-1")))
(check-sat)

(get-info :reason-unknown)



