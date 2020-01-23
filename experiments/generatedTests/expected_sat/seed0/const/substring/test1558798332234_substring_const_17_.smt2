(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1421 (str.substr """a""" 2 2)))
 (= ?x1421 """")))
(check-sat)

(get-info :reason-unknown)



