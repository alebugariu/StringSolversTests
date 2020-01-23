(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x77 (str.at """a""" 0)))
 (= ?x77 """")))
(check-sat)

(get-info :reason-unknown)



