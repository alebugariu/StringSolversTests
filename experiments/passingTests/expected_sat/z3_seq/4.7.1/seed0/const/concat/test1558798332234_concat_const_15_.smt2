(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x302 (str.++ """a""" "2")))
 (= ?x302 """a""2")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
