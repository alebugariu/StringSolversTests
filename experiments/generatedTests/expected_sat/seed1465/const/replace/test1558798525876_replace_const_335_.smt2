(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1061 (str.replace "-1" """a""" "2")))
 (= ?x1061 "-1")))
(check-sat)

(get-info :reason-unknown)



