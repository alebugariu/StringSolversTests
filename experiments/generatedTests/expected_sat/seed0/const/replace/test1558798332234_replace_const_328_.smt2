(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x384 (str.replace "-1" """a""" "")))
 (= ?x384 "-1")))
(check-sat)

(get-info :reason-unknown)



