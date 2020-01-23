(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x198 (str.++ "" """a""")))
 (= ?x198 """a""")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
