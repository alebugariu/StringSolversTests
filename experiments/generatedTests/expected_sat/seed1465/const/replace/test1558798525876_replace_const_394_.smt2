(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x533 (str.replace "0" """a""" "a")))
 (= ?x533 "0")))
(check-sat)

(get-info :reason-unknown)



