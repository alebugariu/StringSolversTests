(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1547 (str.replace """a""" "-1" "2")))
 (= ?x1547 """a""")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
