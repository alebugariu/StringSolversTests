(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x995 (str.substr """a""" 0 2)))
 (= ?x995 """a")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
