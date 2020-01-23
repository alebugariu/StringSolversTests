(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1353 (str.replace """a""" "a" "")))
 (= ?x1353 """""")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
