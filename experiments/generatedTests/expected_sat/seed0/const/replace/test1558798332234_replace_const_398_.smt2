(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x442 (str.replace "0" """a""" "0")))
 (= ?x442 "0")))
(check-sat)

(get-info :reason-unknown)



