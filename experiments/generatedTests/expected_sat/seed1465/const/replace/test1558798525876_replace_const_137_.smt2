(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1729 (str.replace "a" """a""" """a""")))
 (= ?x1729 "a")))
(check-sat)

(get-info :reason-unknown)



