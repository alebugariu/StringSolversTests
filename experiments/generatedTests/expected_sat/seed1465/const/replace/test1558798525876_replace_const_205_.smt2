(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x2137 (str.replace "\x07" """a""" "-1")))
 (= ?x2137 "\x07")))
(check-sat)

(get-info :reason-unknown)



