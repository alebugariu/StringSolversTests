(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1579 (str.replace """a""" "0" "0")))
 (= ?x1579 """a""")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
