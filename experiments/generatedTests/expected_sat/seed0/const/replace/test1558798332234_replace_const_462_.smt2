(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1622 (str.replace "2" """a""" "0")))
 (= ?x1622 "2")))
(check-sat)

(get-info :reason-unknown)



