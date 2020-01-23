(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1340 (str.replace """a""" """a""" "2")))
 (= ?x1340 "2")))
(check-sat)

(get-info :reason-unknown)



