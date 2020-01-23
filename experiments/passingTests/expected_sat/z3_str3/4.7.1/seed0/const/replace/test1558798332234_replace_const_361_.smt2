(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1805 (str.replace "-1" "-1" """a""")))
 (= ?x1805 """a""")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
