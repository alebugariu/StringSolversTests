(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x691 (str.replace "" "" """a""")))
 (= ?x691 """a""")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
